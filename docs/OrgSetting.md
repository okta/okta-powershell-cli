# OrgSetting
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address1** | **String** |  | [optional] 
**Address2** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**CompanyName** | **String** |  | [optional] 
**Country** | **String** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**EndUserSupportHelpURL** | **String** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**PhoneNumber** | **String** |  | [optional] 
**PostalCode** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**Status** | **String** |  | [optional] [readonly] 
**Subdomain** | **String** |  | [optional] [readonly] 
**SupportPhoneNumber** | **String** |  | [optional] 
**Website** | **String** |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrgSetting = Initialize-Okta.PowerShellOrgSetting  -Address1 null `
 -Address2 null `
 -City null `
 -CompanyName null `
 -Country null `
 -Created null `
 -EndUserSupportHelpURL null `
 -ExpiresAt null `
 -Id null `
 -LastUpdated null `
 -PhoneNumber null `
 -PostalCode null `
 -State null `
 -Status null `
 -Subdomain null `
 -SupportPhoneNumber null `
 -Website null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OrgSetting | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

