# AuthenticatorProviderConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthPort** | **Int32** |  | [optional] 
**HostName** | **String** |  | [optional] 
**InstanceId** | **String** |  | [optional] 
**SharedSecret** | **String** |  | [optional] 
**UserNameTemplate** | [**AuthenticatorProviderConfigurationUserNameTemplate**](AuthenticatorProviderConfigurationUserNameTemplate.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthenticatorProviderConfiguration = Initialize-PSOpenAPIToolsAuthenticatorProviderConfiguration  -AuthPort null `
 -HostName null `
 -InstanceId null `
 -SharedSecret null `
 -UserNameTemplate null
```

- Convert the resource to JSON
```powershell
$AuthenticatorProviderConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

