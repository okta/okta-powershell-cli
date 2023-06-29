# ResourceSetBindingMember
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the role was created | [optional] [readonly] 
**Id** | **String** | Unique key for the role | [optional] [readonly] 
**LastUpdated** | **System.DateTime** | Timestamp when the role was last updated | [optional] [readonly] 
**Links** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingMember = Initialize-Okta.PowerShellResourceSetBindingMember  -Created null `
 -Id null `
 -LastUpdated null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingMember | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

