# DeviceProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** | Display name of the device | 
**Imei** | **String** | International Mobile Equipment Identity of the device | [optional] 
**Manufacturer** | **String** | Name of the manufacturer of the device | [optional] 
**Meid** | **String** | Mobile equipment identifier of the device | [optional] 
**Model** | **String** | Model of the device | [optional] 
**OsVersion** | **String** | Version of the device OS | [optional] 
**Platform** | [**DevicePlatform**](DevicePlatform.md) |  | 
**Registered** | **Boolean** | Indicates if the device is registered at Okta | 
**SecureHardwarePresent** | **Boolean** | Indicates if the device constains a secure hardware functionality | [optional] 
**SerialNumber** | **String** | Serial number of the device | [optional] 
**Sid** | **String** | Windows Security identifier of the device | [optional] 
**TpmPublicKeyHash** | **String** | Windows Trsted Platform Module hash value | [optional] 
**Udid** | **String** | macOS Unique Device identifier of the device | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceProfile = Initialize-Okta.PowerShellDeviceProfile  -DisplayName null `
 -Imei null `
 -Manufacturer null `
 -Meid null `
 -Model null `
 -OsVersion null `
 -Platform null `
 -Registered null `
 -SecureHardwarePresent null `
 -SerialNumber null `
 -Sid null `
 -TpmPublicKeyHash null `
 -Udid null
```

- Convert the resource to JSON
```powershell
$DeviceProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

