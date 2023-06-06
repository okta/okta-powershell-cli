# PolicyNetworkCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Connection** | [**PolicyNetworkConnection**](PolicyNetworkConnection.md) |  | [optional] 
**Exclude** | **String[]** |  | [optional] 
**Include** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PolicyNetworkCondition = Initialize-PSOpenAPIToolsPolicyNetworkCondition  -Connection null `
 -Exclude null `
 -Include null
```

- Convert the resource to JSON
```powershell
$PolicyNetworkCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

