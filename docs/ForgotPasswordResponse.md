# ForgotPasswordResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ResetPasswordUrl** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ForgotPasswordResponse = Initialize-Okta.PowerShellForgotPasswordResponse  -ResetPasswordUrl null
```

- Convert the resource to JSON
```powershell
$ForgotPasswordResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

