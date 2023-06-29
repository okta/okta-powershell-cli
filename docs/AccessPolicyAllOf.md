# AccessPolicyAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**PolicyRuleConditions**](PolicyRuleConditions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyAllOf = Initialize-Okta.PowerShellAccessPolicyAllOf  -Conditions null
```

- Convert the resource to JSON
```powershell
$AccessPolicyAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

