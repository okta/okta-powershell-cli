# IamRoleLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Permissions** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IamRoleLinks = Initialize-PSOpenAPIToolsIamRoleLinks  -Self null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$IamRoleLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

