# IamRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the role was created | [optional] [readonly] 
**Description** | **String** | Description of the role | 
**Id** | **String** | Unique key for the role | [optional] [readonly] 
**Label** | **String** | Unique label for the role | 
**LastUpdated** | **System.DateTime** | Timestamp when the role was last updated | [optional] [readonly] 
**Links** | [**IamRoleLinks**](IamRoleLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IamRole = Initialize-Okta.PowerShellIamRole  -Created null `
 -Description null `
 -Id null `
 -Label null `
 -LastUpdated null `
 -Links null
```

- Convert the resource to JSON
```powershell
$IamRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

