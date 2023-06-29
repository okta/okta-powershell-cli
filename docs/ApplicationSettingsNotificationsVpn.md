# ApplicationSettingsNotificationsVpn
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HelpUrl** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Network** | [**ApplicationSettingsNotificationsVpnNetwork**](ApplicationSettingsNotificationsVpnNetwork.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationSettingsNotificationsVpn = Initialize-Okta.PowerShellApplicationSettingsNotificationsVpn  -HelpUrl null `
 -Message null `
 -Network null
```

- Convert the resource to JSON
```powershell
$ApplicationSettingsNotificationsVpn | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

