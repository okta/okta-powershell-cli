# LogIpAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GeographicalContext** | [**LogGeographicalContext**](LogGeographicalContext.md) |  | [optional] 
**Ip** | **String** |  | [optional] [readonly] 
**Source** | **String** |  | [optional] [readonly] 
**Version** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogIpAddress = Initialize-PSOpenAPIToolsLogIpAddress  -GeographicalContext null `
 -Ip null `
 -Source null `
 -Version null
```

- Convert the resource to JSON
```powershell
$LogIpAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

