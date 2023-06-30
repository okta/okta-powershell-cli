# SecurePasswordStoreApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**SchemeApplicationCredentials**](SchemeApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] [default to "template_sps"]
**Settings** | [**SecurePasswordStoreApplicationSettings**](SecurePasswordStoreApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurePasswordStoreApplicationAllOf = Initialize-Okta.PowerShellSecurePasswordStoreApplicationAllOf  -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$SecurePasswordStoreApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

