# DeviceLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Users** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Activate** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Deactivate** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Suspend** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Unsuspend** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceLinks = Initialize-Okta.PowerShellDeviceLinks  -Self null `
 -Users null `
 -Activate null `
 -Deactivate null `
 -Suspend null `
 -Unsuspend null
```

- Convert the resource to JSON
```powershell
$DeviceLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

