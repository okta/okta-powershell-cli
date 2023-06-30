# Role
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssignmentType** | [**RoleAssignmentType**](RoleAssignmentType.md) |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Label** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**Type** | [**RoleType**](RoleType.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-Okta.PowerShellRole  -AssignmentType null `
 -Created null `
 -Description null `
 -Id null `
 -Label null `
 -LastUpdated null `
 -Status null `
 -Type null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

