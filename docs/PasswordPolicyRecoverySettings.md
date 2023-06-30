# PasswordPolicyRecoverySettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Factors** | [**PasswordPolicyRecoveryFactors**](PasswordPolicyRecoveryFactors.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRecoverySettings = Initialize-Okta.PowerShellPasswordPolicyRecoverySettings  -Factors null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRecoverySettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

