# PrincipalRateLimitEntity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedBy** | **String** |  | [optional] [readonly] 
**CreatedDate** | **System.DateTime** |  | [optional] [readonly] 
**DefaultConcurrencyPercentage** | **Int32** |  | [optional] [readonly] 
**DefaultPercentage** | **Int32** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdate** | **System.DateTime** |  | [optional] [readonly] 
**LastUpdatedBy** | **String** |  | [optional] [readonly] 
**OrgId** | **String** |  | [optional] [readonly] 
**PrincipalId** | **String** |  | 
**PrincipalType** | [**PrincipalType**](PrincipalType.md) |  | 

## Examples

- Prepare the resource
```powershell
$PrincipalRateLimitEntity = Initialize-PSOpenAPIToolsPrincipalRateLimitEntity  -CreatedBy null `
 -CreatedDate null `
 -DefaultConcurrencyPercentage null `
 -DefaultPercentage null `
 -Id null `
 -LastUpdate null `
 -LastUpdatedBy null `
 -OrgId null `
 -PrincipalId null `
 -PrincipalType null
```

- Convert the resource to JSON
```powershell
$PrincipalRateLimitEntity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

