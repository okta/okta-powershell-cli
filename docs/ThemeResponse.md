# ThemeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackgroundImage** | **String** |  | [optional] [readonly] 
**EmailTemplateTouchPointVariant** | [**EmailTemplateTouchPointVariant**](EmailTemplateTouchPointVariant.md) |  | [optional] 
**EndUserDashboardTouchPointVariant** | [**EndUserDashboardTouchPointVariant**](EndUserDashboardTouchPointVariant.md) |  | [optional] 
**ErrorPageTouchPointVariant** | [**ErrorPageTouchPointVariant**](ErrorPageTouchPointVariant.md) |  | [optional] 
**Favicon** | **String** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LoadingPageTouchPointVariant** | [**LoadingPageTouchPointVariant**](LoadingPageTouchPointVariant.md) |  | [optional] 
**Logo** | **String** |  | [optional] [readonly] 
**PrimaryColorContrastHex** | **String** |  | [optional] 
**PrimaryColorHex** | **String** |  | [optional] 
**SecondaryColorContrastHex** | **String** |  | [optional] 
**SecondaryColorHex** | **String** |  | [optional] 
**SignInPageTouchPointVariant** | [**SignInPageTouchPointVariant**](SignInPageTouchPointVariant.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ThemeResponse = Initialize-Okta.PowerShellThemeResponse  -BackgroundImage null `
 -EmailTemplateTouchPointVariant null `
 -EndUserDashboardTouchPointVariant null `
 -ErrorPageTouchPointVariant null `
 -Favicon null `
 -Id null `
 -LoadingPageTouchPointVariant null `
 -Logo null `
 -PrimaryColorContrastHex null `
 -PrimaryColorHex null `
 -SecondaryColorContrastHex null `
 -SecondaryColorHex null `
 -SignInPageTouchPointVariant null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ThemeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

