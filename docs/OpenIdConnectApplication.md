# OpenIdConnectApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Accessibility** | [**ApplicationAccessibility**](ApplicationAccessibility.md) |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Features** | **String[]** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Label** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Licensing** | [**ApplicationLicensing**](ApplicationLicensing.md) |  | [optional] 
**VarProfile** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**SignOnMode** | [**ApplicationSignOnMode**](ApplicationSignOnMode.md) |  | [optional] 
**Status** | [**ApplicationLifecycleStatus**](ApplicationLifecycleStatus.md) |  | [optional] 
**Visibility** | [**ApplicationVisibility**](ApplicationVisibility.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**ApplicationLinks**](ApplicationLinks.md) |  | [optional] 
**Credentials** | [**OAuthApplicationCredentials**](OAuthApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] [default to "oidc_client"]
**Settings** | [**OpenIdConnectApplicationSettings**](OpenIdConnectApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OpenIdConnectApplication = Initialize-Okta.PowerShellOpenIdConnectApplication  -Accessibility null `
 -Created null `
 -Features null `
 -Id null `
 -Label null `
 -LastUpdated null `
 -Licensing null `
 -VarProfile null `
 -SignOnMode null `
 -Status null `
 -Visibility null `
 -Embedded null `
 -Links null `
 -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$OpenIdConnectApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

