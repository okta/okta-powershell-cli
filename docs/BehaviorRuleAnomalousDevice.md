# BehaviorRuleAnomalousDevice
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**Type** | [**BehaviorRuleType**](BehaviorRuleType.md) |  | 
**Link** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 
**Settings** | [**BehaviorRuleSettingsAnomalousDevice**](BehaviorRuleSettingsAnomalousDevice.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BehaviorRuleAnomalousDevice = Initialize-Okta.PowerShellBehaviorRuleAnomalousDevice  -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Status null `
 -Type null `
 -Link null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$BehaviorRuleAnomalousDevice | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

