# IamRoles
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | [**IamRole[]**](IamRole.md) |  | [optional] 
**Links** | [**IamRolesLinks**](IamRolesLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IamRoles = Initialize-PSOpenAPIToolsIamRoles  -Roles null `
 -Links null
```

- Convert the resource to JSON
```powershell
$IamRoles | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

