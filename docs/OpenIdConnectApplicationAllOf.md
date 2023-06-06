# OpenIdConnectApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**OAuthApplicationCredentials**](OAuthApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] [default to "oidc_client"]
**Settings** | [**OpenIdConnectApplicationSettings**](OpenIdConnectApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OpenIdConnectApplicationAllOf = Initialize-PSOpenAPIToolsOpenIdConnectApplicationAllOf  -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$OpenIdConnectApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

