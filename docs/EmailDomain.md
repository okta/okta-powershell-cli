# EmailDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**DisplayName** | **String** |  | 
**UserName** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailDomain = Initialize-Okta.PowerShellEmailDomain  -Domain null `
 -DisplayName null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$EmailDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

