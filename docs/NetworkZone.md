# NetworkZone
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Asns** | **String[]** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Gateways** | [**NetworkZoneAddress[]**](NetworkZoneAddress.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Locations** | [**NetworkZoneLocation[]**](NetworkZoneLocation.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Proxies** | [**NetworkZoneAddress[]**](NetworkZoneAddress.md) |  | [optional] 
**ProxyType** | **String** |  | [optional] 
**Status** | [**NetworkZoneStatus**](NetworkZoneStatus.md) |  | [optional] 
**System** | **Boolean** |  | [optional] 
**Type** | [**NetworkZoneType**](NetworkZoneType.md) |  | [optional] 
**Usage** | [**NetworkZoneUsage**](NetworkZoneUsage.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$NetworkZone = Initialize-Okta.PowerShellNetworkZone  -Asns null `
 -Created null `
 -Gateways null `
 -Id null `
 -LastUpdated null `
 -Locations null `
 -Name null `
 -Proxies null `
 -ProxyType null `
 -Status null `
 -System null `
 -Type null `
 -Usage null `
 -Links null
```

- Convert the resource to JSON
```powershell
$NetworkZone | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

