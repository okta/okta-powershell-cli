# BrandRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgreeToCustomPrivacyPolicy** | **Boolean** |  | [optional] 
**CustomPrivacyPolicyUrl** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**RemovePoweredByOkta** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BrandRequest = Initialize-PSOpenAPIToolsBrandRequest  -AgreeToCustomPrivacyPolicy null `
 -CustomPrivacyPolicyUrl null `
 -Name null `
 -RemovePoweredByOkta null
```

- Convert the resource to JSON
```powershell
$BrandRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

