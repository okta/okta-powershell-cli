# ProtocolAlgorithmTypeSignature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Algorithm** | **String** |  | [optional] 
**Scope** | [**ProtocolAlgorithmTypeSignatureScope**](ProtocolAlgorithmTypeSignatureScope.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProtocolAlgorithmTypeSignature = Initialize-Okta.PowerShellProtocolAlgorithmTypeSignature  -Algorithm null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$ProtocolAlgorithmTypeSignature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

