# ApiToken
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientName** | **String** |  | [optional] [readonly] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**ExpiresAt** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | 
**TokenWindow** | **String** | A time duration specified as an [ISO-8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). | [optional] 
**UserId** | **String** |  | [optional] 
**Link** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApiToken = Initialize-PSOpenAPIToolsApiToken  -ClientName null `
 -Created null `
 -ExpiresAt null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -TokenWindow null `
 -UserId null `
 -Link null
```

- Convert the resource to JSON
```powershell
$ApiToken | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

