# TokenAuthorizationServerPolicyRuleAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessTokenLifetimeMinutes** | **Int32** |  | [optional] 
**InlineHook** | [**TokenAuthorizationServerPolicyRuleActionInlineHook**](TokenAuthorizationServerPolicyRuleActionInlineHook.md) |  | [optional] 
**RefreshTokenLifetimeMinutes** | **Int32** |  | [optional] 
**RefreshTokenWindowMinutes** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TokenAuthorizationServerPolicyRuleAction = Initialize-Okta.PowerShellTokenAuthorizationServerPolicyRuleAction  -AccessTokenLifetimeMinutes null `
 -InlineHook null `
 -RefreshTokenLifetimeMinutes null `
 -RefreshTokenWindowMinutes null
```

- Convert the resource to JSON
```powershell
$TokenAuthorizationServerPolicyRuleAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

