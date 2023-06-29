# EventHookChannel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**EventHookChannelConfig**](EventHookChannelConfig.md) |  | [optional] 
**Type** | [**EventHookChannelType**](EventHookChannelType.md) |  | [optional] 
**Version** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EventHookChannel = Initialize-Okta.PowerShellEventHookChannel  -Config null `
 -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$EventHookChannel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

