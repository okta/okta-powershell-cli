# PasswordPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Priority** | **Int32** |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**System** | **Boolean** |  | [optional] 
**Type** | [**PolicyType**](PolicyType.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Conditions** | [**PasswordPolicyConditions**](PasswordPolicyConditions.md) |  | [optional] 
**Settings** | [**PasswordPolicySettings**](PasswordPolicySettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicy = Initialize-Okta.PowerShellPasswordPolicy  -Created null `
 -Description null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Priority null `
 -Status null `
 -System null `
 -Type null `
 -Embedded null `
 -Links null `
 -Conditions null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$PasswordPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

