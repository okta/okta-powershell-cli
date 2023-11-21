Context 'Invoke-OktaEstablishAccessToken' {
    It 'Should get an access token' {
        $Config = @{
            ClientId = "foo"
            Scope = "okta:apps:read"
        }
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

        $Response = @{
            Response   = @{ verification_uri_complete = 'https://www.okta.com'; device_code = "ABCDEF"}
            StatusCode = 200
            Headers = @{ "Content-Type" = @("application/json")}
        }

        Mock -ModuleName Okta.PowerShell Invoke-OktaApiClient { return $Response } -Verifiable

        $TokenResponse = @{
            Response   = @{ access_token = 'foo'}
            StatusCode = 200
            Headers = @{ "Content-Type" = @("application/json")}
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-OktaFetchAccessToken { return $TokenResponse } -Verifiable

        Invoke-OktaEstablishAccessToken

        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-OktaApiClient -Times 1
        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-OktaFetchAccessToken -Times 1

        $Configuration = Get-OktaConfiguration
        $Configuration.AccessToken | Should -Be "foo"
    }
}

Context 'Invoke-FetchOktaAccessToken' {
    It 'Should get an access token' {
        $Config = @{
            ClientId = "foo"
            Scope = "okta:apps:read"
        }
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

        $Response = @{
            Response   = @{ access_token = 'bar'}
            StatusCode = 200
            Headers = @{ "Content-Type" = @("application/json")}
        }

        Mock -ModuleName Okta.PowerShell Invoke-OktaApiClient { return $Response } -Verifiable

        $Result = Invoke-OktaFetchAccessToken -DeviceCode "baz"
        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-OktaApiClient -Times 1

        $Result.Response.access_token | Should -Be "bar"
    }
}

Context 'Invoke-OktaRemoveAccessToken' {
    It 'Should remove access token from configuration' {
        $Config = Get-OktaConfiguration
        Set-OktaConfigurationAccessToken "foo"

        $Config = Get-OktaConfiguration
        $Config.AccessToken | Should -Be "foo"
        
        Invoke-OktaRemoveAccessToken

        $Config = Get-OktaConfiguration

        [string]::IsNullOrEmpty($Config.AccessToken) | Should -Be $true
    }
}