# UserActivationToken
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivationToken** | **String** |  | [optional] [readonly] 
**ActivationUrl** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$UserActivationToken = Initialize-Okta.PowerShellUserActivationToken  -ActivationToken null `
 -ActivationUrl null
```

- Convert the resource to JSON
```powershell
$UserActivationToken | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

