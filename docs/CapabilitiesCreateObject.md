# CapabilitiesCreateObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LifecycleCreate** | [**LifecycleCreateSettingObject**](LifecycleCreateSettingObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CapabilitiesCreateObject = Initialize-Okta.PowerShellCapabilitiesCreateObject  -LifecycleCreate null
```

- Convert the resource to JSON
```powershell
$CapabilitiesCreateObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

