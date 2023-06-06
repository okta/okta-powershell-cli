# PasswordPolicyRuleActionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PasswordChange** | [**PasswordPolicyRuleAction**](PasswordPolicyRuleAction.md) |  | [optional] 
**SelfServicePasswordReset** | [**PasswordPolicyRuleAction**](PasswordPolicyRuleAction.md) |  | [optional] 
**SelfServiceUnlock** | [**PasswordPolicyRuleAction**](PasswordPolicyRuleAction.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRuleActionsAllOf = Initialize-PSOpenAPIToolsPasswordPolicyRuleActionsAllOf  -PasswordChange null `
 -SelfServicePasswordReset null `
 -SelfServiceUnlock null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRuleActionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

