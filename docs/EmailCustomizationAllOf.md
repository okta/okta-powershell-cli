# EmailCustomizationAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | The UTC time at which this email customization was created. | [optional] [readonly] 
**Id** | **String** | A unique identifier for this email customization. | [optional] [readonly] 
**IsDefault** | **Boolean** | Whether this is the default customization for the email template. Each customized email template must have exactly one default customization. Defaults to &#x60;true&#x60; for the first customization and &#x60;false&#x60; thereafter. | [optional] 
**Language** | **String** | The language specified as an [IETF BCP 47 language tag](https://datatracker.ietf.org/doc/html/rfc5646). | 
**LastUpdated** | **System.DateTime** | The UTC time at which this email customization was last updated. | [optional] [readonly] 
**Links** | [**EmailCustomizationAllOfLinks**](EmailCustomizationAllOfLinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailCustomizationAllOf = Initialize-PSOpenAPIToolsEmailCustomizationAllOf  -Created null `
 -Id null `
 -IsDefault null `
 -Language null `
 -LastUpdated null `
 -Links null
```

- Convert the resource to JSON
```powershell
$EmailCustomizationAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

