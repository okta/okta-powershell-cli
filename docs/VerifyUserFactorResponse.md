# VerifyUserFactorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpiresAt** | **System.DateTime** |  | [optional] [readonly] 
**FactorResult** | [**VerifyUserFactorResult**](VerifyUserFactorResult.md) |  | [optional] 
**FactorResultMessage** | **String** |  | [optional] 
**Embedded** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VerifyUserFactorResponse = Initialize-Okta.PowerShellVerifyUserFactorResponse  -ExpiresAt null `
 -FactorResult null `
 -FactorResultMessage null `
 -Embedded null `
 -Links null
```

- Convert the resource to JSON
```powershell
$VerifyUserFactorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

