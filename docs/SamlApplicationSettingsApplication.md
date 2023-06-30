# SamlApplicationSettingsApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AcsUrl** | **String** |  | [optional] 
**AudRestriction** | **String** |  | [optional] 
**BaseUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SamlApplicationSettingsApplication = Initialize-Okta.PowerShellSamlApplicationSettingsApplication  -AcsUrl null `
 -AudRestriction null `
 -BaseUrl null
```

- Convert the resource to JSON
```powershell
$SamlApplicationSettingsApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

