# OpenIdConnectApplicationSettingsClient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationType** | [**OpenIdConnectApplicationType**](OpenIdConnectApplicationType.md) |  | [optional] 
**ClientUri** | **String** |  | [optional] 
**ConsentMethod** | [**OpenIdConnectApplicationConsentMethod**](OpenIdConnectApplicationConsentMethod.md) |  | [optional] 
**GrantTypes** | [**OAuthGrantType[]**](OAuthGrantType.md) |  | [optional] 
**IdpInitiatedLogin** | [**OpenIdConnectApplicationIdpInitiatedLogin**](OpenIdConnectApplicationIdpInitiatedLogin.md) |  | [optional] 
**InitiateLoginUri** | **String** |  | [optional] 
**IssuerMode** | [**OpenIdConnectApplicationIssuerMode**](OpenIdConnectApplicationIssuerMode.md) |  | [optional] 
**Jwks** | [**OpenIdConnectApplicationSettingsClientKeys**](OpenIdConnectApplicationSettingsClientKeys.md) |  | [optional] 
**LogoUri** | **String** |  | [optional] 
**PolicyUri** | **String** |  | [optional] 
**PostLogoutRedirectUris** | **String[]** |  | [optional] 
**RedirectUris** | **String[]** |  | [optional] 
**RefreshToken** | [**OpenIdConnectApplicationSettingsRefreshToken**](OpenIdConnectApplicationSettingsRefreshToken.md) |  | [optional] 
**ResponseTypes** | [**OAuthResponseType[]**](OAuthResponseType.md) |  | [optional] 
**TosUri** | **String** |  | [optional] 
**WildcardRedirect** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OpenIdConnectApplicationSettingsClient = Initialize-PSOpenAPIToolsOpenIdConnectApplicationSettingsClient  -ApplicationType null `
 -ClientUri null `
 -ConsentMethod null `
 -GrantTypes null `
 -IdpInitiatedLogin null `
 -InitiateLoginUri null `
 -IssuerMode null `
 -Jwks null `
 -LogoUri null `
 -PolicyUri null `
 -PostLogoutRedirectUris null `
 -RedirectUris null `
 -RefreshToken null `
 -ResponseTypes null `
 -TosUri null `
 -WildcardRedirect null
```

- Convert the resource to JSON
```powershell
$OpenIdConnectApplicationSettingsClient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

