# OAuth2Scope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Consent** | [**OAuth2ScopeConsentType**](OAuth2ScopeConsentType.md) |  | [optional] 
**Default** | **Boolean** |  | [optional] 
**Description** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**MetadataPublish** | [**OAuth2ScopeMetadataPublish**](OAuth2ScopeMetadataPublish.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**System** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OAuth2Scope = Initialize-PSOpenAPIToolsOAuth2Scope  -Consent null `
 -Default null `
 -Description null `
 -DisplayName null `
 -Id null `
 -MetadataPublish null `
 -Name null `
 -System null
```

- Convert the resource to JSON
```powershell
$OAuth2Scope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

