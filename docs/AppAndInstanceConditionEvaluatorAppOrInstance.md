# AppAndInstanceConditionEvaluatorAppOrInstance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Type** | [**AppAndInstanceType**](AppAndInstanceType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAndInstanceConditionEvaluatorAppOrInstance = Initialize-Okta.PowerShellAppAndInstanceConditionEvaluatorAppOrInstance  -Id null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AppAndInstanceConditionEvaluatorAppOrInstance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

