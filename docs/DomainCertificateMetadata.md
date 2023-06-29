# DomainCertificateMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expiration** | **String** |  | [optional] 
**Fingerprint** | **String** |  | [optional] 
**Subject** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainCertificateMetadata = Initialize-Okta.PowerShellDomainCertificateMetadata  -Expiration null `
 -Fingerprint null `
 -Subject null
```

- Convert the resource to JSON
```powershell
$DomainCertificateMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

