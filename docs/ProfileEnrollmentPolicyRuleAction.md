# ProfileEnrollmentPolicyRuleAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | **String** |  | [optional] 
**ActivationRequirements** | [**ProfileEnrollmentPolicyRuleActivationRequirement**](ProfileEnrollmentPolicyRuleActivationRequirement.md) |  | [optional] 
**PreRegistrationInlineHooks** | [**PreRegistrationInlineHook[]**](PreRegistrationInlineHook.md) |  | [optional] 
**ProfileAttributes** | [**ProfileEnrollmentPolicyRuleProfileAttribute[]**](ProfileEnrollmentPolicyRuleProfileAttribute.md) |  | [optional] 
**TargetGroupIds** | **String[]** |  | [optional] 
**UnknownUserAction** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileEnrollmentPolicyRuleAction = Initialize-Okta.PowerShellProfileEnrollmentPolicyRuleAction  -Access null `
 -ActivationRequirements null `
 -PreRegistrationInlineHooks null `
 -ProfileAttributes null `
 -TargetGroupIds null `
 -UnknownUserAction null
```

- Convert the resource to JSON
```powershell
$ProfileEnrollmentPolicyRuleAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

