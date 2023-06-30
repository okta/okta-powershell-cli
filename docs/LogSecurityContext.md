# LogSecurityContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsNumber** | **Int32** |  | [optional] [readonly] 
**AsOrg** | **String** |  | [optional] [readonly] 
**Domain** | **String** |  | [optional] [readonly] 
**Isp** | **String** |  | [optional] [readonly] 
**IsProxy** | **Boolean** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogSecurityContext = Initialize-Okta.PowerShellLogSecurityContext  -AsNumber null `
 -AsOrg null `
 -Domain null `
 -Isp null `
 -IsProxy null
```

- Convert the resource to JSON
```powershell
$LogSecurityContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

