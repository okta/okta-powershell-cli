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

Context 'Invoke-OktaRevokeAccessToken' {
    It 'Should call Invoke-OktaApiClient with Uri "/oauth2/v1/revoke"' {
        $Config = Get-OktaConfiguration
        $Config.BaseUrl = "https://example.okta.com"
        $Config.ClientId = "foo"
        $Config.AccessToken = "bar"
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

        $Response = @{
            StatusCode = 200
            Headers = @{ "Content-Length" = "0" }
        }

        Mock -ModuleName Okta.PowerShell Invoke-OktaApiClient { return $Response } -Verifiable

        # Call the function that uses Invoke-OktaApiClient
        Invoke-OktaRevokeAccessToken

        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-OktaApiClient -Exactly -Times 1 -Scope It -ParameterFilter {
            $Uri -eq "/oauth2/v1/revoke" -and
            $FormParameters.token_type_hint -eq "access_token" -and
            $FormParameters.token -eq "bar" -and
            $FormParameters.client_id -eq "foo"
        }
    }
}