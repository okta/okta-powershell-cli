# Domain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrandId** | **String** |  | [optional] 
**CertificateSourceType** | [**DomainCertificateSourceType**](DomainCertificateSourceType.md) |  | [optional] 
**DnsRecords** | [**DNSRecord[]**](DNSRecord.md) |  | [optional] 
**Domain** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**PublicCertificate** | [**DomainCertificateMetadata**](DomainCertificateMetadata.md) |  | [optional] 
**ValidationStatus** | [**DomainValidationStatus**](DomainValidationStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Domain = Initialize-Okta.PowerShellDomain  -BrandId null `
 -CertificateSourceType null `
 -DnsRecords null `
 -Domain null `
 -Id null `
 -PublicCertificate null `
 -ValidationStatus null
```

- Convert the resource to JSON
```powershell
$Domain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

