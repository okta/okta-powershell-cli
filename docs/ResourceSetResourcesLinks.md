# ResourceSetResourcesLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Next** | [**HrefObject**](HrefObject.md) |  | [optional] 
**ResourceSet** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetResourcesLinks = Initialize-Okta.PowerShellResourceSetResourcesLinks  -Next null `
 -ResourceSet null
```

- Convert the resource to JSON
```powershell
$ResourceSetResourcesLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

