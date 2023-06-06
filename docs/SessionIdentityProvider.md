# SessionIdentityProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Type** | [**SessionIdentityProviderType**](SessionIdentityProviderType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SessionIdentityProvider = Initialize-PSOpenAPIToolsSessionIdentityProvider  -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SessionIdentityProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

