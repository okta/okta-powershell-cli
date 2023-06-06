# EventHook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channel** | [**EventHookChannel**](EventHookChannel.md) |  | [optional] 
**Created** | **System.DateTime** |  | [optional] [readonly] 
**CreatedBy** | **String** |  | [optional] 
**Events** | [**EventSubscriptions**](EventSubscriptions.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Status** | [**LifecycleStatus**](LifecycleStatus.md) |  | [optional] 
**VerificationStatus** | [**EventHookVerificationStatus**](EventHookVerificationStatus.md) |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$EventHook = Initialize-PSOpenAPIToolsEventHook  -Channel null `
 -Created null `
 -CreatedBy null `
 -Events null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Status null `
 -VerificationStatus null `
 -Links null
```

- Convert the resource to JSON
```powershell
$EventHook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

