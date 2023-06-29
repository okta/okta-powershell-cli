# IdentityProviderCredentialsTrust
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Audience** | **String** |  | [optional] 
**Issuer** | **String** |  | [optional] 
**Kid** | **String** |  | [optional] 
**Revocation** | [**IdentityProviderCredentialsTrustRevocation**](IdentityProviderCredentialsTrustRevocation.md) |  | [optional] 
**RevocationCacheLifetime** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderCredentialsTrust = Initialize-Okta.PowerShellIdentityProviderCredentialsTrust  -Audience null `
 -Issuer null `
 -Kid null `
 -Revocation null `
 -RevocationCacheLifetime null
```

- Convert the resource to JSON
```powershell
$IdentityProviderCredentialsTrust | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

