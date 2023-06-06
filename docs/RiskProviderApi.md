# PSOpenAPITools.PSOpenAPITools\Api.RiskProviderApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-RiskProvider**](RiskProviderApi.md#New-RiskProvider) | **POST** /api/v1/risk/providers | Create a Risk Provider
[**Invoke-DeleteRiskProvider**](RiskProviderApi.md#Invoke-DeleteRiskProvider) | **DELETE** /api/v1/risk/providers/{riskProviderId} | Delete a Risk Provider
[**Get-RiskProvider**](RiskProviderApi.md#Get-RiskProvider) | **GET** /api/v1/risk/providers/{riskProviderId} | Retrieve a Risk Provider
[**Invoke-ListRiskProviders**](RiskProviderApi.md#Invoke-ListRiskProviders) | **GET** /api/v1/risk/providers | List all Risk Providers
[**Update-RiskProvider**](RiskProviderApi.md#Update-RiskProvider) | **PUT** /api/v1/risk/providers/{riskProviderId} | Replace a Risk Provider


<a name="New-RiskProvider"></a>
# **New-RiskProvider**
> RiskProvider New-RiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Risk Provider

Creates a risk provider. A maximum of 3 providers can be created. By default, one risk provider is created by Okta.

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

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$RiskProvider = Initialize-RiskProvider -Action "enforce_and_log" -ClientId "MyClientId" -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Links $ApiTokenLink # RiskProvider | 

# Create a Risk Provider
try {
    $Result = New-RiskProvider -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-RiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**RiskProvider**](RiskProvider.md)|  | 

### Return type

[**RiskProvider**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteRiskProvider"></a>
# **Invoke-DeleteRiskProvider**
> void Invoke-DeleteRiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RiskProviderId] <String><br>

Delete a Risk Provider

Delete a CAPTCHA instance by `riskProviderId`.

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

$RiskProviderId = "00rp12r4skkjkjgsn" # String | `id` of the risk provider

# Delete a Risk Provider
try {
    $Result = Invoke-DeleteRiskProvider -RiskProviderId $RiskProviderId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RiskProviderId** | **String**| &#x60;id&#x60; of the risk provider | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-RiskProvider"></a>
# **Get-RiskProvider**
> RiskProvider Get-RiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RiskProviderId] <String><br>

Retrieve a Risk Provider

Retrieves a risk provider by `riskProviderId`.

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

$RiskProviderId = "00rp12r4skkjkjgsn" # String | `id` of the risk provider

# Retrieve a Risk Provider
try {
    $Result = Get-RiskProvider -RiskProviderId $RiskProviderId
} catch {
    Write-Host ("Exception occurred when calling Get-RiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RiskProviderId** | **String**| &#x60;id&#x60; of the risk provider | 

### Return type

[**RiskProvider**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListRiskProviders"></a>
# **Invoke-ListRiskProviders**
> RiskProvider[] Invoke-ListRiskProviders<br>

List all Risk Providers

Lists all Risk Providers

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


# List all Risk Providers
try {
    $Result = Invoke-ListRiskProviders
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListRiskProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RiskProvider[]**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-RiskProvider"></a>
# **Update-RiskProvider**
> RiskProvider Update-RiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RiskProviderId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a Risk Provider

Replaces a risk provider by `riskProviderId`.

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

$RiskProviderId = "00rp12r4skkjkjgsn" # String | `id` of the risk provider
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$RiskProvider = Initialize-RiskProvider -Action "enforce_and_log" -ClientId "MyClientId" -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Links $ApiTokenLink # RiskProvider | 

# Replace a Risk Provider
try {
    $Result = Update-RiskProvider -RiskProviderId $RiskProviderId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Update-RiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RiskProviderId** | **String**| &#x60;id&#x60; of the risk provider | 
 **Instance** | [**RiskProvider**](RiskProvider.md)|  | 

### Return type

[**RiskProvider**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

