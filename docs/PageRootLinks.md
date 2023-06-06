# PageRootLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Default** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Customized** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Preview** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageRootLinks = Initialize-PSOpenAPIToolsPageRootLinks  -Self null `
 -Default null `
 -Customized null `
 -Preview null
```

- Convert the resource to JSON
```powershell
$PageRootLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

