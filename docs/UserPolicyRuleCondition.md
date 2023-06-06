# UserPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exclude** | **String[]** |  | [optional] 
**Inactivity** | [**InactivityPolicyRuleCondition**](InactivityPolicyRuleCondition.md) |  | [optional] 
**Include** | **String[]** |  | [optional] 
**LifecycleExpiration** | [**LifecycleExpirationPolicyRuleCondition**](LifecycleExpirationPolicyRuleCondition.md) |  | [optional] 
**PasswordExpiration** | [**PasswordExpirationPolicyRuleCondition**](PasswordExpirationPolicyRuleCondition.md) |  | [optional] 
**UserLifecycleAttribute** | [**UserLifecycleAttributePolicyRuleCondition**](UserLifecycleAttributePolicyRuleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserPolicyRuleCondition = Initialize-PSOpenAPIToolsUserPolicyRuleCondition  -Exclude null `
 -Inactivity null `
 -Include null `
 -LifecycleExpiration null `
 -PasswordExpiration null `
 -UserLifecycleAttribute null
```

- Convert the resource to JSON
```powershell
$UserPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

