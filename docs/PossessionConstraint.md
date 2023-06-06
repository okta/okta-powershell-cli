# PossessionConstraint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Methods** | **String[]** |  | [optional] 
**ReauthenticateIn** | **String** |  | [optional] 
**Types** | **String[]** |  | [optional] 
**DeviceBound** | **String** |  | [optional] 
**HardwareProtection** | **String** |  | [optional] 
**PhishingResistant** | **String** |  | [optional] 
**UserPresence** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PossessionConstraint = Initialize-PSOpenAPIToolsPossessionConstraint  -Methods null `
 -ReauthenticateIn null `
 -Types null `
 -DeviceBound null `
 -HardwareProtection null `
 -PhishingResistant null `
 -UserPresence null
```

- Convert the resource to JSON
```powershell
$PossessionConstraint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

