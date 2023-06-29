# Provisioning
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | [**ProvisioningAction**](ProvisioningAction.md) |  | [optional] 
**Conditions** | [**ProvisioningConditions**](ProvisioningConditions.md) |  | [optional] 
**Groups** | [**ProvisioningGroups**](ProvisioningGroups.md) |  | [optional] 
**ProfileMaster** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Provisioning = Initialize-Okta.PowerShellProvisioning  -Action null `
 -Conditions null `
 -Groups null `
 -ProfileMaster null
```

- Convert the resource to JSON
```powershell
$Provisioning | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

