# ResourceSetResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the role was created | [optional] [readonly] 
**Description** | **String** | Description of the resource set | [optional] 
**Id** | **String** | Unique key for the role | [optional] [readonly] 
**LastUpdated** | **System.DateTime** | Timestamp when the role was last updated | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ResourceSetResource = Initialize-PSOpenAPIToolsResourceSetResource  -Created null `
 -Description null `
 -Id null `
 -LastUpdated null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSetResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

