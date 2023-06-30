# ProtocolAlgorithms
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Request** | [**ProtocolAlgorithmType**](ProtocolAlgorithmType.md) |  | [optional] 
**Response** | [**ProtocolAlgorithmType**](ProtocolAlgorithmType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtocolAlgorithms = Initialize-Okta.PowerShellProtocolAlgorithms  -Request null `
 -Response null
```

- Convert the resource to JSON
```powershell
$ProtocolAlgorithms | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

