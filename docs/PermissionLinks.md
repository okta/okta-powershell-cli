# PermissionLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Role** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PermissionLinks = Initialize-PSOpenAPIToolsPermissionLinks  -Self null `
 -Role null
```

- Convert the resource to JSON
```powershell
$PermissionLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

