# FCMPushProvider
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**LastUpdatedDate** | **String** |  | [optional] [readonly] 
**Name** | **String** | Display name of the push provider | [optional] 
**ProviderType** | [**ProviderType**](ProviderType.md) |  | [optional] 
**Links** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 
**Configuration** | [**FCMConfiguration**](FCMConfiguration.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FCMPushProvider = Initialize-Okta.PowerShellFCMPushProvider  -Id null `
 -LastUpdatedDate null `
 -Name null `
 -ProviderType null `
 -Links null `
 -Configuration null
```

- Convert the resource to JSON
```powershell
$FCMPushProvider | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

