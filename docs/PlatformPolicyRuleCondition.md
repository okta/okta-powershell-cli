# PlatformPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exclude** | [**PlatformConditionEvaluatorPlatform[]**](PlatformConditionEvaluatorPlatform.md) |  | [optional] 
**Include** | [**PlatformConditionEvaluatorPlatform[]**](PlatformConditionEvaluatorPlatform.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlatformPolicyRuleCondition = Initialize-PSOpenAPIToolsPlatformPolicyRuleCondition  -Exclude null `
 -Include null
```

- Convert the resource to JSON
```powershell
$PlatformPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

