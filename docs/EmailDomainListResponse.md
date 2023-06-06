# EmailDomainListResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailDomains** | [**EmailDomainResponse[]**](EmailDomainResponse.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailDomainListResponse = Initialize-PSOpenAPIToolsEmailDomainListResponse  -EmailDomains null
```

- Convert the resource to JSON
```powershell
$EmailDomainListResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

