Describe -tag 'Okta.PowerShell' -name 'OktaRetryApi' {
    Context 'ShouldRetry tests' {
        It 'Should retry 429 responses when retryCount < MaxRetries' {
            
            $Config = Get-OktaConfiguration
            $Config.MaxRetries = 2
            $Config.RequestTimeout = $null
            
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTime 1000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Result | Should -Be $True
        }

        It 'Should NOT retry 429 responses when retryCount >= MaxRetries' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 2 -ElapsedTime 1000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Result | Should -Be $False
        }

        It 'Should NOT retry 429 responses when MaxRetries == $null' {
            
            $Config = @{
                MaxRetries   = $null
                RequestTimeout = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 0 -ElapsedTime 1000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Result | Should -Be $False
        }

        It 'Should retry ONLY 429 responses' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 400 -RetryCount 2 -ElapsedTime 1000
            
            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False

            $Result = ShouldRetry -StatusCode 401 -RetryCount 2 -ElapsedTime 1000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False

            $Result = ShouldRetry -StatusCode 500 -RetryCount 2 -ElapsedTime 1000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False
        }

        It 'Should retry 429 responses when retryCount < MaxRetries and elapsedTime < RequestTimeout' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = 2000
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTime 1000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $True
        }

        It 'Should retry 429 responses when retryCount < MaxRetries and RequestTimeout == $null' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = $null
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTime 10000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $True
        }

        It 'Should NOT retry 429 responses when retryCount < MaxRetries and elapsedTime greater or equals than RequestTimeout' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = 2000
            }
    
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Result = ShouldRetry -StatusCode 429 -RetryCount 1 -ElapsedTime 2000

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
            $Result | Should -Be $False
        }
    }

    Context 'CalculateDelayInSeconds' {
        It 'Should calculate delay when all the params are correctly provided' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = 2000
            }

            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
            $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds

            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Headers = @{"x-rate-limit-reset" = @($ResetDateEpoch); "Date" = @($Now)}

            # $BackoffInMilliseconds = (New-TimeSpan -Start $RequestUtcDate -End $RetryAtUtcTime).Milliseconds + 1000 #delta
            $Result = CalculateDelay -Headers $Headers

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            [int]$intResult = $result
            $intResult | Should -Be 4000
        }

        It 'Should fail if mandatory headers are not provided' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = 2000
            }

            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
            $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds

            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Headers = @{"Date" = @($Now)} # "x-rate-limit-reset" = $ResetDate; not included

            # $BackoffInMilliseconds = (New-TimeSpan -Start $RequestUtcDate -End $RetryAtUtcTime).Milliseconds + 1000 #delta
            { CalculateDelay -Headers $Headers } | Should -Throw -ExpectedMessage "Error! The required header `x-rate-limit-reset` missing when calling CalculateDelay."

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            $Headers = @{ "x-rate-limit-reset" = @($ResetDateEpoch)} # "Date" = $Now; not included

            # $BackoffInMilliseconds = (New-TimeSpan -Start $RequestUtcDate -End $RetryAtUtcTime).Milliseconds + 1000 #delta
            { CalculateDelay -Headers $Headers } | Should -Throw -ExpectedMessage "Error! The required header `Date` missing when calling CalculateDelay."

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1
        }

        It 'Should get rate-limit-params regardless of the casing' {
            
            $Config = @{
                MaxRetries   = 2
                RequestTimeout = 2000
            }

            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
            $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds

            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $Headers1 = @{"X-rAte-Limit-RESET" = @($ResetDateEpoch); "DATE" = @($Now)}

            # $BackoffInMilliseconds = (New-TimeSpan -Start $RequestUtcDate -End $RetryAtUtcTime).Milliseconds + 1000 #delta
            $Result = CalculateDelay -Headers $Headers

            Assert-MockCalled -ModuleName Okta.PowerShell Get-OktaConfiguration -Times 1

            [int]$intResult = $result
            $intResult | Should -Be 4000
        }
    }

    Context 'AddRetryHeaders' {
        It 'Should add headers' {
            $Headers = @{}

            # $Headers["X-Okta-Retry-For"] = $RequestId
            # $Headers["X-Okta-Retry-Count"] = $RetryCount

            AddRetryHeaders -Headers $Headers -RequestId "foo" -RetryCount 5

            $Headers["X-Okta-Retry-For"] | Should -Be "foo"
            $Headers["X-Okta-Retry-Count"] | Should -Be 5
        }
    }

    Context 'Retry tests using HtppListener'{
        BeforeAll {
            Import-Module -Name "$PSScriptRoot\HttpListener\HttpListener.psm1" -Verbose 
        }
    
        AfterAll {
            Remove-Module -Name HttpListener -Verbose
        }

        # This test is mainly to verify that we can test the internal IWR call used by OktaApiClient using the HttpListener instead of Pester.
        # Using Pester doesn't allow us to test some specifics of IWR, such as using the -SkipHttpErrorCheck flag 
        It '429 responses should not throw when -SkipHttpCheckError is included (2.x series)' {
            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
            $port = 9000
            $headers = @{'X-Okta-Request-Id'='foo';'X-Rate-Limit-Reset'=$ResetDate;'Date'=$Now;'test'='bar'} | ConvertTo-Json -Compress 
            $Uri = "http://127.0.0.1:$port/okta-powershell/?test=response&headers=$headers&statuscode=429"

            $Config = Get-OktaConfiguration
            $Config.MaxRetries = 0
            $Config.RequestTimeout = $null
            $Config.BaseUrl = "http://127.0.0.1:$port"
            
            Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

            $LocalVarAccepts = @('application/json')
            $LocalVarContentTypes = @()
            $LocalVarQueryParameters = @{}
            $LocalVarHeaderParameters = @{}
            $LocalVarFormParameters = @{}
            $LocalVarCookieParameters = @{}
            $LocalVarBodyParameter = $null
            $StatusCodeFromException = $null

            try {
                
                $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
                $LocalVarUri = $ParsedUri["RelativeUri"]
                $LocalVarQueryParameters = $ParsedUri["QueryParameters"]

                { Start-HTTPListener -Port $port -Verbose} | Should -Not -Throw

                $Result = Invoke-OktaApiClient -Method 'GET' `
                                        -Uri $LocalVarUri `
                                        -Accepts $LocalVarAccepts `
                                        -ContentTypes $LocalVarContentTypes `
                                        -Body $LocalVarBodyParameter `
                                        -HeaderParameters $LocalVarHeaderParameters `
                                        -QueryParameters $LocalVarQueryParameters `
                                        -FormParameters $LocalVarFormParameters `
                                        -CookieParameters $LocalVarCookieParameters `
                                        -ReturnType "Application[]" `
                                        -IsBodyNullable $false 

                $Result.StatusCode | Should -Be 429
                $Result.Headers['X-Okta-Request-Id'] | Should -Be "foo"
                $Result.Headers['X-Rate-Limit-Reset'] | Should -Be $ResetDate
                $Result.Headers['Date'] | Should -Be $Now
                $Result.Headers['test'] | Should -Be "bar"
            }
            catch{
                $StatusCodeFromException = $_.Exception.Response.StatusCode.value__ 
            }
            finally {
                Stop-HTTPListener -Port $port
                $StatusCodeFromException | Should -Be $null
            }
        }
    }
}