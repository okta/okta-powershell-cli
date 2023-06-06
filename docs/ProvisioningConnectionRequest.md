# ProvisioningConnectionRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarProfile** | [**ProvisioningConnectionProfile**](ProvisioningConnectionProfile.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningConnectionRequest = Initialize-PSOpenAPIToolsProvisioningConnectionRequest  -VarProfile null
```

- Convert the resource to JSON
```powershell
$ProvisioningConnectionRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

