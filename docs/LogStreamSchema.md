# LogStreamSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Schema** | **String** |  | [optional] [readonly] 
**Created** | **String** |  | [optional] [readonly] 
**ErrorMessage** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] [readonly] 
**Properties** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Required** | **String[]** |  | [optional] 
**Title** | **String** |  | [optional] 
**Type** | **String** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogStreamSchema = Initialize-PSOpenAPIToolsLogStreamSchema  -Schema null `
 -Created null `
 -ErrorMessage null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Properties null `
 -Required null `
 -Title null `
 -Type null `
 -Links null
```

- Convert the resource to JSON
```powershell
$LogStreamSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

