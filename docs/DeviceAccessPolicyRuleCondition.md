# DeviceAccessPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Migrated** | **Boolean** |  | [optional] 
**Platform** | [**DevicePolicyRuleConditionPlatform**](DevicePolicyRuleConditionPlatform.md) |  | [optional] 
**Rooted** | **Boolean** |  | [optional] 
**TrustLevel** | [**DevicePolicyTrustLevel**](DevicePolicyTrustLevel.md) |  | [optional] 
**Managed** | **Boolean** |  | [optional] 
**Registered** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceAccessPolicyRuleCondition = Initialize-PSOpenAPIToolsDeviceAccessPolicyRuleCondition  -Migrated null `
 -Platform null `
 -Rooted null `
 -TrustLevel null `
 -Managed null `
 -Registered null
```

- Convert the resource to JSON
```powershell
$DeviceAccessPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

