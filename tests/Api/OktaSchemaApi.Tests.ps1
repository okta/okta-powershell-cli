#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'Okta.PowerShell' -name 'OktaOktaSchemaApi' {
    Context 'Get-OktaUserSchema' {
        It 'Test Get-OktaUserSchema' {
            $Content = '{"id":"https://testorg.com/meta/schemas/user/default","$schema":"http://json-schema.org/draft-04/schema#","name":"user","title":"User","description":"Okta user profile template with default permission settings","lastUpdated":"2023-11-22T15:37:31.000Z","created":"2021-09-24T17:51:07.000Z","definitions":{"custom":{"id":"#custom","type":"object","properties":{"homeworld":{"title":"Homeworld","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"UpdateUserProfileSchemaProperty_test_sbjxcn":{"title":"UpdateUserProfileSchemaProperty_test_sbjxcn","description":"fab1a55a-f83a-437d-a99d-7d1e99d6c440","type":"string","mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":20,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"UpdateUserProfileSchemaProperty_test_wxwlcl":{"title":"UpdateUserProfileSchemaProperty_test_wxwlcl","description":"975317c5-51cc-4beb-a9a9-220ffe678620","type":"string","mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":20,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]}},"required":[]},"base":{"id":"#base","type":"object","properties":{"login":{"title":"Username","type":"string","required":true,"mutability":"READ_WRITE","scope":"NONE","minLength":5,"maxLength":100,"permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"firstName":{"title":"First name","type":"string","required":true,"mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":50,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"lastName":{"title":"Last name","type":"string","required":true,"mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":50,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"middleName":{"title":"Middle name","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"honorificPrefix":{"title":"Honorific prefix","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"honorificSuffix":{"title":"Honorific suffix","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"email":{"title":"Primary email","type":"string","required":true,"format":"email","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"title":{"title":"Title","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"displayName":{"title":"Display name","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"nickName":{"title":"Nickname","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"profileUrl":{"title":"Profile Url","type":"string","format":"uri","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"secondEmail":{"title":"Secondary email","type":"string","format":"email","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"mobilePhone":{"title":"Mobile phone","type":"string","mutability":"READ_WRITE","scope":"NONE","maxLength":100,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"primaryPhone":{"title":"Primary phone","type":"string","mutability":"READ_WRITE","scope":"NONE","maxLength":100,"permissions":[{"principal":"SELF","action":"HIDE"}]},"streetAddress":{"title":"Street address","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"city":{"title":"City","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"state":{"title":"State","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"zipCode":{"title":"Zip code","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"countryCode":{"title":"Country code","type":"string","format":"country-code","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"postalAddress":{"title":"Postal Address","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"preferredLanguage":{"title":"Preferred language","type":"string","format":"language-code","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"locale":{"title":"Locale","type":"string","format":"locale","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"timezone":{"title":"Time zone","type":"string","format":"timezone","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"userType":{"title":"User type","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"employeeNumber":{"title":"Employee number","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"costCenter":{"title":"Cost center","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"organization":{"title":"Organization","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"division":{"title":"Division","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"department":{"title":"Department","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"managerId":{"title":"ManagerId","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"manager":{"title":"Manager","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]}},"required":["login","firstName","lastName","email"]}},"type":"object","properties":{"profile":{"allOf":[{"$ref":"#/definitions/custom"},{"$ref":"#/definitions/base"}]}},"_links":{"self":{"rel":"self","href":"https://testorg.com/api/v1/meta/schemas/user/osc1fddpcr6cnPEPG1d7","method":"GET"},"type":{"rel":"type","href":"https://testorg.com/api/v1/meta/types/user/oty1fddpcr6cnPEPG1d7","method":"GET"}}}' | ConvertFrom-Json

            $Response = @{
                Response   = $Content
                StatusCode = 200
                Headers = @{ "Content-Type" = @("application/json")}
            }

            Mock -ModuleName Okta.PowerShell Invoke-OktaApiClient { return $Response } -Verifiable

            $TestResult = Get-OktaUserSchema -SchemaId "foo"

            Assert-MockCalled -ModuleName Okta.PowerShell Invoke-OktaApiClient -Times 1

            $TestResult.Id | Should -Be "https://testorg.com/meta/schemas/user/default"
            $TestResult.'$Schema' | Should -Be "http://json-schema.org/draft-04/schema#"
            $TestResult.Name | Should -Be "user"
            $TestResult.Title | Should -Be "User"
            $TestResult.Description | Should -Be "Okta user profile template with default permission settings"

            $TestResult.Definitions.Custom.Id | Should -Be "#custom"
            $TestResult.Definitions.Custom.Type | Should -Be "object"
            $TestResult.Definitions.Custom.Properties.Homeworld.Title | Should -Be "Homeworld"
            $TestResult.Definitions.Custom.Properties.Homeworld.Type | Should -Be "string"
            $TestResult.Definitions.Custom.Properties.Homeworld.Mutability | Should -Be "READ_WRITE"
            $TestResult.Definitions.Custom.Properties.Homeworld.Scope | Should -Be "NONE"
            $TestResult.Definitions.Custom.Properties.Homeworld.Permissions[0].Principal | Should -Be "SELF"
            $TestResult.Definitions.Custom.Properties.Homeworld.Permissions[0].Action | Should -Be "READ_WRITE"

            $TestResult.Definitions.Base.Id | Should -Be "#base"
            $TestResult.Definitions.Base.Type | Should -Be "object"
            $TestResult.Definitions.Base.Properties.Login.Title | Should -Be "Username"
            $TestResult.Definitions.Base.Properties.Login.Type | Should -Be "string"
            $TestResult.Definitions.Base.Properties.Login.Mutability | Should -Be "READ_WRITE"
            $TestResult.Definitions.Base.Properties.Login.Scope | Should -Be "NONE"
            $TestResult.Definitions.Base.Properties.Login.Permissions[0].Principal | Should -Be "SELF"
            $TestResult.Definitions.Base.Properties.Login.Permissions[0].Action | Should -Be "READ_ONLY"
        }
    }

    Context 'Update-OktaUserProfile' {
        It 'Test Update-OktaUserProfile' {
            $Content = '{"id":"https://testorg.com/meta/schemas/user/default","$schema":"http://json-schema.org/draft-04/schema#","name":"user","title":"User","description":"Okta user profile template with default permission settings","lastUpdated":"2023-12-11T16:32:12.000Z","created":"2021-09-24T17:51:07.000Z","definitions":{"custom":{"id":"#custom","type":"object","properties":{"homeworld":{"title":"Homeworld","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"UpdateUserProfileSchemaProperty_test_sbjxcn":{"title":"UpdateUserProfileSchemaProperty_test_sbjxcn","description":"fab1a55a-f83a-437d-a99d-7d1e99d6c440","type":"string","mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":20,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"UpdateUserProfileSchemaProperty_test_wxwlcl":{"title":"UpdateUserProfileSchemaProperty_test_wxwlcl","description":"975317c5-51cc-4beb-a9a9-220ffe678620","type":"string","mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":20,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"twitterUserName":{"title":"Twitter username","description":"Users username for twitter.com","type":"string","mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":20,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]}},"required":[]},"base":{"id":"#base","type":"object","properties":{"login":{"title":"Username","type":"string","required":true,"mutability":"READ_WRITE","scope":"NONE","minLength":5,"maxLength":100,"permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"firstName":{"title":"First name","type":"string","required":true,"mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":50,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"lastName":{"title":"Last name","type":"string","required":true,"mutability":"READ_WRITE","scope":"NONE","minLength":1,"maxLength":50,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"middleName":{"title":"Middle name","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"honorificPrefix":{"title":"Honorific prefix","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"honorificSuffix":{"title":"Honorific suffix","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"email":{"title":"Primary email","type":"string","required":true,"format":"email","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"title":{"title":"Title","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"displayName":{"title":"Display name","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"nickName":{"title":"Nickname","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"profileUrl":{"title":"Profile Url","type":"string","format":"uri","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"secondEmail":{"title":"Secondary email","type":"string","format":"email","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"mobilePhone":{"title":"Mobile phone","type":"string","mutability":"READ_WRITE","scope":"NONE","maxLength":100,"permissions":[{"principal":"SELF","action":"READ_WRITE"}]},"primaryPhone":{"title":"Primary phone","type":"string","mutability":"READ_WRITE","scope":"NONE","maxLength":100,"permissions":[{"principal":"SELF","action":"HIDE"}]},"streetAddress":{"title":"Street address","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"city":{"title":"City","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"state":{"title":"State","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"zipCode":{"title":"Zip code","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"countryCode":{"title":"Country code","type":"string","format":"country-code","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"postalAddress":{"title":"Postal Address","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"HIDE"}]},"preferredLanguage":{"title":"Preferred language","type":"string","format":"language-code","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"locale":{"title":"Locale","type":"string","format":"locale","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"timezone":{"title":"Time zone","type":"string","format":"timezone","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"userType":{"title":"User type","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"employeeNumber":{"title":"Employee number","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"costCenter":{"title":"Cost center","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"organization":{"title":"Organization","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"division":{"title":"Division","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"department":{"title":"Department","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"managerId":{"title":"ManagerId","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]},"manager":{"title":"Manager","type":"string","mutability":"READ_WRITE","scope":"NONE","permissions":[{"principal":"SELF","action":"READ_ONLY"}]}},"required":["login","firstName","lastName","email"]}},"type":"object","properties":{"profile":{"allOf":[{"$ref":"#/definitions/custom"},{"$ref":"#/definitions/base"}]}},"_links":{"self":{"rel":"self","href":"https://testorg.com/api/v1/meta/schemas/user/osc1fddpcr6cnPEPG1d7","method":"GET"},"type":{"rel":"type","href":"https://testorg.com/api/v1/meta/types/user/oty1fddpcr6cnPEPG1d7","method":"GET"}}}' | ConvertFrom-Json

            $Response = @{
                Response   = $Content
                StatusCode = 200
                Headers = @{ "Content-Type" = @("application/json")}
            }

            $UserSchema = @{
                Definitions = @{
                    Custom = @{
                        Id = "#custom"
                        Type = "object"
                        Properties = @{
                            TwitterUserName = "Twitter username"
                            Description = "Twitter username"
                            Type = "string"
                            Required = $false
                            MinLength = 1
                            MaxLength = 20
                            Permissions = @(@{
                                Principal = "SELF"
                                Action = "READ_WRITE"
                            })
                        }
                        Required = @()
                    }
                }    
            }

            Mock -ModuleName Okta.PowerShell Invoke-OktaApiClient { return $Response } -ParameterFilter {$Body -eq $UserSchema | ConvertTo-Json -Depth 100 }  -Verifiable

            $TestResult = Update-OktaUserProfile -SchemaId "foo" -UserSchema $UserSchema

            Assert-MockCalled -ModuleName Okta.PowerShell Invoke-OktaApiClient -Times 1 
            
            $TestResult.Definitions.Custom.Id | Should -Be "#custom"
            $TestResult.Definitions.Custom.Type | Should -Be "object"
            $TestResult.Definitions.Custom.Properties.TwitterUserName.Title | Should -Be "Twitter username"
            $TestResult.Definitions.Custom.Properties.TwitterUserName.Type | Should -Be "string"
            $TestResult.Definitions.Custom.Properties.TwitterUserName.Mutability | Should -Be "READ_WRITE"
            $TestResult.Definitions.Custom.Properties.TwitterUserName.Scope | Should -Be "NONE"
            $TestResult.Definitions.Custom.Properties.TwitterUserName.MinLength | Should -Be 1
            $TestResult.Definitions.Custom.Properties.TwitterUserName.MaxLength | Should -Be 20
            $TestResult.Definitions.Custom.Properties.TwitterUserName.Permissions[0].Principal | Should -Be "SELF"
            $TestResult.Definitions.Custom.Properties.TwitterUserName.Permissions[0].Action | Should -Be "READ_WRITE"
        }
    }
}
