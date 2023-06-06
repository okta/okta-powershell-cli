# MultifactorEnrollmentPolicySettings
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Authenticators** | [**MultifactorEnrollmentPolicyAuthenticatorSettings[]**](MultifactorEnrollmentPolicyAuthenticatorSettings.md) |  | [optional] 
**Type** | [**MultifactorEnrollmentPolicySettingsType**](MultifactorEnrollmentPolicySettingsType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MultifactorEnrollmentPolicySettings = Initialize-PSOpenAPIToolsMultifactorEnrollmentPolicySettings  -Authenticators null `
 -Type null
```

- Convert the resource to JSON
```powershell
$MultifactorEnrollmentPolicySettings | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

