# VerificationMethod
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Constraints** | [**AccessPolicyConstraints[]**](AccessPolicyConstraints.md) |  | [optional] 
**FactorMode** | **String** |  | [optional] 
**ReauthenticateIn** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VerificationMethod = Initialize-PSOpenAPIToolsVerificationMethod  -Constraints null `
 -FactorMode null `
 -ReauthenticateIn null `
 -Type null
```

- Convert the resource to JSON
```powershell
$VerificationMethod | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

