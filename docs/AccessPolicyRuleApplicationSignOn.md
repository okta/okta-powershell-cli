# AccessPolicyRuleApplicationSignOn
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | **String** |  | [optional] 
**VerificationMethod** | [**VerificationMethod**](VerificationMethod.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessPolicyRuleApplicationSignOn = Initialize-Okta.PowerShellAccessPolicyRuleApplicationSignOn  -Access null `
 -VerificationMethod null
```

- Convert the resource to JSON
```powershell
$AccessPolicyRuleApplicationSignOn | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

