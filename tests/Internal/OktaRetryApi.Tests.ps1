Describe -tag 'Okta.PowerShell' -name 'OktaRetryApi' {
    Context 'ShouldRetry' {

        It 'Should retry 429 responses when retryCount < MaxRetries' {
            
            $Config = Get-OktaConfiguration
            $Config.MaxRetries = 2
            $Config.TimeoutInSeconds = $null
            
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTimeInSeconds 1

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Result | Should -Be $True
        }

        It 'Should NOT retry 429 responses when retryCount >= MaxRetries' {
            
            $Config = @{
                MaxRetries   = 2
                TimeoutInSeconds = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 2 -ElapsedTimeInSeconds 1

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Result | Should -Be $False
        }

        It 'Should NOT retry 429 responses when MaxRetries == $null' {
            
            $Config = @{
                MaxRetries   = $null
                TimeoutInSeconds = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 0 -ElapsedTimeInSeconds 1

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Result | Should -Be $False
        }

        It 'Should retry ONLY 429 responses' {
            
            $Config = @{
                MaxRetries   = 2
                TimeoutInSeconds = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 400 -RetryCount 2 -ElapsedTimeInSeconds 1
            
            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False

            $Result = ShouldRetry -StatusCode 401 -RetryCount 2 -ElapsedTimeInSeconds 1

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False

            $Result = ShouldRetry -StatusCode 500 -RetryCount 2 -ElapsedTimeInSeconds 1

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False
        }

        It 'Should retry 429 responses when retryCount < MaxRetries and elapsedTime < TimeoutInSeconds' {
            
            $Config = @{
                MaxRetries   = 2
                TimeoutInSeconds = 2
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTimeInSeconds 1

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $True
        }

        It 'Should retry 429 responses when retryCount < MaxRetries and TimeoutInSeconds == $null' {
            
            $Config = @{
                MaxRetries   = 2
                TimeoutInSeconds = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTimeInSeconds 10

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $True
        }

        It 'Should NOT retry 429 responses when retryCount < MaxRetries and elapsedTime greater or equals than TimeoutInSeconds' {
            
            $Config = @{
                MaxRetries   = 2
                TimeoutInSeconds = 2
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTimeInSeconds 2

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False
        }
    }

    Context 'CalculateDelayInSeconds' {
        It 'Should calculate delay when all the params are correctly provided' {
            
            $Config = @{
                MaxRetries   = 2
                TimeoutInSeconds = 2
            }

            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
            
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Headers = @{"X-Rate-Limit-Reset" = @($ResetDate); "Date" = @($Now)}

            # $BackoffInSeconds = (New-TimeSpan -Start $RequestUtcDate -End $RetryAtUtcTime).Seconds + 1 #delta
            $Result = CalculateDelayInSeconds -Headers $Headers

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Result | Should -Be 4
        }

        It 'Should fail if mandatory headers are not provided' {
            
            $Config = @{
                MaxRetries   = 2
                TimeoutInSeconds = 2
            }

            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
            
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Headers = @{"Date" = @($Now)} # "X-Rate-Limit-Reset" = $ResetDate; not included

            # $BackoffInSeconds = (New-TimeSpan -Start $RequestUtcDate -End $RetryAtUtcTime).Seconds + 1 #delta
            { CalculateDelayInSeconds -Headers $Headers } | Should -Throw -ExpectedMessage "Error! The required header `X-Rate-Limit-Reset` missing when calling CalculateDelayInSeconds."

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Headers = @{ "X-Rate-Limit-Reset" = @($ResetDate)} # "Date" = $Now; not included

            # $BackoffInSeconds = (New-TimeSpan -Start $RequestUtcDate -End $RetryAtUtcTime).Seconds + 1 #delta
            { CalculateDelayInSeconds -Headers $Headers } | Should -Throw -ExpectedMessage "Error! The required header `Date` missing when calling CalculateDelayInSeconds."

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
        }
    }

    Context 'AddRetryHeaders' {
        It 'Should add headers' {
            $Headers = @{}

            # $Headers["X-Okta-Retry-For"] = $RequestId
            # $Headers["X-Okta-Retry-Count"] = $RetryCount

            $Result = AddRetryHeaders -Headers $Headers -RequestId "foo" -RetryCount 5

            $Result["X-Okta-Retry-For"] | Should -Be "foo"
            $Result["X-Okta-Retry-Count"] | Should -Be 5
        }
    }
}