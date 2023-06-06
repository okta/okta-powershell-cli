# IdentityProviderApplicationUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **String** |  | [optional] 
**VarProfile** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderApplicationUser = Initialize-PSOpenAPIToolsIdentityProviderApplicationUser  -Created null `
 -ExternalId null `
 -Id null `
 -LastUpdated null `
 -VarProfile null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$IdentityProviderApplicationUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

