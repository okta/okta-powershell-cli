# AppAndInstancePolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exclude** | [**AppAndInstanceConditionEvaluatorAppOrInstance[]**](AppAndInstanceConditionEvaluatorAppOrInstance.md) |  | [optional] 
**Include** | [**AppAndInstanceConditionEvaluatorAppOrInstance[]**](AppAndInstanceConditionEvaluatorAppOrInstance.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAndInstancePolicyRuleCondition = Initialize-PSOpenAPIToolsAppAndInstancePolicyRuleCondition  -Exclude null `
 -Include null
```

- Convert the resource to JSON
```powershell
$AppAndInstancePolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

