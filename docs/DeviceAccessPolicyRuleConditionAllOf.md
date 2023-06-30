# DeviceAccessPolicyRuleConditionAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Managed** | **Boolean** |  | [optional] 
**Registered** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceAccessPolicyRuleConditionAllOf = Initialize-Okta.PowerShellDeviceAccessPolicyRuleConditionAllOf  -Managed null `
 -Registered null
```

- Convert the resource to JSON
```powershell
$DeviceAccessPolicyRuleConditionAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

