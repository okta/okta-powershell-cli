# PasswordPolicyAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**PasswordPolicyConditions**](PasswordPolicyConditions.md) |  | [optional] 
**Settings** | [**PasswordPolicySettings**](PasswordPolicySettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyAllOf = Initialize-PSOpenAPIToolsPasswordPolicyAllOf  -Conditions null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

