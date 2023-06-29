# PerClientRateLimitSettingsUseCaseModeOverrides
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LOGINPAGE** | [**PerClientRateLimitMode**](PerClientRateLimitMode.md) |  | [optional] 
**OAUTH2AUTHORIZE** | [**PerClientRateLimitMode**](PerClientRateLimitMode.md) |  | [optional] 
**OIEAPPINTENT** | [**PerClientRateLimitMode**](PerClientRateLimitMode.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PerClientRateLimitSettingsUseCaseModeOverrides = Initialize-Okta.PowerShellPerClientRateLimitSettingsUseCaseModeOverrides  -LOGINPAGE null `
 -OAUTH2AUTHORIZE null `
 -OIEAPPINTENT null
```

- Convert the resource to JSON
```powershell
$PerClientRateLimitSettingsUseCaseModeOverrides | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

