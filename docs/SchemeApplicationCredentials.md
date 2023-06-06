# SchemeApplicationCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Signing** | [**ApplicationCredentialsSigning**](ApplicationCredentialsSigning.md) |  | [optional] 
**UserNameTemplate** | [**ApplicationCredentialsUsernameTemplate**](ApplicationCredentialsUsernameTemplate.md) |  | [optional] 
**Password** | [**PasswordCredential**](PasswordCredential.md) |  | [optional] 
**RevealPassword** | **Boolean** |  | [optional] 
**Scheme** | [**ApplicationCredentialsScheme**](ApplicationCredentialsScheme.md) |  | [optional] 
**UserName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SchemeApplicationCredentials = Initialize-PSOpenAPIToolsSchemeApplicationCredentials  -Signing null `
 -UserNameTemplate null `
 -Password null `
 -RevealPassword null `
 -Scheme null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$SchemeApplicationCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

