# RiskEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpiresAt** | **System.DateTime** | Time stamp at which the event expires (Expressed as a UTC time zone using ISO 8601 format: yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSS&#39;Z&#39;). If this optional field is not included, Okta automatically expires the event 24 hours after the event is consumed. | [optional] 
**Subjects** | [**RiskEventSubject[]**](RiskEventSubject.md) |  | 
**Timestamp** | **System.DateTime** | Time stamp at which the event is produced (Expressed as a UTC time zone using ISO 8601 format: yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSS&#39;Z&#39;). | [optional] 

## Examples

- Prepare the resource
```powershell
$RiskEvent = Initialize-Okta.PowerShellRiskEvent  -ExpiresAt null `
 -Subjects null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$RiskEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

