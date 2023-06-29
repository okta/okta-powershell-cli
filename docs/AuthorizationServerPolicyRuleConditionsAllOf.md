# AuthorizationServerPolicyRuleConditionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Clients** | [**ClientPolicyCondition**](ClientPolicyCondition.md) |  | [optional] 
**GrantTypes** | [**GrantTypePolicyRuleCondition**](GrantTypePolicyRuleCondition.md) |  | [optional] 
**People** | [**PolicyPeopleCondition**](PolicyPeopleCondition.md) |  | [optional] 
**Scopes** | [**OAuth2ScopesMediationPolicyRuleCondition**](OAuth2ScopesMediationPolicyRuleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthorizationServerPolicyRuleConditionsAllOf = Initialize-Okta.PowerShellAuthorizationServerPolicyRuleConditionsAllOf  -Clients null `
 -GrantTypes null `
 -People null `
 -Scopes null
```

- Convert the resource to JSON
```powershell
$AuthorizationServerPolicyRuleConditionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

