# LogStreamSettingsSplunkAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | The domain name for your Splunk Cloud instance. Don&#39;t include &#x60;http&#x60; or &#x60;https&#x60; in the string. For example: &#x60;acme.splunkcloud.com&#x60; | [optional] 
**Token** | **String** | The HEC token for your Splunk Cloud HTTP Event Collector | [optional] 

## Examples

- Prepare the resource
```powershell
$LogStreamSettingsSplunkAllOf = Initialize-PSOpenAPIToolsLogStreamSettingsSplunkAllOf  -VarHost null `
 -Token null
```

- Convert the resource to JSON
```powershell
$LogStreamSettingsSplunkAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

