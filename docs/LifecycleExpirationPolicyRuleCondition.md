# LifecycleExpirationPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LifecycleStatus** | **String** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Unit** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LifecycleExpirationPolicyRuleCondition = Initialize-Okta.PowerShellLifecycleExpirationPolicyRuleCondition  -LifecycleStatus null `
 -Number null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$LifecycleExpirationPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

