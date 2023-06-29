# BrandDomainLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Brand** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Domain** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BrandDomainLinks = Initialize-Okta.PowerShellBrandDomainLinks  -Self null `
 -Brand null `
 -Domain null
```

- Convert the resource to JSON
```powershell
$BrandDomainLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

