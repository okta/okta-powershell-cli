# TrustedOrigin
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**CreatedBy** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**LastUpdatedBy** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Origin** | **String** |  | [optional] 
**Scopes** | [**TrustedOriginScope[]**](TrustedOriginScope.md) |  | [optional] 
**Status** | **String** |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$TrustedOrigin = Initialize-PSOpenAPIToolsTrustedOrigin  -Created null `
 -CreatedBy null `
 -Id null `
 -LastUpdated null `
 -LastUpdatedBy null `
 -Name null `
 -Origin null `
 -Scopes null `
 -Status null `
 -Links null
```

- Convert the resource to JSON
```powershell
$TrustedOrigin | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

