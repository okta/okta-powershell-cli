# OktaSignOnPolicyRuleAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actions** | [**OktaSignOnPolicyRuleActions**](OktaSignOnPolicyRuleActions.md) |  | [optional] 
**Conditions** | [**OktaSignOnPolicyRuleConditions**](OktaSignOnPolicyRuleConditions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OktaSignOnPolicyRuleAllOf = Initialize-Okta.PowerShellOktaSignOnPolicyRuleAllOf  -Actions null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$OktaSignOnPolicyRuleAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

