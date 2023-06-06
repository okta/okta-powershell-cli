# PageRootEmbedded
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Default** | [**CustomizablePage**](CustomizablePage.md) |  | [optional] 
**Customized** | [**CustomizablePage**](CustomizablePage.md) |  | [optional] 
**CustomizedUrl** | **String** |  | [optional] 
**Preview** | [**CustomizablePage**](CustomizablePage.md) |  | [optional] 
**PreviewUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PageRootEmbedded = Initialize-PSOpenAPIToolsPageRootEmbedded  -Default null `
 -Customized null `
 -CustomizedUrl null `
 -Preview null `
 -PreviewUrl null
```

- Convert the resource to JSON
```powershell
$PageRootEmbedded | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

