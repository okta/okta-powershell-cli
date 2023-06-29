# Device
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the device was created | [optional] [readonly] 
**Id** | **String** | Unique key for the device | [optional] [readonly] 
**LastUpdated** | **System.DateTime** | Timestamp when the device was last updated | [optional] [readonly] 
**VarProfile** | [**DeviceProfile**](DeviceProfile.md) |  | [optional] 
**ResourceAlternateId** | **String** |  | [optional] [readonly] 
**ResourceDisplayName** | [**DeviceDisplayName**](DeviceDisplayName.md) |  | [optional] 
**ResourceId** | **String** | Alternate key for the &#x60;id&#x60; | [optional] [readonly] 
**ResourceType** | **String** |  | [optional] [readonly] [default to "UDDevice"]
**Status** | [**DeviceStatus**](DeviceStatus.md) |  | [optional] 
**Links** | [**DeviceLinks**](DeviceLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Device = Initialize-Okta.PowerShellDevice  -Created null `
 -Id null `
 -LastUpdated null `
 -VarProfile null `
 -ResourceAlternateId null `
 -ResourceDisplayName null `
 -ResourceId null `
 -ResourceType null `
 -Status null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Device | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

