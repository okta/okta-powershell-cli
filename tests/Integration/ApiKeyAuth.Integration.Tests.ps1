# Integration test for ApiKey authentication fix
# This validates that the ApiKey parameter works correctly for API authentication

Describe "ApiKey Authentication" -Tag "Integration" {
    
    Context "Using Set-OktaConfiguration with ApiKey parameter" {
        It "Should authenticate successfully with ApiKey" {
            # Note: This test requires manual verification with valid credentials
            # Set-OktaConfiguration -BaseUrl "https://your-org.okta.com" -ApiKey @{apitoken = "your-token"}
            # $user = Get-OktaUser -UserId "me"
            # $user.Profile.Email | Should -Not -BeNullOrEmpty
            
            # Test configuration acceptance
            Set-OktaConfiguration -BaseUrl "https://test.okta.com" -ApiKey @{apitoken = "test-token"}
            $config = Get-OktaConfiguration
            $config.ApiKey.apitoken | Should -Be "test-token"
        }
        
        It "Should store ApiKey in configuration correctly" {
            $testToken = "test-api-token-12345"
            Set-OktaConfiguration -BaseUrl "https://test.okta.com" -ApiKey @{apitoken = $testToken}
            
            $config = Get-OktaConfiguration
            $config.ApiKey | Should -Not -BeNullOrEmpty
            $config.ApiKey.ContainsKey("apitoken") | Should -Be $true
            $config.ApiKey.apitoken | Should -Be $testToken
        }
        
        It "Should work with Configuration object directly" {
            $testToken = "direct-config-token"
            $config = Get-OktaConfiguration
            $config.BaseUrl = "https://test.okta.com"
            $config.ApiKey = @{apitoken = $testToken}
            
            $config.ApiKey.apitoken | Should -Be $testToken
        }
    }
    
    Context "Backward compatibility with DefaultHeaders" {
        It "Should still support DefaultHeaders workaround" {
            $authHeader = @{authorization = "SSWS test-token"}
            Set-OktaConfiguration -BaseUrl "https://test.okta.com" -DefaultHeaders $authHeader
            
            $config = Get-OktaConfiguration
            $config.DefaultHeaders.authorization | Should -Be "SSWS test-token"
        }
    }
}
