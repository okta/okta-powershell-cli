# DomainLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Brand** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Certificate** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Verify** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainLinks = Initialize-PSOpenAPIToolsDomainLinks  -Brand null `
 -Certificate null `
 -Self null `
 -Verify null
```

- Convert the resource to JSON
```powershell
$DomainLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

