# IamRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the role was created | [optional] [readonly] 
**Description** | **String** | Description of the role | 
**Id** | **String** | Unique key for the role | [optional] [readonly] 
**Label** | **String** | Unique label for the role | 
**LastUpdated** | **System.DateTime** | Timestamp when the role was last updated | [optional] [readonly] 
**Permissions** | [**RolePermissionType[]**](RolePermissionType.md) | Array of permissions that the role will grant. See [Permission Types](https://developer.okta.com/docs/concepts/role-assignment/#permission-types). | 
**Links** | [**IamRoleLinks**](IamRoleLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IamRole = Initialize-PSOpenAPIToolsIamRole  -Created null `
 -Description null `
 -Id null `
 -Label null `
 -LastUpdated null `
 -Permissions null `
 -Links null
```

- Convert the resource to JSON
```powershell
$IamRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

