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
}