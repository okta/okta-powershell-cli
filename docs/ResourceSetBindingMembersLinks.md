# ResourceSetBindingMembersLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Binding** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Next** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingMembersLinks = Initialize-PSOpenAPIToolsResourceSetBindingMembersLinks  -Binding null `
 -Next null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingMembersLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

