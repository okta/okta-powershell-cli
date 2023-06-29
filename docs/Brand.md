# Brand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgreeToCustomPrivacyPolicy** | **Boolean** |  | [optional] 
**CustomPrivacyPolicyUrl** | **String** |  | [optional] 
**DefaultApp** | [**BrandDefaultApp**](BrandDefaultApp.md) |  | [optional] 
**DisplayLanguage** | **String** | The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646). | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**IsDefault** | **Boolean** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**RemovePoweredByOkta** | **Boolean** |  | [optional] 
**Links** | [**BrandLinks**](BrandLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Brand = Initialize-Okta.PowerShellBrand  -AgreeToCustomPrivacyPolicy null `
 -CustomPrivacyPolicyUrl null `
 -DefaultApp null `
 -DisplayLanguage null `
 -Id null `
 -IsDefault null `
 -Name null `
 -RemovePoweredByOkta null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Brand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

