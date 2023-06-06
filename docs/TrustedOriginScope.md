# TrustedOriginScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowedOktaApps** | [**IframeEmbedScopeAllowedApps[]**](IframeEmbedScopeAllowedApps.md) |  | [optional] 
**Type** | [**TrustedOriginScopeType**](TrustedOriginScopeType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TrustedOriginScope = Initialize-PSOpenAPIToolsTrustedOriginScope  -AllowedOktaApps null `
 -Type null
```

- Convert the resource to JSON
```powershell
$TrustedOriginScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

