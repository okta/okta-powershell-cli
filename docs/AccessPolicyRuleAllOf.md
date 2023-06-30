# AccessPolicyRuleAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**AccessPolicyRuleActions**](AccessPolicyRuleActions.md) |  | [optional] 
**Conditions** | [**AccessPolicyRuleConditions**](AccessPolicyRuleConditions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyRuleAllOf = Initialize-Okta.PowerShellAccessPolicyRuleAllOf  -Actions null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$AccessPolicyRuleAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

