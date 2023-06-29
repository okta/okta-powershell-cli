# DeviceAssurance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedBy** | **String** |  | [optional] [readonly] 
**CreatedDate** | **String** |  | [optional] [readonly] 
**DiskEncryptionType** | [**DeviceAssuranceDiskEncryptionType**](DeviceAssuranceDiskEncryptionType.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Jailbreak** | **Boolean** |  | [optional] 
**LastUpdatedBy** | **String** |  | [optional] [readonly] 
**LastUpdatedDate** | **String** |  | [optional] [readonly] 
**Name** | **String** | Display name of the Device Assurance Policy | [optional] 
**OsVersion** | [**VersionObject**](VersionObject.md) |  | [optional] 
**Platform** | [**Platform**](Platform.md) |  | [optional] 
**ScreenLockType** | [**DeviceAssuranceScreenLockType**](DeviceAssuranceScreenLockType.md) |  | [optional] 
**SecureHardwarePresent** | **Boolean** |  | [optional] 
**Links** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeviceAssurance = Initialize-Okta.PowerShellDeviceAssurance  -CreatedBy null `
 -CreatedDate null `
 -DiskEncryptionType null `
 -Id null `
 -Jailbreak null `
 -LastUpdatedBy null `
 -LastUpdatedDate null `
 -Name null `
 -OsVersion null `
 -Platform null `
 -ScreenLockType null `
 -SecureHardwarePresent null `
 -Links null
```

- Convert the resource to JSON
```powershell
$DeviceAssurance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

