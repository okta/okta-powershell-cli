# FeatureStage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | [**FeatureStageState**](FeatureStageState.md) |  | [optional] 
**Value** | [**FeatureStageValue**](FeatureStageValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FeatureStage = Initialize-Okta.PowerShellFeatureStage  -State null `
 -Value null
```

- Convert the resource to JSON
```powershell
$FeatureStage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

