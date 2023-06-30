# InlineHookChannel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**InlineHookChannelType**](InlineHookChannelType.md) |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InlineHookChannel = Initialize-Okta.PowerShellInlineHookChannel  -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$InlineHookChannel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

