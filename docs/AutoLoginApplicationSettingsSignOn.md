# AutoLoginApplicationSettingsSignOn
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LoginUrl** | **String** |  | [optional] 
**RedirectUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoLoginApplicationSettingsSignOn = Initialize-Okta.PowerShellAutoLoginApplicationSettingsSignOn  -LoginUrl null `
 -RedirectUrl null
```

- Convert the resource to JSON
```powershell
$AutoLoginApplicationSettingsSignOn | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

