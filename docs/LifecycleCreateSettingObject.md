# LifecycleCreateSettingObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**EnabledStatus**](EnabledStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LifecycleCreateSettingObject = Initialize-PSOpenAPIToolsLifecycleCreateSettingObject  -Status null
```

- Convert the resource to JSON
```powershell
$LifecycleCreateSettingObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

