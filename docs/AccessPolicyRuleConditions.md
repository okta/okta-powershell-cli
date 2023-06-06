# AccessPolicyRuleConditions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**App** | [**AppAndInstancePolicyRuleCondition**](AppAndInstancePolicyRuleCondition.md) |  | [optional] 
**Apps** | [**AppInstancePolicyRuleCondition**](AppInstancePolicyRuleCondition.md) |  | [optional] 
**AuthContext** | [**PolicyRuleAuthContextCondition**](PolicyRuleAuthContextCondition.md) |  | [optional] 
**AuthProvider** | [**PasswordPolicyAuthenticationProviderCondition**](PasswordPolicyAuthenticationProviderCondition.md) |  | [optional] 
**BeforeScheduledAction** | [**BeforeScheduledActionPolicyRuleCondition**](BeforeScheduledActionPolicyRuleCondition.md) |  | [optional] 
**Clients** | [**ClientPolicyCondition**](ClientPolicyCondition.md) |  | [optional] 
**Context** | [**ContextPolicyRuleCondition**](ContextPolicyRuleCondition.md) |  | [optional] 
**Device** | [**DeviceAccessPolicyRuleCondition**](DeviceAccessPolicyRuleCondition.md) |  | [optional] 
**GrantTypes** | [**GrantTypePolicyRuleCondition**](GrantTypePolicyRuleCondition.md) |  | [optional] 
**Groups** | [**GroupPolicyRuleCondition**](GroupPolicyRuleCondition.md) |  | [optional] 
**IdentityProvider** | [**IdentityProviderPolicyRuleCondition**](IdentityProviderPolicyRuleCondition.md) |  | [optional] 
**MdmEnrollment** | [**MDMEnrollmentPolicyRuleCondition**](MDMEnrollmentPolicyRuleCondition.md) |  | [optional] 
**Network** | [**PolicyNetworkCondition**](PolicyNetworkCondition.md) |  | [optional] 
**People** | [**PolicyPeopleCondition**](PolicyPeopleCondition.md) |  | [optional] 
**Platform** | [**PlatformPolicyRuleCondition**](PlatformPolicyRuleCondition.md) |  | [optional] 
**Risk** | [**RiskPolicyRuleCondition**](RiskPolicyRuleCondition.md) |  | [optional] 
**RiskScore** | [**RiskScorePolicyRuleCondition**](RiskScorePolicyRuleCondition.md) |  | [optional] 
**Scopes** | [**OAuth2ScopesMediationPolicyRuleCondition**](OAuth2ScopesMediationPolicyRuleCondition.md) |  | [optional] 
**UserIdentifier** | [**UserIdentifierPolicyRuleCondition**](UserIdentifierPolicyRuleCondition.md) |  | [optional] 
**Users** | [**UserPolicyRuleCondition**](UserPolicyRuleCondition.md) |  | [optional] 
**UserStatus** | [**UserStatusPolicyRuleCondition**](UserStatusPolicyRuleCondition.md) |  | [optional] 
**ElCondition** | [**AccessPolicyRuleCustomCondition**](AccessPolicyRuleCustomCondition.md) |  | [optional] 
**UserType** | [**UserTypeCondition**](UserTypeCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyRuleConditions = Initialize-PSOpenAPIToolsAccessPolicyRuleConditions  -App null `
 -Apps null `
 -AuthContext null `
 -AuthProvider null `
 -BeforeScheduledAction null `
 -Clients null `
 -Context null `
 -Device null `
 -GrantTypes null `
 -Groups null `
 -IdentityProvider null `
 -MdmEnrollment null `
 -Network null `
 -People null `
 -Platform null `
 -Risk null `
 -RiskScore null `
 -Scopes null `
 -UserIdentifier null `
 -Users null `
 -UserStatus null `
 -ElCondition null `
 -UserType null
```

- Convert the resource to JSON
```powershell
$AccessPolicyRuleConditions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

