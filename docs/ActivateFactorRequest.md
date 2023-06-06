# ActivateFactorRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attestation** | **String** |  | [optional] 
**ClientData** | **String** |  | [optional] 
**PassCode** | **String** |  | [optional] 
**RegistrationData** | **String** |  | [optional] 
**StateToken** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivateFactorRequest = Initialize-PSOpenAPIToolsActivateFactorRequest  -Attestation null `
 -ClientData null `
 -PassCode null `
 -RegistrationData null `
 -StateToken null
```

- Convert the resource to JSON
```powershell
$ActivateFactorRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

