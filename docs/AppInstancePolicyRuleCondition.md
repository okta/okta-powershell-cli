# AppInstancePolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exclude** | **String[]** |  | [optional] 
**Include** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppInstancePolicyRuleCondition = Initialize-PSOpenAPIToolsAppInstancePolicyRuleCondition  -Exclude null `
 -Include null
```

- Convert the resource to JSON
```powershell
$AppInstancePolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

