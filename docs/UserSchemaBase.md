# UserSchemaBase
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Properties** | [**UserSchemaBaseProperties**](UserSchemaBaseProperties.md) |  | [optional] 
**Required** | **String[]** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSchemaBase = Initialize-PSOpenAPIToolsUserSchemaBase  -Id null `
 -Properties null `
 -Required null `
 -Type null
```

- Convert the resource to JSON
```powershell
$UserSchemaBase | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

