# PlatformConditionEvaluatorPlatform
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Os** | [**PlatformConditionEvaluatorPlatformOperatingSystem**](PlatformConditionEvaluatorPlatformOperatingSystem.md) |  | [optional] 
**Type** | [**PolicyPlatformType**](PolicyPlatformType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlatformConditionEvaluatorPlatform = Initialize-Okta.PowerShellPlatformConditionEvaluatorPlatform  -Os null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PlatformConditionEvaluatorPlatform | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

