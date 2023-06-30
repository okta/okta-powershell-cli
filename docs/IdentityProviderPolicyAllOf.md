# IdentityProviderPolicyAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountLink** | [**PolicyAccountLink**](PolicyAccountLink.md) |  | [optional] 
**Conditions** | [**PolicyRuleConditions**](PolicyRuleConditions.md) |  | [optional] 
**MaxClockSkew** | **Int32** |  | [optional] 
**Provisioning** | [**Provisioning**](Provisioning.md) |  | [optional] 
**Subject** | [**PolicySubject**](PolicySubject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityProviderPolicyAllOf = Initialize-Okta.PowerShellIdentityProviderPolicyAllOf  -AccountLink null `
 -Conditions null `
 -MaxClockSkew null `
 -Provisioning null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$IdentityProviderPolicyAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

