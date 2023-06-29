# EventHookChannelConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthScheme** | [**EventHookChannelConfigAuthScheme**](EventHookChannelConfigAuthScheme.md) |  | [optional] 
**Headers** | [**EventHookChannelConfigHeader[]**](EventHookChannelConfigHeader.md) |  | [optional] 
**Uri** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EventHookChannelConfig = Initialize-Okta.PowerShellEventHookChannelConfig  -AuthScheme null `
 -Headers null `
 -Uri null
```

- Convert the resource to JSON
```powershell
$EventHookChannelConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

