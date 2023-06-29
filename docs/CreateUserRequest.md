# CreateUserRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**UserCredentials**](UserCredentials.md) |  | [optional] 
**GroupIds** | **String[]** |  | [optional] 
**VarProfile** | [**UserProfile**](UserProfile.md) |  | 
**Type** | [**UserType**](UserType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUserRequest = Initialize-Okta.PowerShellCreateUserRequest  -Credentials null `
 -GroupIds null `
 -VarProfile null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CreateUserRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

