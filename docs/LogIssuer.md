# LogIssuer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Type** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogIssuer = Initialize-Okta.PowerShellLogIssuer  -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$LogIssuer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

