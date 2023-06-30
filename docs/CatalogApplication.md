# CatalogApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Category** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Features** | **String[]** |  | [optional] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**SignOnModes** | **String[]** |  | [optional] 
**Status** | [**CatalogApplicationStatus**](CatalogApplicationStatus.md) |  | [optional] 
**VerificationStatus** | **String** |  | [optional] 
**Website** | **String** |  | [optional] 
**Links** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CatalogApplication = Initialize-Okta.PowerShellCatalogApplication  -Category null `
 -Description null `
 -DisplayName null `
 -Features null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -SignOnModes null `
 -Status null `
 -VerificationStatus null `
 -Website null `
 -Links null
```

- Convert the resource to JSON
```powershell
$CatalogApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

