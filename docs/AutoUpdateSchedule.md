# AutoUpdateSchedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cron** | **String** |  | [optional] 
**Delay** | **Int32** | delay in days | [optional] 
**Duration** | **Int32** | duration in minutes | [optional] 
**LastUpdated** | **System.DateTime** | last time when the updated finished (success or failed, exclude cancelled), null if job haven&#39;t finished once yet. | [optional] 
**Timezone** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoUpdateSchedule = Initialize-PSOpenAPIToolsAutoUpdateSchedule  -Cron null `
 -Delay null `
 -Duration null `
 -LastUpdated null `
 -Timezone null
```

- Convert the resource to JSON
```powershell
$AutoUpdateSchedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

