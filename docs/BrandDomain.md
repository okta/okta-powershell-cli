# BrandDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainId** | **String** |  | [optional] [readonly] 
**Links** | [**BrandDomainLinks**](BrandDomainLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BrandDomain = Initialize-PSOpenAPIToolsBrandDomain  -DomainId null `
 -Links null
```

- Convert the resource to JSON
```powershell
$BrandDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

