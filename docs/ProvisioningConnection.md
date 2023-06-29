# ProvisioningConnection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthScheme** | [**ProvisioningConnectionAuthScheme**](ProvisioningConnectionAuthScheme.md) |  | [optional] 
**Status** | [**ProvisioningConnectionStatus**](ProvisioningConnectionStatus.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProvisioningConnection = Initialize-Okta.PowerShellProvisioningConnection  -AuthScheme null `
 -Status null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ProvisioningConnection | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

