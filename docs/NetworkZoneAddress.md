# NetworkZoneAddress
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**NetworkZoneAddressType**](NetworkZoneAddressType.md) |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkZoneAddress = Initialize-Okta.PowerShellNetworkZoneAddress  -Type null `
 -Value null
```

- Convert the resource to JSON
```powershell
$NetworkZoneAddress | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

