# ResourceSetResources
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resources** | [**ResourceSetResource[]**](ResourceSetResource.md) |  | [optional] 
**Links** | [**ResourceSetResourcesLinks**](ResourceSetResourcesLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetResources = Initialize-Okta.PowerShellResourceSetResources  -Resources null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSetResources | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

