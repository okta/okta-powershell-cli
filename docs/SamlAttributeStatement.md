# SamlAttributeStatement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FilterType** | **String** |  | [optional] 
**FilterValue** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Namespace** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**Values** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SamlAttributeStatement = Initialize-Okta.PowerShellSamlAttributeStatement  -FilterType null `
 -FilterValue null `
 -Name null `
 -Namespace null `
 -Type null `
 -Values null
```

- Convert the resource to JSON
```powershell
$SamlAttributeStatement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

