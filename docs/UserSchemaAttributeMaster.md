# UserSchemaAttributeMaster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Priority** | [**UserSchemaAttributeMasterPriority[]**](UserSchemaAttributeMasterPriority.md) |  | [optional] 
**Type** | [**UserSchemaAttributeMasterType**](UserSchemaAttributeMasterType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserSchemaAttributeMaster = Initialize-Okta.PowerShellUserSchemaAttributeMaster  -Priority null `
 -Type null
```

- Convert the resource to JSON
```powershell
$UserSchemaAttributeMaster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

