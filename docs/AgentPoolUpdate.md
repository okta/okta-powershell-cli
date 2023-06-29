# AgentPoolUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agents** | [**Agent[]**](Agent.md) |  | [optional] 
**AgentType** | [**AgentType**](AgentType.md) |  | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**NotifyAdmin** | **Boolean** |  | [optional] 
**Reason** | **String** |  | [optional] 
**Schedule** | [**AutoUpdateSchedule**](AutoUpdateSchedule.md) |  | [optional] 
**SortOrder** | **Int32** |  | [optional] 
**Status** | [**AgentUpdateJobStatus**](AgentUpdateJobStatus.md) |  | [optional] 
**TargetVersion** | **String** |  | [optional] 
**Links** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentPoolUpdate = Initialize-Okta.PowerShellAgentPoolUpdate  -Agents null `
 -AgentType null `
 -Enabled null `
 -Id null `
 -Name null `
 -NotifyAdmin null `
 -Reason null `
 -Schedule null `
 -SortOrder null `
 -Status null `
 -TargetVersion null `
 -Links null
```

- Convert the resource to JSON
```powershell
$AgentPoolUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

