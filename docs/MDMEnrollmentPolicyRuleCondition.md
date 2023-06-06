# MDMEnrollmentPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockNonSafeAndroid** | **Boolean** |  | [optional] 
**Enrollment** | [**MDMEnrollmentPolicyEnrollment**](MDMEnrollmentPolicyEnrollment.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MDMEnrollmentPolicyRuleCondition = Initialize-PSOpenAPIToolsMDMEnrollmentPolicyRuleCondition  -BlockNonSafeAndroid null `
 -Enrollment null
```

- Convert the resource to JSON
```powershell
$MDMEnrollmentPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

