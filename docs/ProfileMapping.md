# ProfileMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Properties** | [**System.Collections.Hashtable**](ProfileMappingProperty.md) |  | [optional] 
**Source** | [**ProfileMappingSource**](ProfileMappingSource.md) |  | [optional] 
**Target** | [**ProfileMappingSource**](ProfileMappingSource.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProfileMapping = Initialize-Okta.PowerShellProfileMapping  -Id null `
 -Properties null `
 -Source null `
 -Target null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ProfileMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

