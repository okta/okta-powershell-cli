# AuthorizationServerCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Signing** | [**AuthorizationServerCredentialsSigningConfig**](AuthorizationServerCredentialsSigningConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthorizationServerCredentials = Initialize-Okta.PowerShellAuthorizationServerCredentials  -Signing null
```

- Convert the resource to JSON
```powershell
$AuthorizationServerCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

