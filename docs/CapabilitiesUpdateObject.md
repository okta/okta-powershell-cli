# CapabilitiesUpdateObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LifecycleDeactivate** | [**LifecycleDeactivateSettingObject**](LifecycleDeactivateSettingObject.md) |  | [optional] 
**Password** | [**PasswordSettingObject**](PasswordSettingObject.md) |  | [optional] 
**VarProfile** | [**ProfileSettingObject**](ProfileSettingObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CapabilitiesUpdateObject = Initialize-PSOpenAPIToolsCapabilitiesUpdateObject  -LifecycleDeactivate null `
 -Password null `
 -VarProfile null
```

- Convert the resource to JSON
```powershell
$CapabilitiesUpdateObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

