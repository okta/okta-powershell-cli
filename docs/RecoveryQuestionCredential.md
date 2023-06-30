# RecoveryQuestionCredential
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Answer** | **String** |  | [optional] 
**Question** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecoveryQuestionCredential = Initialize-Okta.PowerShellRecoveryQuestionCredential  -Answer null `
 -Question null
```

- Convert the resource to JSON
```powershell
$RecoveryQuestionCredential | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

