# SecurityQuestion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Answer** | **String** |  | [optional] 
**Question** | **String** |  | [optional] 
**QuestionText** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurityQuestion = Initialize-Okta.PowerShellSecurityQuestion  -Answer null `
 -Question null `
 -QuestionText null
```

- Convert the resource to JSON
```powershell
$SecurityQuestion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

