# ApplicationCredentials
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Signing** | [**ApplicationCredentialsSigning**](ApplicationCredentialsSigning.md) |  | [optional] 
**UserNameTemplate** | [**ApplicationCredentialsUsernameTemplate**](ApplicationCredentialsUsernameTemplate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationCredentials = Initialize-PSOpenAPIToolsApplicationCredentials  -Signing null `
 -UserNameTemplate null
```

- Convert the resource to JSON
```powershell
$ApplicationCredentials | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

