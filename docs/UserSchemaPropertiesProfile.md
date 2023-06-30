# UserSchemaPropertiesProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllOf** | [**UserSchemaPropertiesProfileItem[]**](UserSchemaPropertiesProfileItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSchemaPropertiesProfile = Initialize-Okta.PowerShellUserSchemaPropertiesProfile  -AllOf null
```

- Convert the resource to JSON
```powershell
$UserSchemaPropertiesProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

