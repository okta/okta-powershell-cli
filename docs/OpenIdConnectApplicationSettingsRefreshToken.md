# OpenIdConnectApplicationSettingsRefreshToken
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Leeway** | **Int32** |  | [optional] 
**RotationType** | [**OpenIdConnectRefreshTokenRotationType**](OpenIdConnectRefreshTokenRotationType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OpenIdConnectApplicationSettingsRefreshToken = Initialize-Okta.PowerShellOpenIdConnectApplicationSettingsRefreshToken  -Leeway null `
 -RotationType null
```

- Convert the resource to JSON
```powershell
$OpenIdConnectApplicationSettingsRefreshToken | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

