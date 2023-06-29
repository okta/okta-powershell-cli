# DNSRecord
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expiration** | **String** |  | [optional] 
**Fqdn** | **String** |  | [optional] 
**RecordType** | [**DNSRecordType**](DNSRecordType.md) |  | [optional] 
**Values** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DNSRecord = Initialize-Okta.PowerShellDNSRecord  -Expiration null `
 -Fqdn null `
 -RecordType null `
 -Values null
```

- Convert the resource to JSON
```powershell
$DNSRecord | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

