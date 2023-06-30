# PasswordPolicyRecoveryFactors
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OktaCall** | [**PasswordPolicyRecoveryFactorSettings**](PasswordPolicyRecoveryFactorSettings.md) |  | [optional] 
**OktaEmail** | [**PasswordPolicyRecoveryEmail**](PasswordPolicyRecoveryEmail.md) |  | [optional] 
**OktaSms** | [**PasswordPolicyRecoveryFactorSettings**](PasswordPolicyRecoveryFactorSettings.md) |  | [optional] 
**RecoveryQuestion** | [**PasswordPolicyRecoveryQuestion**](PasswordPolicyRecoveryQuestion.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRecoveryFactors = Initialize-Okta.PowerShellPasswordPolicyRecoveryFactors  -OktaCall null `
 -OktaEmail null `
 -OktaSms null `
 -RecoveryQuestion null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRecoveryFactors | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

