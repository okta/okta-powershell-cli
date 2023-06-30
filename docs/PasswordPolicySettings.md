# PasswordPolicySettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delegation** | [**PasswordPolicyDelegationSettings**](PasswordPolicyDelegationSettings.md) |  | [optional] 
**Password** | [**PasswordPolicyPasswordSettings**](PasswordPolicyPasswordSettings.md) |  | [optional] 
**Recovery** | [**PasswordPolicyRecoverySettings**](PasswordPolicyRecoverySettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicySettings = Initialize-Okta.PowerShellPasswordPolicySettings  -Delegation null `
 -Password null `
 -Recovery null
```

- Convert the resource to JSON
```powershell
$PasswordPolicySettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

