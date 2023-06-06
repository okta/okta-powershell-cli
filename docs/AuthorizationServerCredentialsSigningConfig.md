# AuthorizationServerCredentialsSigningConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kid** | **String** |  | [optional] 
**LastRotated** | **System.DateTime** |  | [optional] [readonly] 
**NextRotation** | **System.DateTime** |  | [optional] [readonly] 
**RotationMode** | [**AuthorizationServerCredentialsRotationMode**](AuthorizationServerCredentialsRotationMode.md) |  | [optional] 
**Use** | [**AuthorizationServerCredentialsUse**](AuthorizationServerCredentialsUse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthorizationServerCredentialsSigningConfig = Initialize-PSOpenAPIToolsAuthorizationServerCredentialsSigningConfig  -Kid null `
 -LastRotated null `
 -NextRotation null `
 -RotationMode null `
 -Use null
```

- Convert the resource to JSON
```powershell
$AuthorizationServerCredentialsSigningConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

