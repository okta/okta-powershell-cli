# EventSubscriptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | **String[]** |  | [optional] 
**Type** | [**EventSubscriptionType**](EventSubscriptionType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EventSubscriptions = Initialize-PSOpenAPIToolsEventSubscriptions  -Items null `
 -Type null
```

- Convert the resource to JSON
```powershell
$EventSubscriptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

