# SocialAuthToken
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpiresAt** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Scopes** | **String[]** |  | [optional] 
**Token** | **String** |  | [optional] 
**TokenAuthScheme** | **String** |  | [optional] 
**TokenType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SocialAuthToken = Initialize-PSOpenAPIToolsSocialAuthToken  -ExpiresAt null `
 -Id null `
 -Scopes null `
 -Token null `
 -TokenAuthScheme null `
 -TokenType null
```

- Convert the resource to JSON
```powershell
$SocialAuthToken | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

