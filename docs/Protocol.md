# Protocol
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Algorithms** | [**ProtocolAlgorithms**](ProtocolAlgorithms.md) |  | [optional] 
**Credentials** | [**IdentityProviderCredentials**](IdentityProviderCredentials.md) |  | [optional] 
**Endpoints** | [**ProtocolEndpoints**](ProtocolEndpoints.md) |  | [optional] 
**Issuer** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**RelayState** | [**ProtocolRelayState**](ProtocolRelayState.md) |  | [optional] 
**Scopes** | **String[]** |  | [optional] 
**Settings** | [**ProtocolSettings**](ProtocolSettings.md) |  | [optional] 
**Type** | [**ProtocolType**](ProtocolType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Protocol = Initialize-PSOpenAPIToolsProtocol  -Algorithms null `
 -Credentials null `
 -Endpoints null `
 -Issuer null `
 -RelayState null `
 -Scopes null `
 -Settings null `
 -Type null
```

- Convert the resource to JSON
```powershell
$Protocol | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

