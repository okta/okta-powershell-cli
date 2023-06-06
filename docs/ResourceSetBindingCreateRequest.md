# ResourceSetBindingCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Members** | **String[]** |  | [optional] 
**Role** | **String** | Unique key for the role | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingCreateRequest = Initialize-PSOpenAPIToolsResourceSetBindingCreateRequest  -Members null `
 -Role null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

