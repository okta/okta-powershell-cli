# UserSchemaDefinitions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Base** | [**UserSchemaBase**](UserSchemaBase.md) |  | [optional] 
**Custom** | [**UserSchemaPublic**](UserSchemaPublic.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSchemaDefinitions = Initialize-Okta.PowerShellUserSchemaDefinitions  -Base null `
 -Custom null
```

- Convert the resource to JSON
```powershell
$UserSchemaDefinitions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

