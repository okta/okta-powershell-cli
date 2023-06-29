# GroupLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Apps** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Logo** | [**HrefObject[]**](HrefObject.md) |  | [optional] 
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Source** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Users** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupLinks = Initialize-Okta.PowerShellGroupLinks  -Apps null `
 -Logo null `
 -Self null `
 -Source null `
 -Users null
```

- Convert the resource to JSON
```powershell
$GroupLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

