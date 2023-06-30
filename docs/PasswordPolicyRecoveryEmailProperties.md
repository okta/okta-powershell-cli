# PasswordPolicyRecoveryEmailProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RecoveryToken** | [**PasswordPolicyRecoveryEmailRecoveryToken**](PasswordPolicyRecoveryEmailRecoveryToken.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRecoveryEmailProperties = Initialize-Okta.PowerShellPasswordPolicyRecoveryEmailProperties  -RecoveryToken null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRecoveryEmailProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

