# InlineHookChannelHttp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**InlineHookChannelType**](InlineHookChannelType.md) |  | [optional] 
**Version** | **String** |  | [optional] 
**Config** | [**InlineHookChannelConfig**](InlineHookChannelConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineHookChannelHttp = Initialize-Okta.PowerShellInlineHookChannelHttp  -Type null `
 -Version null `
 -Config null
```

- Convert the resource to JSON
```powershell
$InlineHookChannelHttp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

