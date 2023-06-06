# ResourceSet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the role was created | [optional] [readonly] 
**Description** | **String** | Description of the resource set | [optional] 
**Id** | **String** | Unique key for the role | [optional] [readonly] 
**Label** | **String** | Unique label for the resource set | [optional] 
**LastUpdated** | **System.DateTime** | Timestamp when the role was last updated | [optional] [readonly] 
**Links** | [**ResourceSetLinks**](ResourceSetLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSet = Initialize-PSOpenAPIToolsResourceSet  -Created null `
 -Description null `
 -Id null `
 -Label null `
 -LastUpdated null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

