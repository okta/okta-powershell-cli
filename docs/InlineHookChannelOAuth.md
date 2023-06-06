# InlineHookChannelOAuth
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**InlineHookChannelType**](InlineHookChannelType.md) |  | [optional] 
**Version** | **String** |  | [optional] 
**Config** | [**InlineHookOAuthChannelConfig**](InlineHookOAuthChannelConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineHookChannelOAuth = Initialize-PSOpenAPIToolsInlineHookChannelOAuth  -Type null `
 -Version null `
 -Config null
```

- Convert the resource to JSON
```powershell
$InlineHookChannelOAuth | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

