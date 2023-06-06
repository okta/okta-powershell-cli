# ApplicationLinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessPolicy** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Activate** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Deactivate** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Groups** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Logo** | [**HrefObject[]**](HrefObject.md) |  | [optional] 
**Metadata** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Self** | [**HrefObject**](HrefObject.md) |  | [optional] 
**Users** | [**HrefObject**](HrefObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationLinks = Initialize-PSOpenAPIToolsApplicationLinks  -AccessPolicy null `
 -Activate null `
 -Deactivate null `
 -Groups null `
 -Logo null `
 -Metadata null `
 -Self null `
 -Users null
```

- Convert the resource to JSON
```powershell
$ApplicationLinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

