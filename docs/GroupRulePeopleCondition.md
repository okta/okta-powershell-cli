# GroupRulePeopleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | [**GroupRuleGroupCondition**](GroupRuleGroupCondition.md) |  | [optional] 
**Users** | [**GroupRuleUserCondition**](GroupRuleUserCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupRulePeopleCondition = Initialize-PSOpenAPIToolsGroupRulePeopleCondition  -Groups null `
 -Users null
```

- Convert the resource to JSON
```powershell
$GroupRulePeopleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

