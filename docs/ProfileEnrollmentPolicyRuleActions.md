# ProfileEnrollmentPolicyRuleActions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enroll** | [**PolicyRuleActionsEnroll**](PolicyRuleActionsEnroll.md) |  | [optional] 
**Idp** | [**IdpPolicyRuleAction**](IdpPolicyRuleAction.md) |  | [optional] 
**PasswordChange** | [**PasswordPolicyRuleAction**](PasswordPolicyRuleAction.md) |  | [optional] 
**SelfServicePasswordReset** | [**PasswordPolicyRuleAction**](PasswordPolicyRuleAction.md) |  | [optional] 
**SelfServiceUnlock** | [**PasswordPolicyRuleAction**](PasswordPolicyRuleAction.md) |  | [optional] 
**Signon** | [**OktaSignOnPolicyRuleSignonActions**](OktaSignOnPolicyRuleSignonActions.md) |  | [optional] 
**ProfileEnrollment** | [**ProfileEnrollmentPolicyRuleAction**](ProfileEnrollmentPolicyRuleAction.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileEnrollmentPolicyRuleActions = Initialize-Okta.PowerShellProfileEnrollmentPolicyRuleActions  -Enroll null `
 -Idp null `
 -PasswordChange null `
 -SelfServicePasswordReset null `
 -SelfServiceUnlock null `
 -Signon null `
 -ProfileEnrollment null
```

- Convert the resource to JSON
```powershell
$ProfileEnrollmentPolicyRuleActions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

