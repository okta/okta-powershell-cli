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
}