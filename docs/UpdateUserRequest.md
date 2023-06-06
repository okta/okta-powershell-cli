# UpdateUserRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Credentials** | [**UserCredentials**](UserCredentials.md) |  | [optional] 
**VarProfile** | [**UserProfile**](UserProfile.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateUserRequest = Initialize-PSOpenAPIToolsUpdateUserRequest  -Credentials null `
 -VarProfile null
```

- Convert the resource to JSON
```powershell
$UpdateUserRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

