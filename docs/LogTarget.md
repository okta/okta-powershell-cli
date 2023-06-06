# LogTarget
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlternateId** | **String** |  | [optional] [readonly] 
**DetailEntry** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**DisplayName** | **String** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Type** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogTarget = Initialize-PSOpenAPIToolsLogTarget  -AlternateId null `
 -DetailEntry null `
 -DisplayName null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$LogTarget | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

