# UserIdentifierPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** |  | [optional] 
**Patterns** | [**UserIdentifierConditionEvaluatorPattern[]**](UserIdentifierConditionEvaluatorPattern.md) |  | [optional] 
**Type** | [**UserIdentifierType**](UserIdentifierType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserIdentifierPolicyRuleCondition = Initialize-Okta.PowerShellUserIdentifierPolicyRuleCondition  -Attribute null `
 -Patterns null `
 -Type null
```

- Convert the resource to JSON
```powershell
$UserIdentifierPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

