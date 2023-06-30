# ApplicationGroupAssignment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Priority** | **Int32** |  | [optional] 
**VarProfile** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ApplicationGroupAssignment = Initialize-Okta.PowerShellApplicationGroupAssignment  -Id null `
 -LastUpdated null `
 -Priority null `
 -VarProfile null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ApplicationGroupAssignment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

