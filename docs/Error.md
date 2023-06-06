# ModelError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorCauses** | [**ErrorErrorCausesInner[]**](ErrorErrorCausesInner.md) |  | [optional] 
**ErrorCode** | **String** | An Okta code for this type of error | [optional] 
**ErrorId** | **String** | A unique identifier for this error. This can be used by Okta Support to help with troubleshooting. | [optional] 
**ErrorLink** | **String** | An Okta code for this type of error | [optional] 
**ErrorSummary** | **String** | A short description of what caused this error. Sometimes this contains dynamically-generated information about your specific error. | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelError = Initialize-PSOpenAPIToolsModelError  -ErrorCauses null `
 -ErrorCode null `
 -ErrorId null `
 -ErrorLink null `
 -ErrorSummary null
```

- Convert the resource to JSON
```powershell
$ModelError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

