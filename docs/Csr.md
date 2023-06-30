# Csr
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Csr** | **String** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Kty** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Csr = Initialize-Okta.PowerShellCsr  -Created null `
 -Csr null `
 -Id null `
 -Kty null
```

- Convert the resource to JSON
```powershell
$Csr | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

