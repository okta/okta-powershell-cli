# BasicApplicationSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityStoreId** | **String** |  | [optional] 
**ImplicitAssignment** | **Boolean** |  | [optional] 
**InlineHookId** | **String** |  | [optional] 
**Notes** | [**ApplicationSettingsNotes**](ApplicationSettingsNotes.md) |  | [optional] 
**Notifications** | [**ApplicationSettingsNotifications**](ApplicationSettingsNotifications.md) |  | [optional] 
**App** | [**BasicApplicationSettingsApplication**](BasicApplicationSettingsApplication.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BasicApplicationSettings = Initialize-PSOpenAPIToolsBasicApplicationSettings  -IdentityStoreId null `
 -ImplicitAssignment null `
 -InlineHookId null `
 -Notes null `
 -Notifications null `
 -App null
```

- Convert the resource to JSON
```powershell
$BasicApplicationSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

