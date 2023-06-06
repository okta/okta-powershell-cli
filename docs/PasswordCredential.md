# PasswordCredential
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hash** | [**PasswordCredentialHash**](PasswordCredentialHash.md) |  | [optional] 
**Hook** | [**PasswordCredentialHook**](PasswordCredentialHook.md) |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordCredential = Initialize-PSOpenAPIToolsPasswordCredential  -Hash null `
 -Hook null `
 -Value null
```

- Convert the resource to JSON
```powershell
$PasswordCredential | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

