# OpenIdConnectApplicationSettingsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OauthClient** | [**OpenIdConnectApplicationSettingsClient**](OpenIdConnectApplicationSettingsClient.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OpenIdConnectApplicationSettingsAllOf = Initialize-Okta.PowerShellOpenIdConnectApplicationSettingsAllOf  -OauthClient null
```

- Convert the resource to JSON
```powershell
$OpenIdConnectApplicationSettingsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

