# BaseEmailDomain
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | 
**UserName** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$BaseEmailDomain = Initialize-Okta.PowerShellBaseEmailDomain  -DisplayName null `
 -UserName null
```

- Convert the resource to JSON
```powershell
$BaseEmailDomain | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

