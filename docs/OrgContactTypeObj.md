# OrgContactTypeObj
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContactType** | [**OrgContactType**](OrgContactType.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrgContactTypeObj = Initialize-PSOpenAPIToolsOrgContactTypeObj  -ContactType null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OrgContactTypeObj | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

