# GroupSchemaCustom
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Properties** | [**System.Collections.Hashtable**](GroupSchemaAttribute.md) |  | [optional] 
**Required** | **String[]** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupSchemaCustom = Initialize-PSOpenAPIToolsGroupSchemaCustom  -Id null `
 -Properties null `
 -Required null `
 -Type null
```

- Convert the resource to JSON
```powershell
$GroupSchemaCustom | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

