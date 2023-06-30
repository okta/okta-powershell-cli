# ProvisioningConditions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Deprovisioned** | [**ProvisioningDeprovisionedCondition**](ProvisioningDeprovisionedCondition.md) |  | [optional] 
**Suspended** | [**ProvisioningSuspendedCondition**](ProvisioningSuspendedCondition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningConditions = Initialize-Okta.PowerShellProvisioningConditions  -Deprovisioned null `
 -Suspended null
```

- Convert the resource to JSON
```powershell
$ProvisioningConditions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

