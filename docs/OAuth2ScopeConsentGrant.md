# OAuth2ScopeConsentGrant
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**CreatedBy** | [**OAuth2Actor**](OAuth2Actor.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Issuer** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**ScopeId** | **String** |  | [optional] 
**Source** | [**OAuth2ScopeConsentGrantSource**](OAuth2ScopeConsentGrantSource.md) |  | [optional] 
**Status** | [**GrantOrTokenStatus**](GrantOrTokenStatus.md) |  | [optional] 
**UserId** | **String** |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$OAuth2ScopeConsentGrant = Initialize-Okta.PowerShellOAuth2ScopeConsentGrant  -ClientId null `
 -Created null `
 -CreatedBy null `
 -Id null `
 -Issuer null `
 -LastUpdated null `
 -ScopeId null `
 -Source null `
 -Status null `
 -UserId null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OAuth2ScopeConsentGrant | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

