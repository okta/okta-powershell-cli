# PolicyRuleAuthContextCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthType** | [**PolicyRuleAuthContextType**](PolicyRuleAuthContextType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PolicyRuleAuthContextCondition = Initialize-Okta.PowerShellPolicyRuleAuthContextCondition  -AuthType null
```

- Convert the resource to JSON
```powershell
$PolicyRuleAuthContextCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

