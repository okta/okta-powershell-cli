# MultifactorEnrollmentPolicyAuthenticatorSettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enroll** | [**MultifactorEnrollmentPolicyAuthenticatorSettingsEnroll**](MultifactorEnrollmentPolicyAuthenticatorSettingsEnroll.md) |  | [optional] 
**Key** | [**MultifactorEnrollmentPolicyAuthenticatorType**](MultifactorEnrollmentPolicyAuthenticatorType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MultifactorEnrollmentPolicyAuthenticatorSettings = Initialize-Okta.PowerShellMultifactorEnrollmentPolicyAuthenticatorSettings  -Enroll null `
 -Key null
```

- Convert the resource to JSON
```powershell
$MultifactorEnrollmentPolicyAuthenticatorSettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

