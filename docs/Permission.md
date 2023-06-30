# Permission
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the role was created | [optional] [readonly] 
**Label** | **String** | The permission type | [optional] [readonly] 
**LastUpdated** | **System.DateTime** | Timestamp when the role was last updated | [optional] [readonly] 
**Links** | [**PermissionLinks**](PermissionLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Permission = Initialize-Okta.PowerShellPermission  -Created null `
 -Label null `
 -LastUpdated null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Permission | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

