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

            $Headers = @{"X-rAte-Limit-RESET" = @($ResetDateEpoch); "DATE" = @($Now)}

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

    Context 'Retry tests using HttpListener'{
        BeforeAll {
            Import-Module -Name "$PSScriptRoot\HttpListener\HttpListener.psm1" -Verbose 
            Import-Module -Name "$PSScriptRoot\..\..\src\Okta.PowerShell\Okta.PowerShell.PrivateFunctions.psd1" -Verbose

        }
    
        AfterAll {
            Remove-Module -Name HttpListener -Verbose
            Remove-Module -Name Okta.PowerShell.PrivateFunctions -Verbose
        }

        # This test is mainly to verify that we can test the internal IWR call used by OktaApiClient using the HttpListener instead of Pester.
        # Using Pester doesn't allow us to test some specifics of IWR, such as using the -SkipHttpErrorCheck flag 
        It 'ApiClient should ultimately throw 429 responses when -SkipHttpCheckError is included (2.x series) and Retry is not configured (MaxRetries = 0)' {
            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
            $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds
            $port = 9000
            $headers = @{'X-Okta-Request-Id'='foo';'X-Rate-Limit-Reset'=$ResetDateEpoch.ToString();'Date'=@($Now);'test'='bar'} | ConvertTo-Json -Compress 
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
            
            $Result = $null

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
            }
            catch{
                $_.Exception.StatusCode.Value__ | Should -Be 429
                $_.Exception.Headers['X-Okta-Request-Id'] | Should -Be "foo"
                $_.Exception.Headers['X-Rate-Limit-Reset'] | Should -Be $ResetDateEpoch.ToString()
                # Skipping time to avoid dealing with rounding
                ([DateTime]($_.Exception.Headers['Date'][0])).ToUniversalTime().ToString("yyyy-MM-dd") | Should -Be ([DateTime]$Now).ToUniversalTime().ToString("yyyy-MM-dd")
                $_.Exception.Headers['test'] | Should -Be "bar"
                
            }
            finally {
                Stop-HTTPListener -Port $port
                $Result | Should -Be $null
            }
        }

         # This test is mainly to verify that we can test the internal IWR call used by OktaApiClient using the HttpListener instead of Pester.
        # Using Pester doesn't allow us to test some specifics of IWR, such as using the -SkipHttpErrorCheck flag 
        It 'ApiClient should ultimately throw 429 responses when -SkipHttpCheckError is included (2.x series) and MaxRetries > 0' {
            $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
            $ResetDate = $Now.AddSeconds(5) # Indicates when one should retry
            $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds
            $port = 9000
            $headers = @{'X-Okta-Request-Id'='foo';'x-rate-limit-reset'=@($ResetDateEpoch);'Date'=@($Now);'test'='bar'} | ConvertTo-Json -Compress 
            $Uri = "http://127.0.0.1:$port/okta-powershell/?test=response&headers=$headers&statuscode=429"

            $Config = Get-OktaConfiguration
            $Config.MaxRetries = 1
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
            
            $Result = $null

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
            }
            catch{
                $_.Exception.StatusCode.Value__ | Should -Be 429
                $_.Exception.Headers['X-Okta-Request-Id'] | Should -Be "foo"

                # Normalization to avoid rounding discrepancies
                $ExpectedRateLimitReset = [math]::Round([double]($_.Exception.Headers['X-Rate-Limit-Reset'][0]), 4)
                $ActualRateLimitReset = [math]::Round([double]$ResetDateEpoch, 4)
                $ExpectedRateLimitReset.ToString() | Should -Be $ActualRateLimitReset.ToString()

                # Skipping time to avoid dealing with rounding
                ([DateTime]($_.Exception.Headers['Date'][0])).ToUniversalTime().ToString("yyyy-MM-dd") | Should -Be ([DateTime]$Now).ToUniversalTime().ToString("yyyy-MM-dd")
                $_.Exception.Headers['test'] | Should -Be "bar"
                
            }
            finally {
                Stop-HTTPListener -Port $port
                $Result | Should -Be $null
            }
        }
    }
}

# Remove -Skip to run and set up your org config
Context 'E2E Retry tests to be run locally'{
    It 'Force retry in e2e tests' -Skip {
        $Configuration = Get-OktaConfiguration
        $Configuration.BaseUrl = 'https://<MYORG>.okta.com'
        $Configuration.ClientId = "<MY_CLIENT_ID>"
        $Configuration.Scope = 'okta.apps.manage'
        $Configuration.MaxRetries = 1

        # Enable proxy to debug with Fiddler
        $ProxyUrl = "http://127.0.0.1:8888"
        $WebProxy = New-Object System.Net.WebProxy($ProxyUrl)
        $Configuration.Proxy = $WebProxy

        # Authenticate
        Invoke-OktaEstablishAccessToken

        $AllowedStatusCodes = @(200, 429)
        $StatusCodes = @()

        for ($i = 0; $i -lt 20; $i++) {
            try {
                $Result = Invoke-OktaListApplications -WithHttpInfo
                $StatusCodes += $Result.StatusCode
            } 
            catch {
                $StatusCodes += $_.Exception.StatusCode.Value__
            }
        }

        $StatusCodes | ForEach-Object {
            $_ | Should -BeIn $AllowedStatusCodes
        }
    }
}
