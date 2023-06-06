# CsrMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | [**CsrMetadataSubject**](CsrMetadataSubject.md) |  | [optional] 
**SubjectAltNames** | [**CsrMetadataSubjectAltNames**](CsrMetadataSubjectAltNames.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CsrMetadata = Initialize-PSOpenAPIToolsCsrMetadata  -Subject null `
 -SubjectAltNames null
```

- Convert the resource to JSON
```powershell
$CsrMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

