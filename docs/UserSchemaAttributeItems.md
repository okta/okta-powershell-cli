# UserSchemaAttributeItems
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enum** | **String[]** |  | [optional] 
**OneOf** | [**UserSchemaAttributeEnum[]**](UserSchemaAttributeEnum.md) |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSchemaAttributeItems = Initialize-PSOpenAPIToolsUserSchemaAttributeItems  -Enum null `
 -OneOf null `
 -Type null
```

- Convert the resource to JSON
```powershell
$UserSchemaAttributeItems | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

