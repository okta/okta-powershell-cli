# PasswordPolicyPasswordSettingsAge
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpireWarnDays** | **Int32** |  | [optional] 
**HistoryCount** | **Int32** |  | [optional] 
**MaxAgeDays** | **Int32** |  | [optional] 
**MinAgeMinutes** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyPasswordSettingsAge = Initialize-PSOpenAPIToolsPasswordPolicyPasswordSettingsAge  -ExpireWarnDays null `
 -HistoryCount null `
 -MaxAgeDays null `
 -MinAgeMinutes null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyPasswordSettingsAge | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

