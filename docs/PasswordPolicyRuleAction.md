# PasswordPolicyRuleAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**PolicyAccess**](PolicyAccess.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRuleAction = Initialize-Okta.PowerShellPasswordPolicyRuleAction  -Access null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRuleAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

