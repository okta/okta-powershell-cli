# ApplicationCredentialsSigning
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kid** | **String** |  | [optional] 
**LastRotated** | **System.DateTime** |  | [optional] [readonly] 
**NextRotation** | **System.DateTime** |  | [optional] [readonly] 
**RotationMode** | **String** |  | [optional] 
**Use** | [**ApplicationCredentialsSigningUse**](ApplicationCredentialsSigningUse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationCredentialsSigning = Initialize-Okta.PowerShellApplicationCredentialsSigning  -Kid null `
 -LastRotated null `
 -NextRotation null `
 -RotationMode null `
 -Use null
```

- Convert the resource to JSON
```powershell
$ApplicationCredentialsSigning | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

