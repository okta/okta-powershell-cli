# AgentPool
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agents** | [**Agent[]**](Agent.md) |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**OperationalStatus** | [**OperationalStatus**](OperationalStatus.md) |  | [optional] 
**Type** | [**AgentType**](AgentType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentPool = Initialize-PSOpenAPIToolsAgentPool  -Agents null `
 -Id null `
 -Name null `
 -OperationalStatus null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AgentPool | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

