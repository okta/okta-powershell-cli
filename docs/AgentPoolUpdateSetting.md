# AgentPoolUpdateSetting
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgentType** | [**AgentType**](AgentType.md) |  | [optional] 
**ContinueOnError** | **Boolean** |  | [optional] 
**LatestVersion** | **String** |  | [optional] 
**MinimalSupportedVersion** | **String** |  | [optional] 
**PoolId** | **String** |  | [optional] [readonly] 
**PoolName** | **String** |  | [optional] 
**ReleaseChannel** | [**ReleaseChannel**](ReleaseChannel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AgentPoolUpdateSetting = Initialize-Okta.PowerShellAgentPoolUpdateSetting  -AgentType null `
 -ContinueOnError null `
 -LatestVersion null `
 -MinimalSupportedVersion null `
 -PoolId null `
 -PoolName null `
 -ReleaseChannel null
```

- Convert the resource to JSON
```powershell
$AgentPoolUpdateSetting | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

