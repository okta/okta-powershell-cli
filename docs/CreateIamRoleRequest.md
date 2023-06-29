# CreateIamRoleRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the role | 
**Label** | **String** | Unique label for the role | 
**Permissions** | [**RolePermissionType[]**](RolePermissionType.md) | Array of permissions that the role will grant. See [Permission Types](https://developer.okta.com/docs/concepts/role-assignment/#permission-types). | 

## Examples

- Prepare the resource
```powershell
$CreateIamRoleRequest = Initialize-Okta.PowerShellCreateIamRoleRequest  -Description null `
 -Label null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$CreateIamRoleRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

