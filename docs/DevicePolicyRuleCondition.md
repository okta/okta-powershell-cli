# DevicePolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Migrated** | **Boolean** |  | [optional] 
**Platform** | [**DevicePolicyRuleConditionPlatform**](DevicePolicyRuleConditionPlatform.md) |  | [optional] 
**Rooted** | **Boolean** |  | [optional] 
**TrustLevel** | [**DevicePolicyTrustLevel**](DevicePolicyTrustLevel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePolicyRuleCondition = Initialize-Okta.PowerShellDevicePolicyRuleCondition  -Migrated null `
 -Platform null `
 -Rooted null `
 -TrustLevel null
```

- Convert the resource to JSON
```powershell
$DevicePolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

