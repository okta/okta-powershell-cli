# LogActor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AlternateId** | **String** |  | [optional] [readonly] 
**Detail** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**DisplayName** | **String** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Type** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogActor = Initialize-PSOpenAPIToolsLogActor  -AlternateId null `
 -Detail null `
 -DisplayName null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$LogActor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

