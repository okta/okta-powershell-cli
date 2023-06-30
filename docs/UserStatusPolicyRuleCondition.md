# UserStatusPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | [**PolicyUserStatus**](PolicyUserStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserStatusPolicyRuleCondition = Initialize-Okta.PowerShellUserStatusPolicyRuleCondition  -Value null
```

- Convert the resource to JSON
```powershell
$UserStatusPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

