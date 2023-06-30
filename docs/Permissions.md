# Permissions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permissions** | [**Permission[]**](Permission.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Permissions = Initialize-Okta.PowerShellPermissions  -Permissions null
```

- Convert the resource to JSON
```powershell
$Permissions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

