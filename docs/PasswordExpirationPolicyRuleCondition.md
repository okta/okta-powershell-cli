# PasswordExpirationPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Number** | **Int32** |  | [optional] 
**Unit** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordExpirationPolicyRuleCondition = Initialize-Okta.PowerShellPasswordExpirationPolicyRuleCondition  -Number null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$PasswordExpirationPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

