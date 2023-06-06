# UserCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exclude** | **String[]** |  | [optional] 
**Include** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserCondition = Initialize-PSOpenAPIToolsUserCondition  -Exclude null `
 -Include null
```

- Convert the resource to JSON
```powershell
$UserCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

