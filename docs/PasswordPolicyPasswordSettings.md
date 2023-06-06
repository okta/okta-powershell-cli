# PasswordPolicyPasswordSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Age** | [**PasswordPolicyPasswordSettingsAge**](PasswordPolicyPasswordSettingsAge.md) |  | [optional] 
**Complexity** | [**PasswordPolicyPasswordSettingsComplexity**](PasswordPolicyPasswordSettingsComplexity.md) |  | [optional] 
**Lockout** | [**PasswordPolicyPasswordSettingsLockout**](PasswordPolicyPasswordSettingsLockout.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyPasswordSettings = Initialize-PSOpenAPIToolsPasswordPolicyPasswordSettings  -Age null `
 -Complexity null `
 -Lockout null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyPasswordSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

