Describe 'HttpListener Tests' {
    
    BeforeAll {
        $PSScriptRoot
        Import-Module -Name "$PSScriptRoot\HttpListener.psm1" -Verbose 
    }

    AfterAll {
        Remove-Module -Name HttpListener -Verbose
    }
  
    It 'Should start the listener at the selected port' {
        # Verify the function is imported
        Get-Command Start-HttpListener | Should -Not -BeNullOrEmpty
        
        $port = 8000
        $url = "http://localhost:$port/okta-powerShell/?test=response"

        try {

            { Start-HTTPListener -Port $port -Verbose} | Should -Not -Throw
            
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
        $port = 8000
        $url = "http://localhost:$port/okta-powerShell/?test=response"

        { Start-HTTPListener -Port $port -Verbose } | Should -Not -Throw
            
        # Send a test request to verify the server is running
        Start-Sleep -Seconds 2 # Allow server to start

        $response = Invoke-WebRequest -Uri $url 
        $response.StatusCode | Should -Be 200

        Stop-HTTPListener -Port $port

       { Invoke-WebRequest -Uri $url -SkipHttpErrorCheck } | Should -Throw
    }

   It 'Should return tailored responses' {
        $port = 8000
        $headers = @{'X-Okta-Request-Id'='foo';'X-Rate-Limit-Reset'='bar'} | ConvertTo-Json -Compress 
        $url = "http://localhost:$port/okta-powershell/?test=response&headers=$headers&statuscode=429"

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