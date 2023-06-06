# OktaSignOnPolicyRuleSignonSessionActions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxSessionIdleMinutes** | **Int32** |  | [optional] 
**MaxSessionLifetimeMinutes** | **Int32** |  | [optional] 
**UsePersistentCookie** | **Boolean** |  | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$OktaSignOnPolicyRuleSignonSessionActions = Initialize-PSOpenAPIToolsOktaSignOnPolicyRuleSignonSessionActions  -MaxSessionIdleMinutes null `
 -MaxSessionLifetimeMinutes null `
 -UsePersistentCookie null
```

- Convert the resource to JSON
```powershell
$OktaSignOnPolicyRuleSignonSessionActions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

