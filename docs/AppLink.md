# AppLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppAssignmentId** | **String** |  | [optional] [readonly] 
**AppInstanceId** | **String** |  | [optional] [readonly] 
**AppName** | **String** |  | [optional] [readonly] 
**CredentialsSetup** | **Boolean** |  | [optional] [readonly] 
**Hidden** | **Boolean** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**Label** | **String** |  | [optional] [readonly] 
**LinkUrl** | **String** |  | [optional] [readonly] 
**LogoUrl** | **String** |  | [optional] [readonly] 
**SortOrder** | **Int32** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AppLink = Initialize-PSOpenAPIToolsAppLink  -AppAssignmentId null `
 -AppInstanceId null `
 -AppName null `
 -CredentialsSetup null `
 -Hidden null `
 -Id null `
 -Label null `
 -LinkUrl null `
 -LogoUrl null `
 -SortOrder null
```

- Convert the resource to JSON
```powershell
$AppLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

