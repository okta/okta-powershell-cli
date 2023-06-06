# SamlApplicationSettingsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**App** | [**SamlApplicationSettingsApplication**](SamlApplicationSettingsApplication.md) |  | [optional] 
**SignOn** | [**SamlApplicationSettingsSignOn**](SamlApplicationSettingsSignOn.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SamlApplicationSettingsAllOf = Initialize-PSOpenAPIToolsSamlApplicationSettingsAllOf  -App null `
 -SignOn null
```

- Convert the resource to JSON
```powershell
$SamlApplicationSettingsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

