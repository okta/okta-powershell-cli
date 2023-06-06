# IdentityProviderPolicyRuleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdpIds** | **String[]** |  | [optional] 
**Provider** | [**IdentityProviderPolicyProvider**](IdentityProviderPolicyProvider.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderPolicyRuleCondition = Initialize-PSOpenAPIToolsIdentityProviderPolicyRuleCondition  -IdpIds null `
 -Provider null
```

- Convert the resource to JSON
```powershell
$IdentityProviderPolicyRuleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

