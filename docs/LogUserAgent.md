# LogUserAgent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Browser** | **String** |  | [optional] [readonly] 
**Os** | **String** |  | [optional] [readonly] 
**RawUserAgent** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogUserAgent = Initialize-PSOpenAPIToolsLogUserAgent  -Browser null `
 -Os null `
 -RawUserAgent null
```

- Convert the resource to JSON
```powershell
$LogUserAgent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

