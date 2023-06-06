# BehaviorRuleSettingsHistoryBased
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxEventsUsedForEvaluation** | **Int32** |  | [optional] [default to 20]
**MinEventsNeededForEvaluation** | **Int32** |  | [optional] [default to 0]

## Examples

- Prepare the resource
```powershell
$BehaviorRuleSettingsHistoryBased = Initialize-PSOpenAPIToolsBehaviorRuleSettingsHistoryBased  -MaxEventsUsedForEvaluation null `
 -MinEventsNeededForEvaluation null
```

- Convert the resource to JSON
```powershell
$BehaviorRuleSettingsHistoryBased | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

