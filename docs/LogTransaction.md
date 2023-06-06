# LogTransaction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Type** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogTransaction = Initialize-PSOpenAPIToolsLogTransaction  -Detail null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$LogTransaction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

