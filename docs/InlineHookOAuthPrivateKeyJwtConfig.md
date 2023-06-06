# InlineHookOAuthPrivateKeyJwtConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HookKeyId** | **String** |  | [optional] 
**AuthScheme** | [**InlineHookChannelConfigAuthScheme**](InlineHookChannelConfigAuthScheme.md) |  | [optional] 
**Headers** | [**InlineHookChannelConfigHeaders[]**](InlineHookChannelConfigHeaders.md) |  | [optional] 
**Method** | **String** |  | [optional] 
**Uri** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineHookOAuthPrivateKeyJwtConfig = Initialize-PSOpenAPIToolsInlineHookOAuthPrivateKeyJwtConfig  -HookKeyId null `
 -AuthScheme null `
 -Headers null `
 -Method null `
 -Uri null
```

- Convert the resource to JSON
```powershell
$InlineHookOAuthPrivateKeyJwtConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

