# ApplicationFeature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Capabilities** | [**CapabilitiesObject**](CapabilitiesObject.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Status** | [**EnabledStatus**](EnabledStatus.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ApplicationFeature = Initialize-PSOpenAPIToolsApplicationFeature  -Capabilities null `
 -Description null `
 -Name null `
 -Status null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ApplicationFeature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

