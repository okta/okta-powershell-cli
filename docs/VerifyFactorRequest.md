# VerifyFactorRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivationToken** | **String** |  | [optional] 
**Answer** | **String** |  | [optional] 
**Attestation** | **String** |  | [optional] 
**ClientData** | **String** |  | [optional] 
**NextPassCode** | **String** |  | [optional] 
**PassCode** | **String** |  | [optional] 
**RegistrationData** | **String** |  | [optional] 
**StateToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VerifyFactorRequest = Initialize-PSOpenAPIToolsVerifyFactorRequest  -ActivationToken null `
 -Answer null `
 -Attestation null `
 -ClientData null `
 -NextPassCode null `
 -PassCode null `
 -RegistrationData null `
 -StateToken null
```

- Convert the resource to JSON
```powershell
$VerifyFactorRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

