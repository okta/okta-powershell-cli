# LinkedObjectDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Type** | [**LinkedObjectDetailsType**](LinkedObjectDetailsType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LinkedObjectDetails = Initialize-PSOpenAPIToolsLinkedObjectDetails  -Description null `
 -Name null `
 -Title null `
 -Type null
```

- Convert the resource to JSON
```powershell
$LinkedObjectDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

