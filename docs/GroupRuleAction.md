# GroupRuleAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssignUserToGroups** | [**GroupRuleGroupAssignment**](GroupRuleGroupAssignment.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupRuleAction = Initialize-Okta.PowerShellGroupRuleAction  -AssignUserToGroups null
```

- Convert the resource to JSON
```powershell
$GroupRuleAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

