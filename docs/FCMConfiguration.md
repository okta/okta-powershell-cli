# FCMConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FileName** | **String** | (Optional) File name for Admin Console display | [optional] 
**ProjectId** | **String** | Project ID of FCM configuration | [optional] [readonly] 
**ServiceAccountJson** | [**SystemCollectionsHashtable**](.md) | JSON containing the private service account key and service account details. See [Creating and managing service account keys](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) for more information on creating service account keys in JSON. | [optional] 

## Examples

- Prepare the resource
```powershell
$FCMConfiguration = Initialize-PSOpenAPIToolsFCMConfiguration  -FileName null `
 -ProjectId null `
 -ServiceAccountJson null
```

- Convert the resource to JSON
```powershell
$FCMConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

