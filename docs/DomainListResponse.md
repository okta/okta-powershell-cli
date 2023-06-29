# DomainListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domains** | [**DomainResponse[]**](DomainResponse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainListResponse = Initialize-Okta.PowerShellDomainListResponse  -Domains null
```

- Convert the resource to JSON
```powershell
$DomainListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

