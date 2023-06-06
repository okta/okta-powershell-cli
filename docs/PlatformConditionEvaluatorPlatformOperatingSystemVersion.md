# PlatformConditionEvaluatorPlatformOperatingSystemVersion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchType** | [**PlatformConditionOperatingSystemVersionMatchType**](PlatformConditionOperatingSystemVersionMatchType.md) |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlatformConditionEvaluatorPlatformOperatingSystemVersion = Initialize-PSOpenAPIToolsPlatformConditionEvaluatorPlatformOperatingSystemVersion  -MatchType null `
 -Value null
```

- Convert the resource to JSON
```powershell
$PlatformConditionEvaluatorPlatformOperatingSystemVersion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

