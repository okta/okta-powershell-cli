# ContextPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Migrated** | **Boolean** |  | [optional] 
**Platform** | [**DevicePolicyRuleConditionPlatform**](DevicePolicyRuleConditionPlatform.md) |  | [optional] 
**Rooted** | **Boolean** |  | [optional] 
**TrustLevel** | [**DevicePolicyTrustLevel**](DevicePolicyTrustLevel.md) |  | [optional] 
**Expression** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContextPolicyRuleCondition = Initialize-Okta.PowerShellContextPolicyRuleCondition  -Migrated null `
 -Platform null `
 -Rooted null `
 -TrustLevel null `
 -Expression null
```

- Convert the resource to JSON
```powershell
$ContextPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

