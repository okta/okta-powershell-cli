# GroupSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Schema** | **String** |  | [optional] [readonly] 
**Created** | **String** |  | [optional] [readonly] 
**Definitions** | [**GroupSchemaDefinitions**](GroupSchemaDefinitions.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] [readonly] 
**Properties** | [**UserSchemaProperties**](UserSchemaProperties.md) |  | [optional] 
**Title** | **String** |  | [optional] 
**Type** | **String** |  | [optional] [readonly] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$GroupSchema = Initialize-Okta.PowerShellGroupSchema  -Schema null `
 -Created null `
 -Definitions null `
 -Description null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Properties null `
 -Title null `
 -Type null `
 -Links null
```

- Convert the resource to JSON
```powershell
$GroupSchema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

