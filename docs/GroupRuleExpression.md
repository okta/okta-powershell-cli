# GroupRuleExpression
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupRuleExpression = Initialize-Okta.PowerShellGroupRuleExpression  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$GroupRuleExpression | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

