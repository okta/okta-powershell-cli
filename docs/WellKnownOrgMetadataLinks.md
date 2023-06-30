# WellKnownOrgMetadataLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Alternate** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Organization** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WellKnownOrgMetadataLinks = Initialize-Okta.PowerShellWellKnownOrgMetadataLinks  -Alternate null `
 -Organization null
```

- Convert the resource to JSON
```powershell
$WellKnownOrgMetadataLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

