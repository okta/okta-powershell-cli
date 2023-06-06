# ApplicationSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityStoreId** | **String** |  | [optional] 
**ImplicitAssignment** | **Boolean** |  | [optional] 
**InlineHookId** | **String** |  | [optional] 
**Notes** | [**ApplicationSettingsNotes**](ApplicationSettingsNotes.md) |  | [optional] 
**Notifications** | [**ApplicationSettingsNotifications**](ApplicationSettingsNotifications.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationSettings = Initialize-PSOpenAPIToolsApplicationSettings  -IdentityStoreId null `
 -ImplicitAssignment null `
 -InlineHookId null `
 -Notes null `
 -Notifications null
```

- Convert the resource to JSON
```powershell
$ApplicationSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

