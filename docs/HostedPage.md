# HostedPage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**HostedPageType**](HostedPageType.md) |  | 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HostedPage = Initialize-Okta.PowerShellHostedPage  -Type null `
 -Url null
```

- Convert the resource to JSON
```powershell
$HostedPage | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

