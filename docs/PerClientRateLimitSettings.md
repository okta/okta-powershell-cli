# PerClientRateLimitSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultMode** | [**PerClientRateLimitMode**](PerClientRateLimitMode.md) |  | 
**UseCaseModeOverrides** | [**PerClientRateLimitSettingsUseCaseModeOverrides**](PerClientRateLimitSettingsUseCaseModeOverrides.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PerClientRateLimitSettings = Initialize-PSOpenAPIToolsPerClientRateLimitSettings  -DefaultMode null `
 -UseCaseModeOverrides null
```

- Convert the resource to JSON
```powershell
$PerClientRateLimitSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

