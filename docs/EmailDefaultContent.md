# EmailDefaultContent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** | The email&#39;s HTML body. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references). | 
**Subject** | **String** | The email&#39;s subject. May contain [variable references](https://velocity.apache.org/engine/1.7/user-guide.html#references). | 
**Links** | [**EmailDefaultContentAllOfLinks**](EmailDefaultContentAllOfLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailDefaultContent = Initialize-PSOpenAPIToolsEmailDefaultContent  -Body null `
 -Subject null `
 -Links null
```

- Convert the resource to JSON
```powershell
$EmailDefaultContent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

