# OktaSignOnPolicyRuleConditionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthContext** | [**PolicyRuleAuthContextCondition**](PolicyRuleAuthContextCondition.md) |  | [optional] 
**Network** | [**PolicyNetworkCondition**](PolicyNetworkCondition.md) |  | [optional] 
**People** | [**PolicyPeopleCondition**](PolicyPeopleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OktaSignOnPolicyRuleConditionsAllOf = Initialize-Okta.PowerShellOktaSignOnPolicyRuleConditionsAllOf  -AuthContext null `
 -Network null `
 -People null
```

- Convert the resource to JSON
```powershell
$OktaSignOnPolicyRuleConditionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

