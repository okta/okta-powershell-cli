# EmailDomainResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DnsValidationRecords** | [**DNSRecord[]**](DNSRecord.md) |  | [optional] 
**Domain** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**ValidationStatus** | [**EmailDomainStatus**](EmailDomainStatus.md) |  | [optional] 
**DisplayName** | **String** |  | 
**UserName** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailDomainResponse = Initialize-PSOpenAPIToolsEmailDomainResponse  -DnsValidationRecords null `
 -Domain null `
 -Id null `
 -ValidationStatus null `
 -DisplayName null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$EmailDomainResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

