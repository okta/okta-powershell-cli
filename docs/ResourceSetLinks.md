# ResourceSetLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Resources** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Bindings** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetLinks = Initialize-Okta.PowerShellResourceSetLinks  -Self null `
 -Resources null `
 -Bindings null
```

- Convert the resource to JSON
```powershell
$ResourceSetLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

