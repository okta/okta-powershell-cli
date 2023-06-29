# ApplicationSettingsNotificationsVpnNetwork
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connection** | **String** |  | [optional] 
**Exclude** | **String[]** |  | [optional] 
**Include** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationSettingsNotificationsVpnNetwork = Initialize-Okta.PowerShellApplicationSettingsNotificationsVpnNetwork  -Connection null `
 -Exclude null `
 -Include null
```

- Convert the resource to JSON
```powershell
$ApplicationSettingsNotificationsVpnNetwork | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

