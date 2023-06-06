# LogGeographicalContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**City** | **String** |  | [optional] [readonly] 
**Country** | **String** |  | [optional] [readonly] 
**Geolocation** | [**LogGeolocation**](LogGeolocation.md) |  | [optional] 
**PostalCode** | **String** |  | [optional] [readonly] 
**State** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogGeographicalContext = Initialize-PSOpenAPIToolsLogGeographicalContext  -City null `
 -Country null `
 -Geolocation null `
 -PostalCode null `
 -State null
```

- Convert the resource to JSON
```powershell
$LogGeographicalContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

