# ResourceSetBindingRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Links** | [**ResourceSetBindingRoleLinks**](ResourceSetBindingRoleLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingRole = Initialize-PSOpenAPIToolsResourceSetBindingRole  -Id null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

