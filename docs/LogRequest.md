# LogRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpChain** | [**LogIpAddress[]**](LogIpAddress.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogRequest = Initialize-Okta.PowerShellLogRequest  -IpChain null
```

- Convert the resource to JSON
```powershell
$LogRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

