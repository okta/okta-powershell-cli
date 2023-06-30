# OrgPreferences
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ShowEndUserFooter** | **Boolean** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OrgPreferences = Initialize-Okta.PowerShellOrgPreferences  -ShowEndUserFooter null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OrgPreferences | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

