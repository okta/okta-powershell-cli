# Agent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**IsHidden** | **Boolean** |  | [optional] 
**IsLatestGAedVersion** | **Boolean** |  | [optional] 
**LastConnection** | **System.DateTime** |  | [optional] 
**Name** | **String** |  | [optional] 
**OperationalStatus** | [**OperationalStatus**](OperationalStatus.md) |  | [optional] 
**PoolId** | **String** |  | [optional] 
**Type** | [**AgentType**](AgentType.md) |  | [optional] 
**UpdateMessage** | **String** |  | [optional] 
**UpdateStatus** | [**AgentUpdateInstanceStatus**](AgentUpdateInstanceStatus.md) |  | [optional] 
**Version** | **String** |  | [optional] 
**Links** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Agent = Initialize-Okta.PowerShellAgent  -Id null `
 -IsHidden null `
 -IsLatestGAedVersion null `
 -LastConnection null `
 -Name null `
 -OperationalStatus null `
 -PoolId null `
 -Type null `
 -UpdateMessage null `
 -UpdateStatus null `
 -Version null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Agent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

