# EmailCustomizationAllOfLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Template** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Preview** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Test** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailCustomizationAllOfLinks = Initialize-Okta.PowerShellEmailCustomizationAllOfLinks  -Self null `
 -Template null `
 -Preview null `
 -Test null
```

- Convert the resource to JSON
```powershell
$EmailCustomizationAllOfLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

