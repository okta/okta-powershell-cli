# LogStreamAws
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Timestamp when the Log Stream was created | [optional] [readonly] 
**Id** | **String** | Unique key for the Log Stream | [optional] [readonly] 
**LastUpdated** | **System.DateTime** | Timestamp when the Log Stream was last updated | [optional] [readonly] 
**Name** | **String** | Unique name for the Log Stream | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**Type** | [**LogStreamType**](LogStreamType.md) |  | [optional] 
**Links** | [**LogStreamLinks**](LogStreamLinks.md) |  | [optional] 
**Settings** | [**LogStreamSettingsAws**](LogStreamSettingsAws.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogStreamAws = Initialize-Okta.PowerShellLogStreamAws  -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Status null `
 -Type null `
 -Links null `
 -Settings null
```

- Convert the resource to JSON
```powershell
$LogStreamAws | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

