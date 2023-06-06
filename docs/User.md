# User
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Activated** | **System.DateTime** |  | [optional] [readonly] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Credentials** | [**UserCredentials**](UserCredentials.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastLogin** | **System.DateTime** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**PasswordChanged** | **System.DateTime** |  | [optional] [readonly] 
**VarProfile** | [**UserProfile**](UserProfile.md) |  | [optional] 
**Status** | [**UserStatus**](UserStatus.md) |  | [optional] 
**StatusChanged** | **System.DateTime** |  | [optional] [readonly] 
**TransitioningToStatus** | [**UserStatus**](UserStatus.md) |  | [optional] 
**Type** | [**UserType**](UserType.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$User = Initialize-PSOpenAPIToolsUser  -Activated null `
 -Created null `
 -Credentials null `
 -Id null `
 -LastLogin null `
 -LastUpdated null `
 -PasswordChanged null `
 -VarProfile null `
 -Status null `
 -StatusChanged null `
 -TransitioningToStatus null `
 -Type null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

