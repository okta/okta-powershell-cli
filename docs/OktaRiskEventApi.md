# Okta.PowerShell.Okta.PowerShell/Api.OktaRiskEventApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Send-OktaRiskEvents**](OktaRiskEventApi.md#Send-OktaRiskEvents) | **POST** /api/v1/risk/events/ip | Send multiple Risk Events


<a id="Send-OktaRiskEvents"></a>
# **Send-OktaRiskEvents**
> void Send-OktaRiskEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject[]><br>

Send multiple Risk Events

A Risk Provider can send Risk Events to Okta using this API. This API has a rate limit of 30 requests per minute. The caller should include multiple Risk Events (up to a maximum of 20 events) in a single payload to reduce the number of API calls. If a client has more risk signals to send than what the API supports, we recommend prioritizing posting high risk signals.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RiskEventSubject = Initialize-RiskEventSubject -Ip "MyIp" -Message "MyMessage" -RiskLevel "HIGH"
$RiskEvent = Initialize-RiskEvent -ExpiresAt (Get-Date) -Subjects $RiskEventSubject -Timestamp (Get-Date) # RiskEvent[] | 

# Send multiple Risk Events
try {
    $Result = Send-OktaRiskEvents -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Send-OktaRiskEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**RiskEvent[]**](RiskEvent.md)|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

