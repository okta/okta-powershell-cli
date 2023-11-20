Context 'Invoke-OktaApiClient' {
    It 'Should retry 429 responses until MaxRetries is reached and TimeoutInSeconds is null' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 1
        $Config.TimeoutInSeconds = $null
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable
        
        $Response = [PSCustomObject]@{
            Content = "[]"
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "X-Rate-Limit-Reset" = @($ResetDate)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 429
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = Invoke-OktaListApplications
        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 2
    }

    It 'Should retry 429 responses until MaxRetries is reached and TimeoutInSeconds > ElapsedTimeInSeconds' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 1
        $Config.TimeoutInSeconds = 100
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable
        
        $Response = [PSCustomObject]@{
            Content = "[]"
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "X-Rate-Limit-Reset" = @($ResetDate)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 429
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = Invoke-OktaListApplications
        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 2
    }

    It 'Should NOT retry 429 responses when retryCount < MaxRetries and ElapsedTimeInSeconds gt TimeoutInSeconds' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 2
        $Config.TimeoutInSeconds = 1
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

        Mock -ModuleName Okta.PowerShell CalculateElapsedTimeInSeconds { return 1 } -Verifiable
         
        $Response = [PSCustomObject]@{
            Content = "[]"
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "X-Rate-Limit-Reset" = @($ResetDate)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 429
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = Invoke-OktaListApplications
        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 1
        Assert-MockCalled -ModuleName Okta.PowerShell CalculateElapsedTimeInSeconds -Times 1
    }

    It 'Should NOT retry responses other than 429' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 2
        $Config.TimeoutInSeconds = 1
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

        Mock -ModuleName Okta.PowerShell CalculateElapsedTimeInSeconds { return 1 } -Verifiable
         
        $Response = [PSCustomObject]@{
            Content = "[]"
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "X-Rate-Limit-Reset" = @($ResetDate)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 400
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = Invoke-OktaListApplications
        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 1
        Assert-MockCalled -ModuleName Okta.PowerShell CalculateElapsedTimeInSeconds -Times 1
    }
}