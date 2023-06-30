# UpdateIamRoleRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the role | 
**Label** | **String** | Unique label for the role | 

## Examples

- Prepare the resource
```powershell
$UpdateIamRoleRequest = Initialize-Okta.PowerShellUpdateIamRoleRequest  -Description null `
 -Label null
```

- Convert the resource to JSON
```powershell
$UpdateIamRoleRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

