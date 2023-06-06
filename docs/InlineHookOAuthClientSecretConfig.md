# InlineHookOAuthClientSecretConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientSecret** | **String** |  | [optional] 
**AuthScheme** | [**InlineHookChannelConfigAuthScheme**](InlineHookChannelConfigAuthScheme.md) |  | [optional] 
**Headers** | [**InlineHookChannelConfigHeaders[]**](InlineHookChannelConfigHeaders.md) |  | [optional] 
**Method** | **String** |  | [optional] 
**Uri** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineHookOAuthClientSecretConfig = Initialize-PSOpenAPIToolsInlineHookOAuthClientSecretConfig  -ClientSecret null `
 -AuthScheme null `
 -Headers null `
 -Method null `
 -Uri null
```

- Convert the resource to JSON
```powershell
$InlineHookOAuthClientSecretConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

