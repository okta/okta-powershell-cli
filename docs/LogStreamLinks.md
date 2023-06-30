# LogStreamLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Activate** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Deactivate** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogStreamLinks = Initialize-Okta.PowerShellLogStreamLinks  -Self null `
 -Activate null `
 -Deactivate null
```

- Convert the resource to JSON
```powershell
$LogStreamLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

