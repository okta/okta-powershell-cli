# GroupOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**OriginId** | **String** |  | [optional] 
**OriginType** | [**GroupOwnerOriginType**](GroupOwnerOriginType.md) |  | [optional] 
**Resolved** | **Boolean** |  | [optional] 
**Type** | [**GroupOwnerType**](GroupOwnerType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupOwner = Initialize-PSOpenAPIToolsGroupOwner  -DisplayName null `
 -Id null `
 -LastUpdated null `
 -OriginId null `
 -OriginType null `
 -Resolved null `
 -Type null
```

- Convert the resource to JSON
```powershell
$GroupOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

