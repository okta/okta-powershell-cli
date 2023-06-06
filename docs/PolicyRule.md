# PolicyRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Priority** | **Int32** |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**System** | **Boolean** |  | [optional] [default to $false]
**Type** | [**PolicyRuleType**](PolicyRuleType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PolicyRule = Initialize-PSOpenAPIToolsPolicyRule  -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Priority null `
 -Status null `
 -System null `
 -Type null
```

- Convert the resource to JSON
```powershell
$PolicyRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

