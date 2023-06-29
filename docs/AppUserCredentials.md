# AppUserCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | [**AppUserPasswordCredential**](AppUserPasswordCredential.md) |  | [optional] 
**UserName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppUserCredentials = Initialize-Okta.PowerShellAppUserCredentials  -Password null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$AppUserCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

