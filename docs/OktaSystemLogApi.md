# Okta.PowerShell.Okta.PowerShell\Api.OktaSystemLogApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaLogs**](OktaSystemLogApi.md#Get-OktaLogs) | **GET** /api/v1/logs | List all System Log Events


<a id="Get-OktaLogs"></a>
# **Get-OktaLogs**
> LogEvent[] Get-OktaLogs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Since] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Until] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all System Log Events

The Okta System Log API provides read access to your organization’s system log. This API provides more functionality than the Events API

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$Since = (Get-Date) # System.DateTime |  (optional)
$Until = (Get-Date) # System.DateTime |  (optional)
$Filter = "MyFilter" # String |  (optional)
$Q = "MyQ" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 100)
$SortOrder = "MySortOrder" # String |  (optional) (default to "ASCENDING")
$After = "MyAfter" # String |  (optional)

# List all System Log Events
try {
    $Result = Get-OktaLogs -Since $Since -Until $Until -Filter $Filter -Q $Q -Limit $Limit -SortOrder $SortOrder -After $After
} catch {
    Write-Host ("Exception occurred when calling Get-OktaLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Since** | **System.DateTime**|  | [optional] 
 **Until** | **System.DateTime**|  | [optional] 
 **Filter** | **String**|  | [optional] 
 **Q** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 100]
 **SortOrder** | **String**|  | [optional] [default to &quot;ASCENDING&quot;]
 **After** | **String**|  | [optional] 

### Return type

[**LogEvent[]**](LogEvent.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

