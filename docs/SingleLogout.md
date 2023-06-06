# SingleLogout
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**Issuer** | **String** |  | [optional] 
**LogoutUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SingleLogout = Initialize-PSOpenAPIToolsSingleLogout  -Enabled null `
 -Issuer null `
 -LogoutUrl null
```

- Convert the resource to JSON
```powershell
$SingleLogout | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

