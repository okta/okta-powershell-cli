# PasswordPolicyRuleConditionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Network** | [**PolicyNetworkCondition**](PolicyNetworkCondition.md) |  | [optional] 
**People** | [**PolicyPeopleCondition**](PolicyPeopleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyRuleConditionsAllOf = Initialize-PSOpenAPIToolsPasswordPolicyRuleConditionsAllOf  -Network null `
 -People null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyRuleConditionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

