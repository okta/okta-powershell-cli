# BrowserPluginApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**SchemeApplicationCredentials**](SchemeApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Settings** | [**SwaApplicationSettings**](SwaApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BrowserPluginApplicationAllOf = Initialize-Okta.PowerShellBrowserPluginApplicationAllOf  -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$BrowserPluginApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

