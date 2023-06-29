# ApplicationCredentialsUsernameTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PushStatus** | **String** |  | [optional] 
**Suffix** | **String** |  | [optional] 
**Template** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationCredentialsUsernameTemplate = Initialize-Okta.PowerShellApplicationCredentialsUsernameTemplate  -PushStatus null `
 -Suffix null `
 -Template null `
 -Type null
```

- Convert the resource to JSON
```powershell
$ApplicationCredentialsUsernameTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

