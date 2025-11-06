# InlineHookOAuthPrivateKeyJwtConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HookKeyId** | **String** |  | [optional] 
**AuthType** | **String** |  | [optional] 
**ClientId** | **String** |  | [optional] 
**Scope** | **String** |  | [optional] 
**TokenUrl** | **String** |  | [optional] 
**AuthScheme** | [**InlineHookChannelConfigAuthScheme**](InlineHookChannelConfigAuthScheme.md) |  | [optional] 
**Headers** | [**InlineHookChannelConfigHeaders[]**](InlineHookChannelConfigHeaders.md) |  | [optional] 
**Method** | **String** |  | [optional] 
**Uri** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineHookOAuthPrivateKeyJwtConfig = Initialize-Okta.PowerShellInlineHookOAuthPrivateKeyJwtConfig  -HookKeyId null `
 -AuthType null `
 -ClientId null `
 -Scope null `
 -TokenUrl null `
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

