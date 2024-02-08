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
}