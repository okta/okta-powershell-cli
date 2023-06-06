# HookKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**IsUsed** | **Boolean** |  | [optional] 
**KeyId** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Embedded** | [**JsonWebKey**](JsonWebKey.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HookKey = Initialize-PSOpenAPIToolsHookKey  -Created null `
 -Id null `
 -IsUsed null `
 -KeyId null `
 -LastUpdated null `
 -Name null `
 -Embedded null
```

- Convert the resource to JSON
```powershell
$HookKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

