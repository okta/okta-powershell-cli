# SamlApplicationSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityStoreId** | **String** |  | [optional] 
**ImplicitAssignment** | **Boolean** |  | [optional] 
**InlineHookId** | **String** |  | [optional] 
**Notes** | [**ApplicationSettingsNotes**](ApplicationSettingsNotes.md) |  | [optional] 
**Notifications** | [**ApplicationSettingsNotifications**](ApplicationSettingsNotifications.md) |  | [optional] 
**App** | [**SamlApplicationSettingsApplication**](SamlApplicationSettingsApplication.md) |  | [optional] 
**SignOn** | [**SamlApplicationSettingsSignOn**](SamlApplicationSettingsSignOn.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SamlApplicationSettings = Initialize-Okta.PowerShellSamlApplicationSettings  -IdentityStoreId null `
 -ImplicitAssignment null `
 -InlineHookId null `
 -Notes null `
 -Notifications null `
 -App null `
 -SignOn null
```

- Convert the resource to JSON
```powershell
$SamlApplicationSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

