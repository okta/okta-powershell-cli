# OrgOktaCommunicationSetting
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OptOutEmailUsers** | **Boolean** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrgOktaCommunicationSetting = Initialize-PSOpenAPIToolsOrgOktaCommunicationSetting  -OptOutEmailUsers null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OrgOktaCommunicationSetting | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

