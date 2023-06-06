# BeforeScheduledActionPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Duration** | [**Duration**](Duration.md) |  | [optional] 
**LifecycleAction** | [**ScheduledUserLifecycleAction**](ScheduledUserLifecycleAction.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BeforeScheduledActionPolicyRuleCondition = Initialize-PSOpenAPIToolsBeforeScheduledActionPolicyRuleCondition  -Duration null `
 -LifecycleAction null
```

- Convert the resource to JSON
```powershell
$BeforeScheduledActionPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

