# UserLifecycleAttributePolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeName** | **String** |  | [optional] 
**MatchingValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserLifecycleAttributePolicyRuleCondition = Initialize-Okta.PowerShellUserLifecycleAttributePolicyRuleCondition  -AttributeName null `
 -MatchingValue null
```

- Convert the resource to JSON
```powershell
$UserLifecycleAttributePolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

