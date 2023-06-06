# UserSchemaPublic
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Properties** | [**System.Collections.Hashtable**](UserSchemaAttribute.md) |  | [optional] 
**Required** | **String[]** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSchemaPublic = Initialize-PSOpenAPIToolsUserSchemaPublic  -Id null `
 -Properties null `
 -Required null `
 -Type null
```

- Convert the resource to JSON
```powershell
$UserSchemaPublic | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

