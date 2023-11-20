Context 'Invoke-OktaApiClient' {
    It 'Should retry 429 responses' {
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
                "X-Okta-Request-Id" = "foo"
            }
            StatusCode = 429
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = Invoke-OktaListApplications

        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 2
    }
}