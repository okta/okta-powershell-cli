# AccessPolicyConstraints
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Knowledge** | [**KnowledgeConstraint**](KnowledgeConstraint.md) |  | [optional] 
**Possession** | [**PossessionConstraint**](PossessionConstraint.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyConstraints = Initialize-PSOpenAPIToolsAccessPolicyConstraints  -Knowledge null `
 -Possession null
```

- Convert the resource to JSON
```powershell
$AccessPolicyConstraints | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

