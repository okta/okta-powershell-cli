# ApplicationVisibility
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppLinks** | **System.Collections.Hashtable** |  | [optional] 
**AutoLaunch** | **Boolean** |  | [optional] 
**AutoSubmitToolbar** | **Boolean** |  | [optional] 
**Hide** | [**ApplicationVisibilityHide**](ApplicationVisibilityHide.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationVisibility = Initialize-Okta.PowerShellApplicationVisibility  -AppLinks null `
 -AutoLaunch null `
 -AutoSubmitToolbar null `
 -Hide null
```

- Convert the resource to JSON
```powershell
$ApplicationVisibility | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

