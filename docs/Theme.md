# Theme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackgroundImage** | **String** |  | [optional] [readonly] 
**EmailTemplateTouchPointVariant** | [**EmailTemplateTouchPointVariant**](EmailTemplateTouchPointVariant.md) |  | [optional] 
**EndUserDashboardTouchPointVariant** | [**EndUserDashboardTouchPointVariant**](EndUserDashboardTouchPointVariant.md) |  | [optional] 
**ErrorPageTouchPointVariant** | [**ErrorPageTouchPointVariant**](ErrorPageTouchPointVariant.md) |  | [optional] 
**LoadingPageTouchPointVariant** | [**LoadingPageTouchPointVariant**](LoadingPageTouchPointVariant.md) |  | [optional] 
**PrimaryColorContrastHex** | **String** |  | [optional] 
**PrimaryColorHex** | **String** |  | [optional] 
**SecondaryColorContrastHex** | **String** |  | [optional] 
**SecondaryColorHex** | **String** |  | [optional] 
**SignInPageTouchPointVariant** | [**SignInPageTouchPointVariant**](SignInPageTouchPointVariant.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Theme = Initialize-PSOpenAPIToolsTheme  -BackgroundImage null `
 -EmailTemplateTouchPointVariant null `
 -EndUserDashboardTouchPointVariant null `
 -ErrorPageTouchPointVariant null `
 -LoadingPageTouchPointVariant null `
 -PrimaryColorContrastHex null `
 -PrimaryColorHex null `
 -SecondaryColorContrastHex null `
 -SecondaryColorHex null `
 -SignInPageTouchPointVariant null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Theme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

