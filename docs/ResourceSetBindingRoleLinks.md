# ResourceSetBindingRoleLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Members** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingRoleLinks = Initialize-PSOpenAPIToolsResourceSetBindingRoleLinks  -Self null `
 -Members null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingRoleLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

