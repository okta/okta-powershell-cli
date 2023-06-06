# GroupCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exclude** | **String[]** |  | [optional] 
**Include** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupCondition = Initialize-PSOpenAPIToolsGroupCondition  -Exclude null `
 -Include null
```

- Convert the resource to JSON
```powershell
$GroupCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

