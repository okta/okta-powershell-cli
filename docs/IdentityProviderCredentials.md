# IdentityProviderCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Client** | [**IdentityProviderCredentialsClient**](IdentityProviderCredentialsClient.md) |  | [optional] 
**Signing** | [**IdentityProviderCredentialsSigning**](IdentityProviderCredentialsSigning.md) |  | [optional] 
**Trust** | [**IdentityProviderCredentialsTrust**](IdentityProviderCredentialsTrust.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderCredentials = Initialize-PSOpenAPIToolsIdentityProviderCredentials  -Client null `
 -Signing null `
 -Trust null
```

- Convert the resource to JSON
```powershell
$IdentityProviderCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

