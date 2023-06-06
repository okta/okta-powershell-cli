# OAuthApplicationCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Signing** | [**ApplicationCredentialsSigning**](ApplicationCredentialsSigning.md) |  | [optional] 
**UserNameTemplate** | [**ApplicationCredentialsUsernameTemplate**](ApplicationCredentialsUsernameTemplate.md) |  | [optional] 
**OauthClient** | [**ApplicationCredentialsOAuthClient**](ApplicationCredentialsOAuthClient.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OAuthApplicationCredentials = Initialize-PSOpenAPIToolsOAuthApplicationCredentials  -Signing null `
 -UserNameTemplate null `
 -OauthClient null
```

- Convert the resource to JSON
```powershell
$OAuthApplicationCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

