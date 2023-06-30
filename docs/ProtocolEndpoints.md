# ProtocolEndpoints
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Acs** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**Authorization** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**Jwks** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**Metadata** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**Slo** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**Sso** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**Token** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 
**UserInfo** | [**ProtocolEndpoint**](ProtocolEndpoint.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtocolEndpoints = Initialize-Okta.PowerShellProtocolEndpoints  -Acs null `
 -Authorization null `
 -Jwks null `
 -Metadata null `
 -Slo null `
 -Sso null `
 -Token null `
 -UserInfo null
```

- Convert the resource to JSON
```powershell
$ProtocolEndpoints | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

