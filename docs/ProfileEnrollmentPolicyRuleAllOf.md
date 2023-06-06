# ProfileEnrollmentPolicyRuleAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**ProfileEnrollmentPolicyRuleActions**](ProfileEnrollmentPolicyRuleActions.md) |  | [optional] 
**Conditions** | [**PolicyRuleConditions**](PolicyRuleConditions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileEnrollmentPolicyRuleAllOf = Initialize-PSOpenAPIToolsProfileEnrollmentPolicyRuleAllOf  -Actions null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$ProfileEnrollmentPolicyRuleAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

