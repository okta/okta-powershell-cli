# LogStreamSettingsAwsAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | Your AWS account ID | [optional] 
**EventSourceName** | **String** | An alphanumeric name (no spaces) to identify this event source in AWS EventBridge | [optional] 
**Region** | [**AwsRegion**](AwsRegion.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LogStreamSettingsAwsAllOf = Initialize-PSOpenAPIToolsLogStreamSettingsAwsAllOf  -AccountId null `
 -EventSourceName null `
 -Region null
```

- Convert the resource to JSON
```powershell
$LogStreamSettingsAwsAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

