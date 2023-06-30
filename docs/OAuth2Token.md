# OAuth2Token
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**ExpiresAt** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Issuer** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Scopes** | **String[]** |  | [optional] 
**Status** | [**GrantOrTokenStatus**](GrantOrTokenStatus.md) |  | [optional] 
**UserId** | **String** |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$OAuth2Token = Initialize-Okta.PowerShellOAuth2Token  -ClientId null `
 -Created null `
 -ExpiresAt null `
 -Id null `
 -Issuer null `
 -LastUpdated null `
 -Scopes null `
 -Status null `
 -UserId null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OAuth2Token | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

