# KnowledgeConstraint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Methods** | **String[]** |  | [optional] 
**ReauthenticateIn** | **String** |  | [optional] 
**Types** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$KnowledgeConstraint = Initialize-Okta.PowerShellKnowledgeConstraint  -Methods null `
 -ReauthenticateIn null `
 -Types null
```

- Convert the resource to JSON
```powershell
$KnowledgeConstraint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

