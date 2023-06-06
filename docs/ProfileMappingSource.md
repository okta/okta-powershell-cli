# ProfileMappingSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] [readonly] 
**Type** | **String** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProfileMappingSource = Initialize-PSOpenAPIToolsProfileMappingSource  -Id null `
 -Name null `
 -Type null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ProfileMappingSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

