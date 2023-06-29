# DomainCertificate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Certificate** | **String** |  | [optional] 
**CertificateChain** | **String** |  | [optional] 
**PrivateKey** | **String** |  | [optional] 
**Type** | [**DomainCertificateType**](DomainCertificateType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainCertificate = Initialize-Okta.PowerShellDomainCertificate  -Certificate null `
 -CertificateChain null `
 -PrivateKey null `
 -Type null
```

- Convert the resource to JSON
```powershell
$DomainCertificate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

