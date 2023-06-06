# WellKnownOrgMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique identifier of the Org | [optional] 
**Pipeline** | [**PipelineType**](PipelineType.md) |  | [optional] 
**Settings** | [**WellKnownOrgMetadataSettings**](WellKnownOrgMetadataSettings.md) |  | [optional] 
**Links** | [**WellKnownOrgMetadataLinks**](WellKnownOrgMetadataLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WellKnownOrgMetadata = Initialize-PSOpenAPIToolsWellKnownOrgMetadata  -Id null `
 -Pipeline null `
 -Settings null `
 -Links null
```

- Convert the resource to JSON
```powershell
$WellKnownOrgMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

