Context 'Remove-NullProperties' {
    It 'Should remove null properties' {
        $JsonString = '{
            "name": "John",
            "age": null,
            "city": "New York",
            "country": null,
            "family": [
                {
                    "name": "Alice",
                    "age": null
                },
                {
                    "name": "Bob",
                    "age": 30
                }
            ],
            "details": {
                "address": null,
                "phone": "123456789",
                "children": [
                    {
                        "name": "Charlie",
                        "age": null
                    },
                    {
                        "name": "Diana",
                        "age": 10
                    }
                ]
            }
        }'

        # Convert JSON string to PowerShell object
        $JsonObject = ConvertFrom-Json $JsonString

        # Remove null values recursively
        $CleanedJsonObject = Remove-NullProperties $JsonObject

        Get-Member -inputobject $CleanedJsonObject -name "age" -MemberType Properties | Should -Be $null
        Get-Member -inputobject $CleanedJsonObject -name "country" -MemberType Properties | Should -Be $null
        Get-Member -inputobject $CleanedJsonObject.family[0] -name "age" -MemberType Properties | Should -Be $null
        Get-Member -inputobject $CleanedJsonObject.family[0] -name "name" -MemberType Properties | Should -Be -Not $null
        Get-Member -inputobject $CleanedJsonObject.details.children[0] -name "age" -MemberType Properties | Should -Be $null
        Get-Member -inputobject $CleanedJsonObject.details.children[0] -name "name" -MemberType Properties | Should -Be -Not $null
    }

    It 'Should maintain the same object when there''s no null values in a single-item array'{
        # GroupIds - 1 item array
        $NewGroupRule = [PSObject]@{
            name = "Assign users to the Sales Team"
            type = "group_rule"
            actions = [PSObject]@{ 
                assignUserToGroups = [PSObject]@{
                    groupIds = [array]@('foo')
                }
            } 
        }

        $CleanedRule = Remove-NullProperties $NewGroupRule

        $CleanedRule.name  | Should -Be "Assign users to the Sales Team"
        $CleanedRule.type | Should -Be "group_rule"
        $CleanedRule.actions.assignUserToGroups.groupIds.Count | Should -Be 1
        $CleanedRule.actions.assignUserToGroups.groupIds[0] | Should -Be "foo"
    }

    It 'Should maintain the same object when there''s no null values in a multiple-items array'{
        # GroupIds - multiple-items array
        $NewGroupRule = [PSObject]@{
            name = "Assign users to the Sales Team"
            type = "group_rule"
            actions = [PSObject]@{ 
                assignUserToGroups = [PSObject]@{
                    groupIds = [array]@('foo', 'bar', 'baz')
                }
            } 
        }

        $CleanedRule = Remove-NullProperties $NewGroupRule

        $CleanedRule.name  | Should -Be "Assign users to the Sales Team"
        $CleanedRule.type | Should -Be "group_rule"
        $CleanedRule.actions.assignUserToGroups.groupIds.Count | Should -Be 3
        $CleanedRule.actions.assignUserToGroups.groupIds[0] | Should -Be "foo"
        $CleanedRule.actions.assignUserToGroups.groupIds[1] | Should -Be "bar"        
        $CleanedRule.actions.assignUserToGroups.groupIds[2] | Should -Be "baz"
    }

    It 'Should maintain the same object when there''s no null values in a single-item array when using initializers'{
        # GroupIds - 1 item array
        $GroupRuleGroupAssignment = Initialize-OktaGroupRuleGroupAssignment -GroupIds ([array]@("foo"))

        $GroupRuleAction = Initialize-OktaGroupRuleAction -AssignUserToGroups $GroupRuleGroupAssignment

        $GroupRuleExpression = Initialize-OktaGroupRuleExpression -Type "urn:okta:expression:1.0" -Value "user.title=='Sales Representative'"

        $GroupRuleConditions = Initialize-OktaGroupRuleConditions -Expression $GroupRuleExpression

        $NewGroupRule = Initialize-OktaGroupRule -Actions $GroupRuleAction -Conditions $GroupRuleConditions -Name "Assign users to the Sales Team" -Type "group_rule"

        $CleanedRule = Remove-NullProperties $NewGroupRule

        $CleanedRule.name  | Should -Be "Assign users to the Sales Team"
        $CleanedRule.type | Should -Be "group_rule"
        $CleanedRule.actions.assignUserToGroups.groupIds.Count | Should -Be 1
        $CleanedRule.actions.assignUserToGroups.groupIds[0] | Should -Be "foo"
    }

    It 'Should maintain the same object when there''s no null values in a multiple-items array when using initializers'{
        # GroupIds - 1 item array
        $GroupRuleGroupAssignment = Initialize-OktaGroupRuleGroupAssignment -GroupIds ([array]@("foo"))

        $GroupRuleAction = Initialize-OktaGroupRuleAction -AssignUserToGroups $GroupRuleGroupAssignment

        $GroupRuleExpression = Initialize-OktaGroupRuleExpression -Type "urn:okta:expression:1.0" -Value "user.title=='Sales Representative'"

        $GroupRuleConditions = Initialize-OktaGroupRuleConditions -Expression $GroupRuleExpression

        $NewGroupRule = Initialize-OktaGroupRule -Actions $GroupRuleAction -Conditions $GroupRuleConditions -Name "Assign users to the Sales Team" -Type "group_rule"

        $CleanedRule = Remove-NullProperties $NewGroupRule

        $CleanedRule.name  | Should -Be "Assign users to the Sales Team"
        $CleanedRule.type | Should -Be "group_rule"
        $CleanedRule.actions.assignUserToGroups.groupIds.Count | Should -Be 1
        $CleanedRule.actions.assignUserToGroups.groupIds[0] | Should -Be "foo"

         # GroupIds - 1 multiple-items array
         $GroupRuleGroupAssignment = Initialize-OktaGroupRuleGroupAssignment -GroupIds ([array]@("foo", "bar", "baz"))

         $GroupRuleAction = Initialize-OktaGroupRuleAction -AssignUserToGroups $GroupRuleGroupAssignment
 
         $GroupRuleExpression = Initialize-OktaGroupRuleExpression -Type "urn:okta:expression:1.0" -Value "user.title=='Sales Representative'"
 
         $GroupRuleConditions = Initialize-OktaGroupRuleConditions -Expression $GroupRuleExpression
 
         $NewGroupRule = Initialize-OktaGroupRule -Actions $GroupRuleAction -Conditions $GroupRuleConditions -Name "Assign users to the Sales Team" -Type "group_rule"
 
         $CleanedRule = Remove-NullProperties $NewGroupRule
 
         $CleanedRule.name  | Should -Be "Assign users to the Sales Team"
         $CleanedRule.type | Should -Be "group_rule"
         $CleanedRule.actions.assignUserToGroups.groupIds.Count | Should -Be 3
         $CleanedRule.actions.assignUserToGroups.groupIds[0] | Should -Be "foo"
         $CleanedRule.actions.assignUserToGroups.groupIds[1] | Should -Be "bar"
         $CleanedRule.actions.assignUserToGroups.groupIds[2] | Should -Be "baz"
    }

    It 'Should handle DateTime objects without infinite recursion (Issue #75)' {
        # Test object with DateTime properties similar to OIDC applications
        $TestObject = [PSObject]@{
            id = "test123"
            name = "Test App"
            created = Get-Date
            lastUpdated = Get-Date
            settings = [PSObject]@{
                someProperty = "value"
                timestamp = Get-Date
            }
        }

        # This should complete quickly without hanging
        $CleanedObject = Remove-NullProperties $TestObject

        # Verify DateTime properties are preserved
        $CleanedObject.id | Should -Be "test123"
        $CleanedObject.name | Should -Be "Test App"
        $CleanedObject.created | Should -BeOfType [DateTime]
        $CleanedObject.lastUpdated | Should -BeOfType [DateTime]
        $CleanedObject.settings.timestamp | Should -BeOfType [DateTime]
    }

    It 'Should handle DateTimeOffset objects without infinite recursion' {
        $TestObject = [PSObject]@{
            id = "test456"
            timestamp = [DateTimeOffset]::Now
        }

        $CleanedObject = Remove-NullProperties $TestObject

        $CleanedObject.id | Should -Be "test456"
        $CleanedObject.timestamp | Should -BeOfType [DateTimeOffset]
    }

    It 'Should handle Guid objects without infinite recursion' {
        $TestObject = [PSObject]@{
            id = [Guid]::NewGuid()
            name = "Test"
        }

        $CleanedObject = Remove-NullProperties $TestObject

        $CleanedObject.id | Should -BeOfType [Guid]
        $CleanedObject.name | Should -Be "Test"
    }

    It 'Should handle Uri objects without infinite recursion' {
        $TestObject = [PSObject]@{
            url = [Uri]"https://example.com"
            name = "Test"
        }

        $CleanedObject = Remove-NullProperties $TestObject

        $CleanedObject.url | Should -BeOfType [Uri]
        $CleanedObject.name | Should -Be "Test"
    }

    It 'Should handle TimeSpan objects without infinite recursion' {
        $TestObject = [PSObject]@{
            duration = [TimeSpan]::FromHours(2)
            name = "Test"
        }

        $CleanedObject = Remove-NullProperties $TestObject

        $CleanedObject.duration | Should -BeOfType [TimeSpan]
        $CleanedObject.name | Should -Be "Test"
    }

    It 'Should handle objects with null properties correctly' {
        $TestObject = [PSObject]@{
            id = "test123"
            nullProperty = $null
            validProperty = "value"
        }
        
        $result = Remove-NullProperties $TestObject
        
        # Valid property should exist
        $result.id | Should -Be "test123"
        $result.validProperty | Should -Be "value"
        
        # Null property should be removed
        Get-Member -InputObject $result -Name "nullProperty" -MemberType Properties | Should -Be $null
    }

    It 'Should handle complex objects with mixed DateTime properties and null values' {
        $TestObject = [PSObject]@{
            id = "complex123"
            created = Get-Date
            nullProp = $null
            nested = [PSObject]@{
                timestamp = Get-Date
                value = "test"
                anotherNull = $null
            }
            array = @(
                [PSObject]@{
                    date = Get-Date
                    nullField = $null
                }
            )
        }

        $CleanedObject = Remove-NullProperties $TestObject

        # DateTime properties should be preserved
        $CleanedObject.created | Should -BeOfType [DateTime]
        $CleanedObject.nested.timestamp | Should -BeOfType [DateTime]
        $CleanedObject.array[0].date | Should -BeOfType [DateTime]
        
        # Null properties should be removed
        Get-Member -InputObject $CleanedObject -Name "nullProp" -MemberType Properties | Should -Be $null
        Get-Member -InputObject $CleanedObject.nested -Name "anotherNull" -MemberType Properties | Should -Be $null
        Get-Member -InputObject $CleanedObject.array[0] -Name "nullField" -MemberType Properties | Should -Be $null
        
        # Regular properties should be preserved
        $CleanedObject.id | Should -Be "complex123"
        $CleanedObject.nested.value | Should -Be "test"
    }
}