# APNSConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileName** | **String** | (Optional) File name for Admin Console display | [optional] 
**KeyId** | **String** | 10-character Key ID obtained from the Apple developer account | [optional] 
**TeamId** | **String** | 10-character Team ID used to develop the iOS app | [optional] 
**TokenSigningKey** | **String** | APNs private authentication token signing key | [optional] 

## Examples

- Prepare the resource
```powershell
$APNSConfiguration = Initialize-PSOpenAPIToolsAPNSConfiguration  -FileName null `
 -KeyId null `
 -TeamId null `
 -TokenSigningKey null
```

- Convert the resource to JSON
```powershell
$APNSConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

