# IdentityProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**IssuerMode** | [**IssuerMode**](IssuerMode.md) |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Policy** | [**IdentityProviderPolicy**](IdentityProviderPolicy.md) |  | [optional] 
**Protocol** | [**Protocol**](Protocol.md) |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**Type** | [**IdentityProviderType**](IdentityProviderType.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IdentityProvider = Initialize-PSOpenAPIToolsIdentityProvider  -Created null `
 -Id null `
 -IssuerMode null `
 -LastUpdated null `
 -Name null `
 -Policy null `
 -Protocol null `
 -Status null `
 -Type null `
 -Links null
```

- Convert the resource to JSON
```powershell
$IdentityProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

