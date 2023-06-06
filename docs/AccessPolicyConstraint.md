# AccessPolicyConstraint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Methods** | **String[]** |  | [optional] 
**ReauthenticateIn** | **String** |  | [optional] 
**Types** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyConstraint = Initialize-PSOpenAPIToolsAccessPolicyConstraint  -Methods null `
 -ReauthenticateIn null `
 -Types null
```

- Convert the resource to JSON
```powershell
$AccessPolicyConstraint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

