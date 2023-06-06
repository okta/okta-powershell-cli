# PasswordPolicyAuthenticationProviderCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Include** | **String[]** |  | [optional] 
**Provider** | [**PasswordPolicyAuthenticationProviderType**](PasswordPolicyAuthenticationProviderType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyAuthenticationProviderCondition = Initialize-PSOpenAPIToolsPasswordPolicyAuthenticationProviderCondition  -Include null `
 -Provider null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyAuthenticationProviderCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

