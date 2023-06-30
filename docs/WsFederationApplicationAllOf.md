# WsFederationApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] [default to "template_wsfed"]
**Settings** | [**WsFederationApplicationSettings**](WsFederationApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WsFederationApplicationAllOf = Initialize-Okta.PowerShellWsFederationApplicationAllOf  -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$WsFederationApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

