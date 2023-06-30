# PossessionConstraintAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceBound** | **String** |  | [optional] 
**HardwareProtection** | **String** |  | [optional] 
**PhishingResistant** | **String** |  | [optional] 
**UserPresence** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PossessionConstraintAllOf = Initialize-Okta.PowerShellPossessionConstraintAllOf  -DeviceBound null `
 -HardwareProtection null `
 -PhishingResistant null `
 -UserPresence null
```

- Convert the resource to JSON
```powershell
$PossessionConstraintAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

