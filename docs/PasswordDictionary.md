# PasswordDictionary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Common** | [**PasswordDictionaryCommon**](PasswordDictionaryCommon.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordDictionary = Initialize-Okta.PowerShellPasswordDictionary  -Common null
```

- Convert the resource to JSON
```powershell
$PasswordDictionary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

