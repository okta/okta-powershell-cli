# LogEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Actor** | [**LogActor**](LogActor.md) |  | [optional] 
**AuthenticationContext** | [**LogAuthenticationContext**](LogAuthenticationContext.md) |  | [optional] 
**Client** | [**LogClient**](LogClient.md) |  | [optional] 
**DebugContext** | [**LogDebugContext**](LogDebugContext.md) |  | [optional] 
**DisplayMessage** | **String** |  | [optional] [readonly] 
**EventType** | **String** |  | [optional] [readonly] 
**LegacyEventType** | **String** |  | [optional] [readonly] 
**Outcome** | [**LogOutcome**](LogOutcome.md) |  | [optional] 
**Published** | **System.DateTime** |  | [optional] [readonly] 
**Request** | [**LogRequest**](LogRequest.md) |  | [optional] 
**SecurityContext** | [**LogSecurityContext**](LogSecurityContext.md) |  | [optional] 
**Severity** | [**LogSeverity**](LogSeverity.md) |  | [optional] 
**Target** | [**LogTarget[]**](LogTarget.md) |  | [optional] [readonly] 
**Transaction** | [**LogTransaction**](LogTransaction.md) |  | [optional] 
**Uuid** | **String** |  | [optional] [readonly] 
**Version** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$LogEvent = Initialize-PSOpenAPIToolsLogEvent  -Actor null `
 -AuthenticationContext null `
 -Client null `
 -DebugContext null `
 -DisplayMessage null `
 -EventType null `
 -LegacyEventType null `
 -Outcome null `
 -Published null `
 -Request null `
 -SecurityContext null `
 -Severity null `
 -Target null `
 -Transaction null `
 -Uuid null `
 -Version null
```

- Convert the resource to JSON
```powershell
$LogEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

