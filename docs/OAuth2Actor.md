# OAuth2Actor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OAuth2Actor = Initialize-Okta.PowerShellOAuth2Actor  -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$OAuth2Actor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

