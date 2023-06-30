# IdentityProviderPolicy
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
**AccountLink** | [**PolicyAccountLink**](PolicyAccountLink.md) |  | [optional] 
**Conditions** | [**PolicyRuleConditions**](PolicyRuleConditions.md) |  | [optional] 
**MaxClockSkew** | **Int32** |  | [optional] 
**Provisioning** | [**Provisioning**](Provisioning.md) |  | [optional] 
**Subject** | [**PolicySubject**](PolicySubject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderPolicy = Initialize-Okta.PowerShellIdentityProviderPolicy  -Created null `
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
 -AccountLink null `
 -Conditions null `
 -MaxClockSkew null `
 -Provisioning null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$IdentityProviderPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

