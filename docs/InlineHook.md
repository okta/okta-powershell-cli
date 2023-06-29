# InlineHook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channel** | [**InlineHookChannel**](InlineHookChannel.md) |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Status** | [**InlineHookStatus**](InlineHookStatus.md) |  | [optional] 
**Type** | [**InlineHookType**](InlineHookType.md) |  | [optional] 
**Version** | **String** |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$InlineHook = Initialize-Okta.PowerShellInlineHook  -Channel null `
 -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Status null `
 -Type null `
 -Version null `
 -Links null
```

- Convert the resource to JSON
```powershell
$InlineHook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

