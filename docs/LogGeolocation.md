# LogGeolocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Lat** | **Double** |  | [optional] [readonly] 
**Lon** | **Double** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogGeolocation = Initialize-Okta.PowerShellLogGeolocation  -Lat null `
 -Lon null
```

- Convert the resource to JSON
```powershell
$LogGeolocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

