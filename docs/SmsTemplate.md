# SmsTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** |  | [optional] [readonly] 
**Id** | **String** |  | [optional] [readonly] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Template** | **String** |  | [optional] 
**Translations** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Type** | [**SmsTemplateType**](SmsTemplateType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SmsTemplate = Initialize-Okta.PowerShellSmsTemplate  -Created null `
 -Id null `
 -LastUpdated null `
 -Name null `
 -Template null `
 -Translations null `
 -Type null
```

- Convert the resource to JSON
```powershell
$SmsTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

