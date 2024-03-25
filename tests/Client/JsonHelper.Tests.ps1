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

    It 'Should maintain the same object when there''s no null values'{
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
}