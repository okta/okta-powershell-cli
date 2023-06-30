# DevicePolicyRuleConditionPlatform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SupportedMDMFrameworks** | [**DevicePolicyMDMFramework[]**](DevicePolicyMDMFramework.md) |  | [optional] 
**Types** | [**DevicePolicyPlatformType[]**](DevicePolicyPlatformType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DevicePolicyRuleConditionPlatform = Initialize-Okta.PowerShellDevicePolicyRuleConditionPlatform  -SupportedMDMFrameworks null `
 -Types null
```

- Convert the resource to JSON
```powershell
$DevicePolicyRuleConditionPlatform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

