# GroupSchemaBaseProperties
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | [**GroupSchemaAttribute**](GroupSchemaAttribute.md) |  | [optional] 
**Name** | [**GroupSchemaAttribute**](GroupSchemaAttribute.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupSchemaBaseProperties = Initialize-Okta.PowerShellGroupSchemaBaseProperties  -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GroupSchemaBaseProperties | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

