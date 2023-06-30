# UserType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**CreatedBy** | **String** |  | [optional] [readonly] 
**Default** | **Boolean** |  | [optional] [readonly] 
**Description** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**LastUpdatedBy** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$UserType = Initialize-Okta.PowerShellUserType  -Created null `
 -CreatedBy null `
 -Default null `
 -Description null `
 -DisplayName null `
 -Id null `
 -LastUpdated null `
 -LastUpdatedBy null `
 -Name null `
 -Links null
```

- Convert the resource to JSON
```powershell
$UserType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

