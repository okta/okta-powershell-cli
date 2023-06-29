# IdentityProviderCredentialsClient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** |  | [optional] 
**ClientSecret** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderCredentialsClient = Initialize-Okta.PowerShellIdentityProviderCredentialsClient  -ClientId null `
 -ClientSecret null
```

- Convert the resource to JSON
```powershell
$IdentityProviderCredentialsClient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

