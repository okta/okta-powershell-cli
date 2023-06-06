# BehaviorRuleSettingsAnomalousIP
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxEventsUsedForEvaluation** | **Int32** |  | [optional] [default to 50]
**MinEventsNeededForEvaluation** | **Int32** |  | [optional] [default to 0]

## Examples

- Prepare the resource
```powershell
$BehaviorRuleSettingsAnomalousIP = Initialize-PSOpenAPIToolsBehaviorRuleSettingsAnomalousIP  -MaxEventsUsedForEvaluation null `
 -MinEventsNeededForEvaluation null
```

- Convert the resource to JSON
```powershell
$BehaviorRuleSettingsAnomalousIP | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

