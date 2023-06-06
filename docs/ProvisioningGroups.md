# ProvisioningGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | [**ProvisioningGroupsAction**](ProvisioningGroupsAction.md) |  | [optional] 
**Assignments** | **String[]** |  | [optional] 
**VarFilter** | **String[]** |  | [optional] 
**SourceAttributeName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProvisioningGroups = Initialize-PSOpenAPIToolsProvisioningGroups  -Action null `
 -Assignments null `
 -VarFilter null `
 -SourceAttributeName null
```

- Convert the resource to JSON
```powershell
$ProvisioningGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

