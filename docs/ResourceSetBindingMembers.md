# ResourceSetBindingMembers
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Members** | [**ResourceSetBindingMember[]**](ResourceSetBindingMember.md) |  | [optional] 
**Links** | [**ResourceSetBindingMembersLinks**](ResourceSetBindingMembersLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourceSetBindingMembers = Initialize-PSOpenAPIToolsResourceSetBindingMembers  -Members null `
 -Links null
```

- Convert the resource to JSON
```powershell
$ResourceSetBindingMembers | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

