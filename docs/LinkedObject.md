# LinkedObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Associated** | [**LinkedObjectDetails**](LinkedObjectDetails.md) |  | [optional] 
**Primary** | [**LinkedObjectDetails**](LinkedObjectDetails.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LinkedObject = Initialize-Okta.PowerShellLinkedObject  -Associated null `
 -Primary null `
 -Links null
```

- Convert the resource to JSON
```powershell
$LinkedObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

