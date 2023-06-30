# JsonWebKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Alg** | **String** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] 
**E** | **String** |  | [optional] 
**ExpiresAt** | **System.DateTime** |  | [optional] 
**KeyOps** | **String[]** |  | [optional] 
**Kid** | **String** |  | [optional] 
**Kty** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] 
**N** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Use** | **String** |  | [optional] 
**X5c** | **String[]** |  | [optional] 
**X5t** | **String** |  | [optional] 
**X5tS256** | **String** |  | [optional] 
**X5u** | **String** |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$JsonWebKey = Initialize-Okta.PowerShellJsonWebKey  -Alg null `
 -Created null `
 -E null `
 -ExpiresAt null `
 -KeyOps null `
 -Kid null `
 -Kty null `
 -LastUpdated null `
 -N null `
 -Status null `
 -Use null `
 -X5c null `
 -X5t null `
 -X5tS256 null `
 -X5u null `
 -Links null
```

- Convert the resource to JSON
```powershell
$JsonWebKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

