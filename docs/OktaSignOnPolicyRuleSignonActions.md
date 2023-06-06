# OktaSignOnPolicyRuleSignonActions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**PolicyAccess**](PolicyAccess.md) |  | [optional] 
**FactorLifetime** | **Int32** |  | [optional] 
**FactorPromptMode** | [**OktaSignOnPolicyFactorPromptMode**](OktaSignOnPolicyFactorPromptMode.md) |  | [optional] 
**RememberDeviceByDefault** | **Boolean** |  | [optional] [default to $false]
**RequireFactor** | **Boolean** |  | [optional] [default to $false]
**Session** | [**OktaSignOnPolicyRuleSignonSessionActions**](OktaSignOnPolicyRuleSignonSessionActions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OktaSignOnPolicyRuleSignonActions = Initialize-PSOpenAPIToolsOktaSignOnPolicyRuleSignonActions  -Access null `
 -FactorLifetime null `
 -FactorPromptMode null `
 -RememberDeviceByDefault null `
 -RequireFactor null `
 -Session null
```

- Convert the resource to JSON
```powershell
$OktaSignOnPolicyRuleSignonActions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

