# ApplicationCredentialsOAuthClient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoKeyRotation** | **Boolean** |  | [optional] 
**ClientId** | **String** |  | [optional] 
**ClientSecret** | **String** |  | [optional] 
**TokenEndpointAuthMethod** | [**OAuthEndpointAuthenticationMethod**](OAuthEndpointAuthenticationMethod.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationCredentialsOAuthClient = Initialize-Okta.PowerShellApplicationCredentialsOAuthClient  -AutoKeyRotation null `
 -ClientId null `
 -ClientSecret null `
 -TokenEndpointAuthMethod null
```

- Convert the resource to JSON
```powershell
$ApplicationCredentialsOAuthClient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

