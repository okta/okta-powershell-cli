# BehaviorRuleSettingsAnomalousLocationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Granularity** | [**LocationGranularity**](LocationGranularity.md) |  | 
**RadiusKilometers** | **Int32** | Required when &#x60;granularity&#x60; is &#x60;LAT_LONG&#x60;. Radius from the provided coordinates in kilometers. | [optional] 

## Examples

- Prepare the resource
```powershell
$BehaviorRuleSettingsAnomalousLocationAllOf = Initialize-PSOpenAPIToolsBehaviorRuleSettingsAnomalousLocationAllOf  -Granularity null `
 -RadiusKilometers null
```

- Convert the resource to JSON
```powershell
$BehaviorRuleSettingsAnomalousLocationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

