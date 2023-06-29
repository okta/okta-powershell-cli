# SignInPage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PageContent** | **String** |  | [optional] 
**WidgetCustomizations** | [**SignInPageAllOfWidgetCustomizations**](SignInPageAllOfWidgetCustomizations.md) |  | [optional] 
**WidgetVersion** | **String** | The version specified as a [Semantic Version](https://semver.org/). | [optional] 

## Examples

- Prepare the resource
```powershell
$SignInPage = Initialize-Okta.PowerShellSignInPage  -PageContent null `
 -WidgetCustomizations null `
 -WidgetVersion null
```

- Convert the resource to JSON
```powershell
$SignInPage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

