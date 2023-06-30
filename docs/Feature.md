# Feature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Stage** | [**FeatureStage**](FeatureStage.md) |  | [optional] 
**Status** | [**EnabledStatus**](EnabledStatus.md) |  | [optional] 
**Type** | [**FeatureType**](FeatureType.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Feature = Initialize-Okta.PowerShellFeature  -Description null `
 -Id null `
 -Name null `
 -Stage null `
 -Status null `
 -Type null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Feature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

