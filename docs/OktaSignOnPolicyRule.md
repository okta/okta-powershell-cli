# OktaSignOnPolicyRule
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
**Actions** | [**OktaSignOnPolicyRuleActions**](OktaSignOnPolicyRuleActions.md) |  | [optional] 
**Conditions** | [**OktaSignOnPolicyRuleConditions**](OktaSignOnPolicyRuleConditions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OktaSignOnPolicyRule = Initialize-Okta.PowerShellOktaSignOnPolicyRule  -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Priority null `
 -Status null `
 -System null `
 -Type null `
 -Actions null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$OktaSignOnPolicyRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

