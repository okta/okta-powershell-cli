# AppUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Credentials** | [**AppUserCredentials**](AppUserCredentials.md) |  | [optional] 
**ExternalId** | **String** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] 
**LastSync** | **System.DateTime** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**PasswordChanged** | **System.DateTime** |  | [optional] [readonly] 
**VarProfile** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**Scope** | **String** |  | [optional] 
**Status** | **String** |  | [optional] [readonly] 
**StatusChanged** | **System.DateTime** |  | [optional] [readonly] 
**SyncState** | **String** |  | [optional] [readonly] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AppUser = Initialize-PSOpenAPIToolsAppUser  -Created null `
 -Credentials null `
 -ExternalId null `
 -Id null `
 -LastSync null `
 -LastUpdated null `
 -PasswordChanged null `
 -VarProfile null `
 -Scope null `
 -Status null `
 -StatusChanged null `
 -SyncState null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$AppUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

