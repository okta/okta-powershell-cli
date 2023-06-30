# BehaviorRuleSettingsAnomalousLocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxEventsUsedForEvaluation** | **Int32** |  | [optional] [default to 20]
**MinEventsNeededForEvaluation** | **Int32** |  | [optional] [default to 0]
**Granularity** | [**LocationGranularity**](LocationGranularity.md) |  | 
**RadiusKilometers** | **Int32** | Required when &#x60;granularity&#x60; is &#x60;LAT_LONG&#x60;. Radius from the provided coordinates in kilometers. | [optional] 

## Examples

- Prepare the resource
```powershell
$BehaviorRuleSettingsAnomalousLocation = Initialize-Okta.PowerShellBehaviorRuleSettingsAnomalousLocation  -MaxEventsUsedForEvaluation null `
 -MinEventsNeededForEvaluation null `
 -Granularity null `
 -RadiusKilometers null
```

- Convert the resource to JSON
```powershell
$BehaviorRuleSettingsAnomalousLocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

