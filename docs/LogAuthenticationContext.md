# LogAuthenticationContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthenticationProvider** | [**LogAuthenticationProvider**](LogAuthenticationProvider.md) |  | [optional] 
**AuthenticationStep** | **Int32** |  | [optional] [readonly] 
**CredentialProvider** | [**LogCredentialProvider**](LogCredentialProvider.md) |  | [optional] 
**CredentialType** | [**LogCredentialType**](LogCredentialType.md) |  | [optional] 
**ExternalSessionId** | **String** |  | [optional] [readonly] 
**Interface** | **String** |  | [optional] [readonly] 
**Issuer** | [**LogIssuer**](LogIssuer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogAuthenticationContext = Initialize-Okta.PowerShellLogAuthenticationContext  -AuthenticationProvider null `
 -AuthenticationStep null `
 -CredentialProvider null `
 -CredentialType null `
 -ExternalSessionId null `
 -Interface null `
 -Issuer null
```

- Convert the resource to JSON
```powershell
$LogAuthenticationContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

