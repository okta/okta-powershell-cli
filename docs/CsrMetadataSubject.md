# CsrMetadataSubject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommonName** | **String** |  | [optional] 
**CountryName** | **String** |  | [optional] 
**LocalityName** | **String** |  | [optional] 
**OrganizationalUnitName** | **String** |  | [optional] 
**OrganizationName** | **String** |  | [optional] 
**StateOrProvinceName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CsrMetadataSubject = Initialize-PSOpenAPIToolsCsrMetadataSubject  -CommonName null `
 -CountryName null `
 -LocalityName null `
 -OrganizationalUnitName null `
 -OrganizationName null `
 -StateOrProvinceName null
```

- Convert the resource to JSON
```powershell
$CsrMetadataSubject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

