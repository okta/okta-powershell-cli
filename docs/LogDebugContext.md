# LogDebugContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DebugData** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogDebugContext = Initialize-Okta.PowerShellLogDebugContext  -DebugData null
```

- Convert the resource to JSON
```powershell
$LogDebugContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

