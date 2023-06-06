# MultifactorEnrollmentPolicyAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**PolicyRuleConditions**](PolicyRuleConditions.md) |  | [optional] 
**Settings** | [**MultifactorEnrollmentPolicySettings**](MultifactorEnrollmentPolicySettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MultifactorEnrollmentPolicyAllOf = Initialize-PSOpenAPIToolsMultifactorEnrollmentPolicyAllOf  -Conditions null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$MultifactorEnrollmentPolicyAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

