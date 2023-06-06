# CAPTCHAInstance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**SecretKey** | **String** |  | [optional] 
**SiteKey** | **String** |  | [optional] 
**Type** | [**CAPTCHAType**](CAPTCHAType.md) |  | [optional] 
**Links** | [**ApiTokenLink**](ApiTokenLink.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CAPTCHAInstance = Initialize-PSOpenAPIToolsCAPTCHAInstance  -Id null `
 -Name null `
 -SecretKey null `
 -SiteKey null `
 -Type null `
 -Links null
```

- Convert the resource to JSON
```powershell
$CAPTCHAInstance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

