# CreateResourceSetRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | Description of the resource set | [optional] 
**Label** | **String** | Unique label for the resource set | [optional] 
**Resources** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateResourceSetRequest = Initialize-Okta.PowerShellCreateResourceSetRequest  -Description null `
 -Label null `
 -Resources null
```

- Convert the resource to JSON
```powershell
$CreateResourceSetRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

