# EmailPreviewLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**ContentSource** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Template** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Test** | [**HrefObject**](HrefObject.md) |  | [optional] 
**DefaultContent** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailPreviewLinks = Initialize-Okta.PowerShellEmailPreviewLinks  -Self null `
 -ContentSource null `
 -Template null `
 -Test null `
 -DefaultContent null
```

- Convert the resource to JSON
```powershell
$EmailPreviewLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

