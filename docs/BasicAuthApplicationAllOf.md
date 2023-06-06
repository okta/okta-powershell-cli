# BasicAuthApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**SchemeApplicationCredentials**](SchemeApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] [default to "template_basic_auth"]
**Settings** | [**BasicApplicationSettings**](BasicApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BasicAuthApplicationAllOf = Initialize-PSOpenAPIToolsBasicAuthApplicationAllOf  -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$BasicAuthApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

