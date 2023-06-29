# PasswordPolicyRecoveryEmail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Properties** | [**PasswordPolicyRecoveryEmailProperties**](PasswordPolicyRecoveryEmailProperties.md) |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRecoveryEmail = Initialize-Okta.PowerShellPasswordPolicyRecoveryEmail  -Properties null `
 -Status null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRecoveryEmail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

