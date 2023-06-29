# AccessPolicyRuleConditionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Device** | [**DeviceAccessPolicyRuleCondition**](DeviceAccessPolicyRuleCondition.md) |  | [optional] 
**ElCondition** | [**AccessPolicyRuleCustomCondition**](AccessPolicyRuleCustomCondition.md) |  | [optional] 
**UserType** | [**UserTypeCondition**](UserTypeCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyRuleConditionsAllOf = Initialize-Okta.PowerShellAccessPolicyRuleConditionsAllOf  -Device null `
 -ElCondition null `
 -UserType null
```

- Convert the resource to JSON
```powershell
$AccessPolicyRuleConditionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

