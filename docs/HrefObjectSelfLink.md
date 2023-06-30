# HrefObjectSelfLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hints** | [**HrefObjectHints**](HrefObjectHints.md) |  | [optional] 
**Href** | **String** |  | 
**Name** | **String** |  | [optional] 
**Type** | **String** | The media type of the link. If omitted, it is implicitly &#x60;application/json&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$HrefObjectSelfLink = Initialize-Okta.PowerShellHrefObjectSelfLink  -Hints null `
 -Href null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$HrefObjectSelfLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

