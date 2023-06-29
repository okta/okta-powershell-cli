# PasswordPolicyRuleAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**PasswordPolicyRuleActions**](PasswordPolicyRuleActions.md) |  | [optional] 
**Conditions** | [**PasswordPolicyRuleConditions**](PasswordPolicyRuleConditions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRuleAllOf = Initialize-Okta.PowerShellPasswordPolicyRuleAllOf  -Actions null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRuleAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

