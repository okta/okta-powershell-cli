# AuthorizationServer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Audiences** | **String[]** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Credentials** | [**AuthorizationServerCredentials**](AuthorizationServerCredentials.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Issuer** | **String** |  | [optional] 
**IssuerMode** | [**IssuerMode**](IssuerMode.md) |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AuthorizationServer = Initialize-PSOpenAPIToolsAuthorizationServer  -Audiences null `
 -Created null `
 -Credentials null `
 -Description null `
 -Id null `
 -Issuer null `
 -IssuerMode null `
 -LastUpdated null `
 -Name null `
 -Status null `
 -Links null
```

- Convert the resource to JSON
```powershell
$AuthorizationServer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

