# UserCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | [**PasswordCredential**](PasswordCredential.md) |  | [optional] 
**Provider** | [**AuthenticationProvider**](AuthenticationProvider.md) |  | [optional] 
**RecoveryQuestion** | [**RecoveryQuestionCredential**](RecoveryQuestionCredential.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserCredentials = Initialize-Okta.PowerShellUserCredentials  -Password null `
 -Provider null `
 -RecoveryQuestion null
```

- Convert the resource to JSON
```powershell
$UserCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

