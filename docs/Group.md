# Group
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastMembershipUpdated** | **System.DateTime** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**ObjectClass** | **String[]** |  | [optional] [readonly] 
**VarProfile** | [**GroupProfile**](GroupProfile.md) |  | [optional] 
**Type** | [**GroupType**](GroupType.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**GroupLinks**](GroupLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Group = Initialize-Okta.PowerShellGroup  -Created null `
 -Id null `
 -LastMembershipUpdated null `
 -LastUpdated null `
 -ObjectClass null `
 -VarProfile null `
 -Type null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Group | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

