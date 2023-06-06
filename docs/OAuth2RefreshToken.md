# OAuth2RefreshToken
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**CreatedBy** | [**OAuth2Actor**](OAuth2Actor.md) |  | [optional] 
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
$OAuth2RefreshToken = Initialize-PSOpenAPIToolsOAuth2RefreshToken  -ClientId null `
 -Created null `
 -CreatedBy null `
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
$OAuth2RefreshToken | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

