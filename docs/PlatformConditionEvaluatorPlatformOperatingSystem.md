# PlatformConditionEvaluatorPlatformOperatingSystem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | **String** |  | [optional] 
**Type** | [**PolicyPlatformOperatingSystemType**](PolicyPlatformOperatingSystemType.md) |  | [optional] 
**Version** | [**PlatformConditionEvaluatorPlatformOperatingSystemVersion**](PlatformConditionEvaluatorPlatformOperatingSystemVersion.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlatformConditionEvaluatorPlatformOperatingSystem = Initialize-Okta.PowerShellPlatformConditionEvaluatorPlatformOperatingSystem  -Expression null `
 -Type null `
 -Version null
```

- Convert the resource to JSON
```powershell
$PlatformConditionEvaluatorPlatformOperatingSystem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

