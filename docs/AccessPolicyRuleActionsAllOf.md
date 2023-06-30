# AccessPolicyRuleActionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppSignOn** | [**AccessPolicyRuleApplicationSignOn**](AccessPolicyRuleApplicationSignOn.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyRuleActionsAllOf = Initialize-Okta.PowerShellAccessPolicyRuleActionsAllOf  -AppSignOn null
```

- Convert the resource to JSON
```powershell
$AccessPolicyRuleActionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

