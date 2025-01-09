Describe 'HttpListener Tests' {
    
    BeforeAll {
        Import-Module -Name "$PSScriptRoot\HttpListener.psm1" -Verbose 
    }

    AfterAll {
        Remove-Module -Name HttpListener -Verbose
    }
  
    It 'Should start the listener at the selected port' {
        # Verify the function is imported
        Get-Command Start-HttpListener | Should -Not -BeNullOrEmpty
        
        $port = 9000
        $url = "http://127.0.0.1:$port/okta-powerShell/?test=response"

        try {

            { Start-HTTPListener -Port $port } | Should -Not -Throw
            
            # Send a test request to verify the server is running
            Start-Sleep -Seconds 2 # Allow server to start

            $response = Invoke-WebRequest -Uri $url
            $response.StatusCode | Should -Be 200
        }
        finally {
            Stop-HTTPListener -Port $port
        }
   }

   It 'Should stop the listener' {    
        $port = 9000
        $url = "http://127.0.0.1:$port/okta-powerShell/?test=response"

        { Start-HTTPListener -Port $port } | Should -Not -Throw
            
        # Send a test request to verify the server is running
        Start-Sleep -Seconds 2 # Allow server to start

        $response = Invoke-WebRequest -Uri $url 
        $response.StatusCode | Should -Be 200

        Stop-HTTPListener -Port $port

       { Invoke-WebRequest -Uri $url -SkipHttpErrorCheck } | Should -Throw
    }

   It 'Should return tailored responses' {
        $port = 9000
        $headers = @{'X-Okta-Request-Id'='foo';'X-Rate-Limit-Reset'='bar'} | ConvertTo-Json -Compress 
        $url = "http://127.0.0.1:$port/okta-powershell/?test=response&headers=$headers&statuscode=429"

        try {

            { Start-HTTPListener -Port $port -Verbose} | Should -Not -Throw
            
            # Send a test request to verify the server is running
            Start-Sleep -Seconds 2 # Allow server to start

            $response = Invoke-WebRequest -Uri $url -SkipHttpErrorCheck
            $response.StatusCode | Should -Be 429
            $response.Headers['X-Okta-Request-Id'] | Should -Be "foo"
            $response.Headers['X-Rate-Limit-Reset'] | Should -Be "bar"
        }
        finally {
            Stop-HTTPListener -Port $port
        }
    }
}

Context 'Invoke-OktaApiClient should use HttpListener when calling IWR' {
    BeforeAll {
        
        Import-Module -Name "$PSScriptRoot\..\..\..\src\Okta.PowerShell\Okta.PowerShell.PrivateFunctions.psd1" -Verbose
        Import-Module -Name "$PSScriptRoot\HttpListener.psm1" -Verbose 
    }

    AfterAll {
        Remove-Module -Name HttpListener -Verbose
        Remove-Module -Name Okta.PowerShell.PrivateFunctions -Verbose
    }

    It 'OktaApiClient should use the HttpListener when calling IWR' {
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        $port = 9000
        $headers = @{'X-Okta-Request-Id'='foo';'test'='bar'} | ConvertTo-Json -Compress 
        $Uri = "http://127.0.0.1:$port/okta-powershell/?test=response&headers=$headers&statuscode=200"

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
            
            $Result.StatusCode | Should -Be 200     
            $Result.Headers['X-Okta-Request-Id'] | Should -Be "foo"
            $Result.Headers['test'] | Should -Be "bar"
                                    
        }
        finally {
            Stop-HTTPListener -Port $port
        }
    }

    # This test i mostly to verify that we can test the internal IWR call used by OktaApiClient using the HttpListener instead of Pester.
    # Using Pester doesn't allow us to test some specifics of IWR such us using the -SkipHttpErrorCheck flag 
    It '4xx should throw when -SkipHttpCheckError is not included (1.x series)' {
        $Now = Get-Date # Used as a reference for the test. Indicates when the request was executed
        $ResetDate = $Now.AddSeconds(3) # Indicates when one should retry
        $port = 9000
        $headers = @{'X-Okta-Request-Id'='foo';'X-Rate-Limit-Reset'=$ResetDate;'Date'=$Now;'test'='bar'} | ConvertTo-Json -Compress 
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
        $StatusCode = $null

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
            $StatusCode = $_.Exception.Response.StatusCode.value__ 
        }
        finally {
            Stop-HTTPListener -Port $port
            $StatusCode | Should -Be 429
        }
    }
}