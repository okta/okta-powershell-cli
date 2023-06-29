# ProfileMappingProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | **String** |  | [optional] 
**PushStatus** | [**ProfileMappingPropertyPushStatus**](ProfileMappingPropertyPushStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileMappingProperty = Initialize-Okta.PowerShellProfileMappingProperty  -Expression null `
 -PushStatus null
```

- Convert the resource to JSON
```powershell
$ProfileMappingProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

