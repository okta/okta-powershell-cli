# RiskProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | [**RiskProviderAction**](RiskProviderAction.md) |  | [optional] 
**ClientId** | **String** | The ID of the [OAuth service app](https://developer.okta.com/docs/guides/implement-oauth-for-okta-serviceapp/main/#create-a-service-app-and-grant-scopes) that is used to send risk events to Okta | 
**Created** | **System.DateTime** | Timestamp when the risk provider was created | [optional] [readonly] 
**Id** | **String** | The ID of the risk provider | [optional] [readonly] 
**LastUpdated** | **System.DateTime** | Timestamp when the risk provider was last updated | [optional] [readonly] 
**Name** | **String** | Name of the risk provider | 
**Links** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RiskProvider = Initialize-Okta.PowerShellRiskProvider  -Action null `
 -ClientId null `
 -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Links null
```

- Convert the resource to JSON
```powershell
$RiskProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

