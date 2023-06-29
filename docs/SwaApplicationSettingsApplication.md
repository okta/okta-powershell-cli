# SwaApplicationSettingsApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ButtonField** | **String** |  | [optional] 
**ButtonSelector** | **String** |  | [optional] 
**Checkbox** | **String** |  | [optional] 
**ExtraFieldSelector** | **String** |  | [optional] 
**ExtraFieldValue** | **String** |  | [optional] 
**LoginUrlRegex** | **String** |  | [optional] 
**PasswordField** | **String** |  | [optional] 
**PasswordSelector** | **String** |  | [optional] 
**RedirectUrl** | **String** |  | [optional] 
**TargetURL** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 
**UsernameField** | **String** |  | [optional] 
**UserNameSelector** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SwaApplicationSettingsApplication = Initialize-Okta.PowerShellSwaApplicationSettingsApplication  -ButtonField null `
 -ButtonSelector null `
 -Checkbox null `
 -ExtraFieldSelector null `
 -ExtraFieldValue null `
 -LoginUrlRegex null `
 -PasswordField null `
 -PasswordSelector null `
 -RedirectUrl null `
 -TargetURL null `
 -Url null `
 -UsernameField null `
 -UserNameSelector null
```

- Convert the resource to JSON
```powershell
$SwaApplicationSettingsApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

