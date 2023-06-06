# EmailPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** | The email&#39;s HTML body. | [optional] [readonly] 
**Subject** | **String** | The email&#39;s subject. | [optional] [readonly] 
**Links** | [**EmailPreviewLinks**](EmailPreviewLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailPreview = Initialize-PSOpenAPIToolsEmailPreview  -Body null `
 -Subject null `
 -Links null
```

- Convert the resource to JSON
```powershell
$EmailPreview | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

