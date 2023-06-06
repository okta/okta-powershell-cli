# WebAuthnUserFactorProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthenticatorName** | **String** |  | [optional] 
**CredentialId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WebAuthnUserFactorProfile = Initialize-PSOpenAPIToolsWebAuthnUserFactorProfile  -AuthenticatorName null `
 -CredentialId null
```

- Convert the resource to JSON
```powershell
$WebAuthnUserFactorProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

