# ChangePasswordRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewPassword** | [**PasswordCredential**](PasswordCredential.md) |  | [optional] 
**OldPassword** | [**PasswordCredential**](PasswordCredential.md) |  | [optional] 
**RevokeSessions** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ChangePasswordRequest = Initialize-Okta.PowerShellChangePasswordRequest  -NewPassword null `
 -OldPassword null `
 -RevokeSessions null
```

- Convert the resource to JSON
```powershell
$ChangePasswordRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

