# AutoLoginApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**SchemeApplicationCredentials**](SchemeApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Settings** | [**AutoLoginApplicationSettings**](AutoLoginApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoLoginApplicationAllOf = Initialize-Okta.PowerShellAutoLoginApplicationAllOf  -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$AutoLoginApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

