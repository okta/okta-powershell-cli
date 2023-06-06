# CapabilitiesObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Create** | [**CapabilitiesCreateObject**](CapabilitiesCreateObject.md) |  | [optional] 
**Update** | [**CapabilitiesUpdateObject**](CapabilitiesUpdateObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CapabilitiesObject = Initialize-PSOpenAPIToolsCapabilitiesObject  -Create null `
 -Update null
```

- Convert the resource to JSON
```powershell
$CapabilitiesObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

