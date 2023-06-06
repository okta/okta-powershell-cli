# PasswordPolicyRecoveryQuestion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Properties** | [**PasswordPolicyRecoveryQuestionProperties**](PasswordPolicyRecoveryQuestionProperties.md) |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRecoveryQuestion = Initialize-PSOpenAPIToolsPasswordPolicyRecoveryQuestion  -Properties null `
 -Status null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRecoveryQuestion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

