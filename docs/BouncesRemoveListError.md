# BouncesRemoveListError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | [optional] 
**Reason** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BouncesRemoveListError = Initialize-Okta.PowerShellBouncesRemoveListError  -EmailAddress null `
 -Reason null
```

- Convert the resource to JSON
```powershell
$BouncesRemoveListError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

