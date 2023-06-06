# ResourceSets
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResourceSets** | [**ResourceSet[]**](ResourceSet.md) |  | [optional] 
**Links** | [**IamRolesLinks**](IamRolesLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSets = Initialize-PSOpenAPIToolsResourceSets  -ResourceSets null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSets | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

