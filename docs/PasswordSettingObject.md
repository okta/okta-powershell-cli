# PasswordSettingObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Change** | [**ChangeEnum**](ChangeEnum.md) |  | [optional] 
**Seed** | [**SeedEnum**](SeedEnum.md) |  | [optional] 
**Status** | [**EnabledStatus**](EnabledStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordSettingObject = Initialize-PSOpenAPIToolsPasswordSettingObject  -Change null `
 -Seed null `
 -Status null
```

- Convert the resource to JSON
```powershell
$PasswordSettingObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

