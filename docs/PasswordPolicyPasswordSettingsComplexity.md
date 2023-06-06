# PasswordPolicyPasswordSettingsComplexity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dictionary** | [**PasswordDictionary**](PasswordDictionary.md) |  | [optional] 
**ExcludeAttributes** | **String[]** |  | [optional] 
**ExcludeUsername** | **Boolean** |  | [optional] [default to $true]
**MinLength** | **Int32** |  | [optional] 
**MinLowerCase** | **Int32** |  | [optional] 
**MinNumber** | **Int32** |  | [optional] 
**MinSymbol** | **Int32** |  | [optional] 
**MinUpperCase** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyPasswordSettingsComplexity = Initialize-PSOpenAPIToolsPasswordPolicyPasswordSettingsComplexity  -Dictionary null `
 -ExcludeAttributes null `
 -ExcludeUsername null `
 -MinLength null `
 -MinLowerCase null `
 -MinNumber null `
 -MinSymbol null `
 -MinUpperCase null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyPasswordSettingsComplexity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

