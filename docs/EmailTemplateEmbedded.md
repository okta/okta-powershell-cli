# EmailTemplateEmbedded
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Settings** | [**EmailSettings**](EmailSettings.md) |  | [optional] 
**CustomizationCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailTemplateEmbedded = Initialize-PSOpenAPIToolsEmailTemplateEmbedded  -Settings null `
 -CustomizationCount null
```

- Convert the resource to JSON
```powershell
$EmailTemplateEmbedded | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

