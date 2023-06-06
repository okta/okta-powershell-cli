# ThreatInsightConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**ExcludeZones** | **String[]** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ThreatInsightConfiguration = Initialize-PSOpenAPIToolsThreatInsightConfiguration  -Action null `
 -Created null `
 -ExcludeZones null `
 -LastUpdated null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ThreatInsightConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

