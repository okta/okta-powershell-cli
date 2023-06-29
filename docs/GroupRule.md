# GroupRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**GroupRuleAction**](GroupRuleAction.md) |  | [optional] 
**Conditions** | [**GroupRuleConditions**](GroupRuleConditions.md) |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Status** | [**GroupRuleStatus**](GroupRuleStatus.md) |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupRule = Initialize-Okta.PowerShellGroupRule  -Actions null `
 -Conditions null `
 -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Status null `
 -Type null
```

- Convert the resource to JSON
```powershell
$GroupRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

