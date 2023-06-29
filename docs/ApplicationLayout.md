# ApplicationLayout
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Elements** | [**System.Collections.Hashtable[]**](Map.md) |  | [optional] 
**Label** | **String** |  | [optional] 
**Options** | [**System.Collections.Hashtable**](AnyType.md) |  | [optional] 
**Rule** | [**ApplicationLayoutRule**](ApplicationLayoutRule.md) |  | [optional] 
**Scope** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationLayout = Initialize-Okta.PowerShellApplicationLayout  -Elements null `
 -Label null `
 -Options null `
 -Rule null `
 -Scope null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ApplicationLayout | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

