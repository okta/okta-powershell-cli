# AutoLoginApplicationSettingsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SignOn** | [**AutoLoginApplicationSettingsSignOn**](AutoLoginApplicationSettingsSignOn.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoLoginApplicationSettingsAllOf = Initialize-Okta.PowerShellAutoLoginApplicationSettingsAllOf  -SignOn null
```

- Convert the resource to JSON
```powershell
$AutoLoginApplicationSettingsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

