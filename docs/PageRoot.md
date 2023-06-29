# PageRoot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Embedded** | [**PageRootEmbedded**](PageRootEmbedded.md) |  | [optional] 
**Links** | [**PageRootLinks**](PageRootLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageRoot = Initialize-Okta.PowerShellPageRoot  -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$PageRoot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

