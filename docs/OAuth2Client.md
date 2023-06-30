# OAuth2Client
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientId** | **String** |  | [optional] [readonly] 
**ClientName** | **String** |  | [optional] [readonly] 
**ClientUri** | **String** |  | [optional] [readonly] 
**LogoUri** | **String** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$OAuth2Client = Initialize-Okta.PowerShellOAuth2Client  -ClientId null `
 -ClientName null `
 -ClientUri null `
 -LogoUri null `
 -Links null
```

- Convert the resource to JSON
```powershell
$OAuth2Client | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

