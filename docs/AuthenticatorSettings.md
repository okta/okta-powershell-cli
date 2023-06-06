# AuthenticatorSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedFor** | [**AllowedForEnum**](AllowedForEnum.md) |  | [optional] 
**AppInstanceId** | **String** |  | [optional] 
**ChannelBinding** | [**ChannelBinding**](ChannelBinding.md) |  | [optional] 
**Compliance** | [**Compliance**](Compliance.md) |  | [optional] 
**TokenLifetimeInMinutes** | **Int32** |  | [optional] 
**UserVerification** | [**UserVerificationEnum**](UserVerificationEnum.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthenticatorSettings = Initialize-PSOpenAPIToolsAuthenticatorSettings  -AllowedFor null `
 -AppInstanceId null `
 -ChannelBinding null `
 -Compliance null `
 -TokenLifetimeInMinutes null `
 -UserVerification null
```

- Convert the resource to JSON
```powershell
$AuthenticatorSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

