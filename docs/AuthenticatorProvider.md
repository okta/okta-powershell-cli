# AuthenticatorProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Configuration** | [**AuthenticatorProviderConfiguration**](AuthenticatorProviderConfiguration.md) |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthenticatorProvider = Initialize-Okta.PowerShellAuthenticatorProvider  -Configuration null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AuthenticatorProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

