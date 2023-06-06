# ProtocolEndpoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Binding** | [**ProtocolEndpointBinding**](ProtocolEndpointBinding.md) |  | [optional] 
**Destination** | **String** |  | [optional] 
**Type** | [**ProtocolEndpointType**](ProtocolEndpointType.md) |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtocolEndpoint = Initialize-PSOpenAPIToolsProtocolEndpoint  -Binding null `
 -Destination null `
 -Type null `
 -Url null
```

- Convert the resource to JSON
```powershell
$ProtocolEndpoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

