# SamlApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**ApplicationCredentials**](ApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Settings** | [**SamlApplicationSettings**](SamlApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SamlApplicationAllOf = Initialize-PSOpenAPIToolsSamlApplicationAllOf  -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$SamlApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

