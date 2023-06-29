# LogOutcome
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reason** | **String** |  | [optional] [readonly] 
**Result** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogOutcome = Initialize-Okta.PowerShellLogOutcome  -Reason null `
 -Result null
```

- Convert the resource to JSON
```powershell
$LogOutcome | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

