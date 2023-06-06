# ResourceSetBindings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | [**ResourceSetBindingRole[]**](ResourceSetBindingRole.md) |  | [optional] 
**Links** | [**ResourceSetBindingResponseLinks**](ResourceSetBindingResponseLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindings = Initialize-PSOpenAPIToolsResourceSetBindings  -Roles null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

