# AuthenticationProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Type** | [**AuthenticationProviderType**](AuthenticationProviderType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthenticationProvider = Initialize-PSOpenAPIToolsAuthenticationProvider  -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AuthenticationProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

