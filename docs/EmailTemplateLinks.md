# EmailTemplateLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Settings** | [**HrefObject**](HrefObject.md) |  | [optional] 
**DefaultContent** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Customizations** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Test** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailTemplateLinks = Initialize-Okta.PowerShellEmailTemplateLinks  -Self null `
 -Settings null `
 -DefaultContent null `
 -Customizations null `
 -Test null
```

- Convert the resource to JSON
```powershell
$EmailTemplateLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

