# BookmarkApplicationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**ApplicationCredentials**](ApplicationCredentials.md) |  | [optional] 
**Name** | **String** |  | [optional] [default to "bookmark"]
**Settings** | [**BookmarkApplicationSettings**](BookmarkApplicationSettings.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BookmarkApplicationAllOf = Initialize-PSOpenAPIToolsBookmarkApplicationAllOf  -Credentials null `
 -Name null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$BookmarkApplicationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

