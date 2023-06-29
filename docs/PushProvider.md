# PushProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**LastUpdatedDate** | **String** |  | [optional] [readonly] 
**Name** | **String** | Display name of the push provider | [optional] 
**ProviderType** | [**ProviderType**](ProviderType.md) |  | [optional] 
**Links** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PushProvider = Initialize-Okta.PowerShellPushProvider  -Id null `
 -LastUpdatedDate null `
 -Name null `
 -ProviderType null `
 -Links null
```

- Convert the resource to JSON
```powershell
$PushProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

