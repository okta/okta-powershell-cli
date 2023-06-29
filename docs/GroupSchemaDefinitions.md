# GroupSchemaDefinitions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Base** | [**GroupSchemaBase**](GroupSchemaBase.md) |  | [optional] 
**Custom** | [**GroupSchemaCustom**](GroupSchemaCustom.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupSchemaDefinitions = Initialize-Okta.PowerShellGroupSchemaDefinitions  -Base null `
 -Custom null
```

- Convert the resource to JSON
```powershell
$GroupSchemaDefinitions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

