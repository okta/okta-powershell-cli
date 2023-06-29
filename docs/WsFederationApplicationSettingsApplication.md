# WsFederationApplicationSettingsApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeStatements** | **String** |  | [optional] 
**AudienceRestriction** | **String** |  | [optional] 
**AuthnContextClassRef** | **String** |  | [optional] 
**GroupFilter** | **String** |  | [optional] 
**GroupName** | **String** |  | [optional] 
**GroupValueFormat** | **String** |  | [optional] 
**NameIDFormat** | **String** |  | [optional] 
**Realm** | **String** |  | [optional] 
**SiteURL** | **String** |  | [optional] 
**UsernameAttribute** | **String** |  | [optional] 
**WReplyOverride** | **Boolean** |  | [optional] 
**WReplyURL** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WsFederationApplicationSettingsApplication = Initialize-Okta.PowerShellWsFederationApplicationSettingsApplication  -AttributeStatements null `
 -AudienceRestriction null `
 -AuthnContextClassRef null `
 -GroupFilter null `
 -GroupName null `
 -GroupValueFormat null `
 -NameIDFormat null `
 -Realm null `
 -SiteURL null `
 -UsernameAttribute null `
 -WReplyOverride null `
 -WReplyURL null
```

- Convert the resource to JSON
```powershell
$WsFederationApplicationSettingsApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

