# ApplicationLayoutRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Effect** | **String** |  | [optional] 
**Condition** | [**ApplicationLayoutRuleCondition**](ApplicationLayoutRuleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationLayoutRule = Initialize-PSOpenAPIToolsApplicationLayoutRule  -Effect null `
 -Condition null
```

- Convert the resource to JSON
```powershell
$ApplicationLayoutRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

