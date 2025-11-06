# Okta.PowerShell.Okta.PowerShell\Api.OktaThreatInsightApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaCurrentConfiguration**](OktaThreatInsightApi.md#Get-OktaCurrentConfiguration) | **GET** /api/v1/threats/configuration | Retrieve the ThreatInsight Configuration
[**Update-OktaConfiguration**](OktaThreatInsightApi.md#Update-OktaConfiguration) | **POST** /api/v1/threats/configuration | Update the ThreatInsight Configuration


<a id="Get-OktaCurrentConfiguration"></a>
# **Get-OktaCurrentConfiguration**
> ThreatInsightConfiguration Get-OktaCurrentConfiguration<br>

Retrieve the ThreatInsight Configuration

Gets current ThreatInsight configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retrieve the ThreatInsight Configuration
try {
    $Result = Get-OktaCurrentConfiguration
} catch {
    Write-Host ("Exception occurred when calling Get-OktaCurrentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ThreatInsightConfiguration**](ThreatInsightConfiguration.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaConfiguration"></a>
# **Update-OktaConfiguration**
> ThreatInsightConfiguration Update-OktaConfiguration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThreatInsightConfiguration] <PSCustomObject><br>

Update the ThreatInsight Configuration

Updates ThreatInsight configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ThreatInsightConfiguration = Initialize-OktaThreatInsightConfiguration -Action "MyAction" -Created (Get-Date) -ExcludeZones "MyExcludeZones" -LastUpdated (Get-Date) -Links @{ key_example =  } # ThreatInsightConfiguration | 

# Update the ThreatInsight Configuration
try {
    $Result = Update-OktaConfiguration -ThreatInsightConfiguration $ThreatInsightConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-OktaConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ThreatInsightConfiguration** | [**ThreatInsightConfiguration**](ThreatInsightConfiguration.md)|  | 

### Return type

[**ThreatInsightConfiguration**](ThreatInsightConfiguration.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

