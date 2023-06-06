# PSOpenAPITools.PSOpenAPITools\Api.ThreatInsightApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-CurrentConfiguration**](ThreatInsightApi.md#Get-CurrentConfiguration) | **GET** /api/v1/threats/configuration | Retrieve the ThreatInsight Configuration
[**Update-Configuration**](ThreatInsightApi.md#Update-Configuration) | **POST** /api/v1/threats/configuration | Update the ThreatInsight Configuration


<a name="Get-CurrentConfiguration"></a>
# **Get-CurrentConfiguration**
> ThreatInsightConfiguration Get-CurrentConfiguration<br>

Retrieve the ThreatInsight Configuration

Gets current ThreatInsight configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Retrieve the ThreatInsight Configuration
try {
    $Result = Get-CurrentConfiguration
} catch {
    Write-Host ("Exception occurred when calling Get-CurrentConfiguration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-Configuration"></a>
# **Update-Configuration**
> ThreatInsightConfiguration Update-Configuration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThreatInsightConfiguration] <PSCustomObject><br>

Update the ThreatInsight Configuration

Updates ThreatInsight configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ThreatInsightConfiguration = Initialize-ThreatInsightConfiguration -Action "MyAction" -Created (Get-Date) -ExcludeZones "MyExcludeZones" -LastUpdated (Get-Date) -Links @{ key_example =  } # ThreatInsightConfiguration | 

# Update the ThreatInsight Configuration
try {
    $Result = Update-Configuration -ThreatInsightConfiguration $ThreatInsightConfiguration
} catch {
    Write-Host ("Exception occurred when calling Update-Configuration: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

