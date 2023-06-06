# PasswordPolicyConditionsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthProvider** | [**PasswordPolicyAuthenticationProviderCondition**](PasswordPolicyAuthenticationProviderCondition.md) |  | [optional] 
**People** | [**PolicyPeopleCondition**](PolicyPeopleCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyConditionsAllOf = Initialize-PSOpenAPIToolsPasswordPolicyConditionsAllOf  -AuthProvider null `
 -People null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyConditionsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

