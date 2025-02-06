Context 'Invoke-OktaApiClient - 429 Responses' {
    It 'Should retry 429 responses until MaxRetries is reached and RequestTimeout is null' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 1
        $Config.RequestTimeout = $null
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds

        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable
        
        $Response = [PSCustomObject]@{
            Content = '{"errorCode":"E0000047","errorSummary":"API call exceeded rate limit due to too many requests.","errorLink":"E0000047","errorId":"oae6dB62BdhRFCF_9ltxiklFQ","errorCauses":[]}'
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "x-rate-limit-reset" = @($ResetDateEpoch)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 429
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = $null

        try{
            $Result = Invoke-OktaListApplications
        }
        catch{
            $_.Exception.StatusCode.Value__ | Should -Be 429;
            $_.Exception.ErrorCode | Should -Be "E0000047"
            $_.Exception.ErrorSummary | Should -Be "API call exceeded rate limit due to too many requests."
            $_.Exception.ErrorLink | Should -Be "E0000047"
            $_.Exception.ErrorId | Should -Be "oae6dB62BdhRFCF_9ltxiklFQ"
            $_.Exception.ErrorCauses | Should -BeNullOrEmpty
        }

        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 2
        $Result | Should -Be $null
    }

    It 'Should retry 429 responses until MaxRetries is reached and RequestTimeout > ElapsedTime' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 1
        $Config.RequestTimeout = 100000
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable
        
        $Response = [PSCustomObject]@{
            Content = '{"errorCode":"E0000047","errorSummary":"API call exceeded rate limit due to too many requests.","errorLink":"E0000047","errorId":"oae6dB62BdhRFCF_9ltxiklFQ","errorCauses":[]}'
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "x-rate-limit-reset" = @($ResetDateEpoch)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 429
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = $null

        try{
            $Result = Invoke-OktaListApplications
        }
        catch{
            $_.Exception.StatusCode.Value__ | Should -Be 429;
            $_.Exception.ErrorCode | Should -Be "E0000047"
            $_.Exception.ErrorSummary | Should -Be "API call exceeded rate limit due to too many requests."
            $_.Exception.ErrorLink | Should -Be "E0000047"
            $_.Exception.ErrorId | Should -Be "oae6dB62BdhRFCF_9ltxiklFQ"
            $_.Exception.ErrorCauses | Should -BeNullOrEmpty
        }

        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 2
        $Result | Should -Be $null
    }

    It 'Should NOT retry 429 responses when retryCount < MaxRetries and ElapsedTime gt RequestTimeout' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 2
        $Config.RequestTimeout = 1000
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

        Mock -ModuleName Okta.PowerShell CalculateElapsedTime { return 1000 } -Verifiable
         
        $Response = [PSCustomObject]@{
            Content = '{"errorCode":"E0000047","errorSummary":"API call exceeded rate limit due to too many requests.","errorLink":"E0000047","errorId":"oae6dB62BdhRFCF_9ltxiklFQ","errorCauses":[]}'
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "x-rate-limit-reset" = @($ResetDateEpoch)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 429
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = $null

        try{
            $Result = Invoke-OktaListApplications
        }
        catch{
            $_.Exception.StatusCode.Value__ | Should -Be 429;
            $_.Exception.ErrorCode | Should -Be "E0000047"
            $_.Exception.ErrorSummary | Should -Be "API call exceeded rate limit due to too many requests."
            $_.Exception.ErrorLink | Should -Be "E0000047"
            $_.Exception.ErrorId | Should -Be "oae6dB62BdhRFCF_9ltxiklFQ"
            $_.Exception.ErrorCauses | Should -BeNullOrEmpty
        }

        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 1
        Assert-MockCalled -ModuleName Okta.PowerShell CalculateElapsedTime -Times 1
        $Result | Should -Be $null
    }

    It 'Should NOT retry responses other than 429' {
        $Config = Get-OktaConfiguration
        $Config.MaxRetries = 2
        $Config.RequestTimeout = 1000
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        $ResetDateEpoch = $ResetDate.ToUniversalTime().Subtract((New-Object DateTime(1970, 1, 1, 0, 0, 0, 0))).TotalSeconds
        
        Mock -ModuleName Okta.PowerShell Get-OktaConfiguration { return $Config } -Verifiable

        Mock -ModuleName Okta.PowerShell CalculateElapsedTime { return 1000 } -Verifiable
         
        $Response = [PSCustomObject]@{
            Content = '{"errorCode":"E0000003","errorSummary":"The request body was not well-formed.","errorLink":"E0000003","errorId":"oaeFc2TNnznQvaP1R_8zfSdcw","errorCauses":[]}'
            Headers =  @{
                "Date" = @($Now)
                "Content-Type" = @('application/json; charset=utf-8')
                "x-rate-limit-reset" = @($ResetDateEpoch)
                "X-Okta-Request-Id" = @("foo")
            }
            StatusCode = 400
        }
        
        Mock -ModuleName Okta.PowerShell Invoke-WebRequest {
            return $Response
        } -Verifiable

        $Result = $null

        try{
            $Result = Invoke-OktaListApplications
        }
        catch{
            $_.Exception.StatusCode.Value__ | Should -Be 400;
            $_.Exception.ErrorCode | Should -Be "E0000003"
            $_.Exception.ErrorSummary | Should -Be "The request body was not well-formed."
            $_.Exception.ErrorLink | Should -Be "E0000003"
            $_.Exception.ErrorId | Should -Be "oaeFc2TNnznQvaP1R_8zfSdcw"
            $_.Exception.ErrorCauses | Should -BeNullOrEmpty
        }

        Assert-MockCalled -ModuleName Okta.PowerShell Invoke-WebRequest -Times 1
        Assert-MockCalled -ModuleName Okta.PowerShell CalculateElapsedTime -Times 1
        
        $Result | Should -Be $null
    }
}

