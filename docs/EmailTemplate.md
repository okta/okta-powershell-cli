# EmailTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of this email template. | [optional] [readonly] 
**Embedded** | [**EmailTemplateEmbedded**](EmailTemplateEmbedded.md) |  | [optional] 
**Links** | [**EmailTemplateLinks**](EmailTemplateLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailTemplate = Initialize-PSOpenAPIToolsEmailTemplate  -Name null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$EmailTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

