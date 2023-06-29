# SchemeApplicationCredentialsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | [**PasswordCredential**](PasswordCredential.md) |  | [optional] 
**RevealPassword** | **Boolean** |  | [optional] 
**Scheme** | [**ApplicationCredentialsScheme**](ApplicationCredentialsScheme.md) |  | [optional] 
**Signing** | [**ApplicationCredentialsSigning**](ApplicationCredentialsSigning.md) |  | [optional] 
**UserName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SchemeApplicationCredentialsAllOf = Initialize-Okta.PowerShellSchemeApplicationCredentialsAllOf  -Password null `
 -RevealPassword null `
 -Scheme null `
 -Signing null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$SchemeApplicationCredentialsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

