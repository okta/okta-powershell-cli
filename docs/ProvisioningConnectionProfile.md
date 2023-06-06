# ProvisioningConnectionProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthScheme** | [**ProvisioningConnectionAuthScheme**](ProvisioningConnectionAuthScheme.md) |  | [optional] 
**Token** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningConnectionProfile = Initialize-PSOpenAPIToolsProvisioningConnectionProfile  -AuthScheme null `
 -Token null
```

- Convert the resource to JSON
```powershell
$ProvisioningConnectionProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

