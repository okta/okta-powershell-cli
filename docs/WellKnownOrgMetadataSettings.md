# WellKnownOrgMetadataSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnalyticsCollectionEnabled** | **Boolean** |  | [optional] 
**BugReportingEnabled** | **Boolean** |  | [optional] 
**OmEnabled** | **Boolean** | Whether the legacy Okta Mobile application is enabled for the org | [optional] 

## Examples

- Prepare the resource
```powershell
$WellKnownOrgMetadataSettings = Initialize-PSOpenAPIToolsWellKnownOrgMetadataSettings  -AnalyticsCollectionEnabled null `
 -BugReportingEnabled null `
 -OmEnabled null
```

- Convert the resource to JSON
```powershell
$WellKnownOrgMetadataSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

