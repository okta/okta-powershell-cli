# GroupRuleConditions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | [**GroupRuleExpression**](GroupRuleExpression.md) |  | [optional] 
**People** | [**GroupRulePeopleCondition**](GroupRulePeopleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupRuleConditions = Initialize-PSOpenAPIToolsGroupRuleConditions  -Expression null `
 -People null
```

- Convert the resource to JSON
```powershell
$GroupRuleConditions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

