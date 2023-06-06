# Authenticator
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Key** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Provider** | [**AuthenticatorProvider**](AuthenticatorProvider.md) |  | [optional] 
**Settings** | [**AuthenticatorSettings**](AuthenticatorSettings.md) |  | [optional] 
**Status** | [**AuthenticatorStatus**](AuthenticatorStatus.md) |  | [optional] 
**Type** | [**AuthenticatorType**](AuthenticatorType.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Authenticator = Initialize-PSOpenAPIToolsAuthenticator  -Created null `
 -Id null `
 -Key null `
 -LastUpdated null `
 -Name null `
 -Provider null `
 -Settings null `
 -Status null `
 -Type null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Authenticator | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

