# Session
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Amr** | [**SessionAuthenticationMethod[]**](SessionAuthenticationMethod.md) |  | [optional] [readonly] 
**CreatedAt** | **System.DateTime** |  | [optional] [readonly] 
**ExpiresAt** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Idp** | [**SessionIdentityProvider**](SessionIdentityProvider.md) |  | [optional] 
**LastFactorVerification** | **System.DateTime** |  | [optional] [readonly] 
**LastPasswordVerification** | **System.DateTime** |  | [optional] [readonly] 
**Login** | **String** |  | [optional] [readonly] 
**Status** | [**SessionStatus**](SessionStatus.md) |  | [optional] 
**UserId** | **String** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Session = Initialize-PSOpenAPIToolsSession  -Amr null `
 -CreatedAt null `
 -ExpiresAt null `
 -Id null `
 -Idp null `
 -LastFactorVerification null `
 -LastPasswordVerification null `
 -Login null `
 -Status null `
 -UserId null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Session | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

