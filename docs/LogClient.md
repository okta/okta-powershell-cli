# LogClient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Device** | **String** |  | [optional] [readonly] 
**GeographicalContext** | [**LogGeographicalContext**](LogGeographicalContext.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**IpAddress** | **String** |  | [optional] [readonly] 
**UserAgent** | [**LogUserAgent**](LogUserAgent.md) |  | [optional] 
**Zone** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogClient = Initialize-Okta.PowerShellLogClient  -Device null `
 -GeographicalContext null `
 -Id null `
 -IpAddress null `
 -UserAgent null `
 -Zone null
```

- Convert the resource to JSON
```powershell
$LogClient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

