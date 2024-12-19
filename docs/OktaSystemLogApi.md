# Okta.PowerShell.Okta.PowerShell\Api.OktaSystemLogApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaLogs**](OktaSystemLogApi.md#Get-OktaLogs) | **GET** /api/v1/logs | List all System Log Events


<a id="Get-OktaLogs"></a>
# **Get-OktaLogs**
> LogEvent[] Get-OktaLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Until] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

List all System Log Events

The Okta System Log API provides read access to your organization’s system log. This API provides more functionality than the Events API

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Since = "MySince" # String | Filters the lower time bound of the log events `published` property for bounded queries or persistence time for polling queries (optional) (default to "7 days prior to until")
$Until = "MyUntil" # String | Filters the upper time bound of the log events `published` property for bounded queries or persistence time for polling queries. (optional) (default to "current time")
$After = "MyAfter" # String | Retrieves the next page of results. Okta returns a link in the HTTP Header (`rel=next`) that includes the after query parameter (optional)
$Filter = "MyFilter" # String | Filter expression that filters the results. All operators except [ ] are supported. See [Filter](https://developer.okta.com/docs/api/#filter). (optional)
$Q = "MyQ" # String | Filters log events results by one or more case insensitive keywords. (optional)
$Limit = 56 # Int32 | Sets the number of results that are returned in the response (optional) (default to 100)
$SortOrder = "ASCENDING" # String | The order of the returned events that are sorted by the `published` property (optional) (default to "ASCENDING")

# List all System Log Events
try {
    $Result = Get-OktaLogs -Since $Since -Until $Until -After $After -Filter $Filter -Q $Q -Limit $Limit -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Get-OktaLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **String**| Filters the lower time bound of the log events &#x60;published&#x60; property for bounded queries or persistence time for polling queries | [optional] [default to &quot;7 days prior to until&quot;]
 **Until** | **String**| Filters the upper time bound of the log events &#x60;published&#x60; property for bounded queries or persistence time for polling queries. | [optional] [default to &quot;current time&quot;]
 **After** | **String**| Retrieves the next page of results. Okta returns a link in the HTTP Header (&#x60;rel&#x3D;next&#x60;) that includes the after query parameter | [optional] 
 **Filter** | **String**| Filter expression that filters the results. All operators except [ ] are supported. See [Filter](https://developer.okta.com/docs/api/#filter). | [optional] 
 **Q** | **String**| Filters log events results by one or more case insensitive keywords. | [optional] 
 **Limit** | **Int32**| Sets the number of results that are returned in the response | [optional] [default to 100]
 **SortOrder** | **String**| The order of the returned events that are sorted by the &#x60;published&#x60; property | [optional] [default to &quot;ASCENDING&quot;]

### Return type

[**LogEvent[]**](LogEvent.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

