# ApplicationAccessibility
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorRedirectUrl** | **String** |  | [optional] 
**LoginRedirectUrl** | **String** |  | [optional] 
**SelfService** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationAccessibility = Initialize-PSOpenAPIToolsApplicationAccessibility  -ErrorRedirectUrl null `
 -LoginRedirectUrl null `
 -SelfService null
```

- Convert the resource to JSON
```powershell
$ApplicationAccessibility | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

