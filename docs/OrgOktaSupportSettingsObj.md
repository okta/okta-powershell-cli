# OrgOktaSupportSettingsObj
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expiration** | **System.DateTime** |  | [optional] [readonly] 
**Support** | [**OrgOktaSupportSetting**](OrgOktaSupportSetting.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrgOktaSupportSettingsObj = Initialize-PSOpenAPIToolsOrgOktaSupportSettingsObj  -Expiration null `
 -Support null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OrgOktaSupportSettingsObj | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

