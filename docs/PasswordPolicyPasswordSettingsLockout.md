# PasswordPolicyPasswordSettingsLockout
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoUnlockMinutes** | **Int32** |  | [optional] 
**MaxAttempts** | **Int32** |  | [optional] 
**ShowLockoutFailures** | **Boolean** |  | [optional] 
**UserLockoutNotificationChannels** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyPasswordSettingsLockout = Initialize-Okta.PowerShellPasswordPolicyPasswordSettingsLockout  -AutoUnlockMinutes null `
 -MaxAttempts null `
 -ShowLockoutFailures null `
 -UserLockoutNotificationChannels null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyPasswordSettingsLockout | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

