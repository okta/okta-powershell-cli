# ResourceSetBindingResponseLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Bindings** | [**HrefObject**](HrefObject.md) |  | [optional] 
**ResourceSet** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingResponseLinks = Initialize-PSOpenAPIToolsResourceSetBindingResponseLinks  -Self null `
 -Bindings null `
 -ResourceSet null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingResponseLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

