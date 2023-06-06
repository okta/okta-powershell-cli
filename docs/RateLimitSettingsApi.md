# PSOpenAPITools.PSOpenAPITools\Api.RateLimitSettingsApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-RateLimitSettingsAdminNotifications**](RateLimitSettingsApi.md#Get-RateLimitSettingsAdminNotifications) | **GET** /api/v1/rate-limit-settings/admin-notifications | Retrieve the Rate Limit Admin Notification Settings
[**Get-RateLimitSettingsPerClient**](RateLimitSettingsApi.md#Get-RateLimitSettingsPerClient) | **GET** /api/v1/rate-limit-settings/per-client | Retrieve the Per-Client Rate Limit Settings
[**Invoke-ReplaceRateLimitSettingsAdminNotifications**](RateLimitSettingsApi.md#Invoke-ReplaceRateLimitSettingsAdminNotifications) | **PUT** /api/v1/rate-limit-settings/admin-notifications | Replace the Rate Limit Admin Notification Settings
[**Invoke-ReplaceRateLimitSettingsPerClient**](RateLimitSettingsApi.md#Invoke-ReplaceRateLimitSettingsPerClient) | **PUT** /api/v1/rate-limit-settings/per-client | Replace the Per-Client Rate Limit Settings


<a name="Get-RateLimitSettingsAdminNotifications"></a>
# **Get-RateLimitSettingsAdminNotifications**
> RateLimitAdminNotifications Get-RateLimitSettingsAdminNotifications<br>

Retrieve the Rate Limit Admin Notification Settings

Retrieves the currently configured Rate Limit Admin Notification Settings

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


# Retrieve the Rate Limit Admin Notification Settings
try {
    $Result = Get-RateLimitSettingsAdminNotifications
} catch {
    Write-Host ("Exception occurred when calling Get-RateLimitSettingsAdminNotifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RateLimitAdminNotifications**](RateLimitAdminNotifications.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-RateLimitSettingsPerClient"></a>
# **Get-RateLimitSettingsPerClient**
> PerClientRateLimitSettings Get-RateLimitSettingsPerClient<br>

Retrieve the Per-Client Rate Limit Settings

Retrieves the currently configured Per-Client Rate Limit Settings

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


# Retrieve the Per-Client Rate Limit Settings
try {
    $Result = Get-RateLimitSettingsPerClient
} catch {
    Write-Host ("Exception occurred when calling Get-RateLimitSettingsPerClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PerClientRateLimitSettings**](PerClientRateLimitSettings.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceRateLimitSettingsAdminNotifications"></a>
# **Invoke-ReplaceRateLimitSettingsAdminNotifications**
> RateLimitAdminNotifications Invoke-ReplaceRateLimitSettingsAdminNotifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RateLimitAdminNotifications] <PSCustomObject><br>

Replace the Rate Limit Admin Notification Settings

Replaces the Rate Limit Admin Notification Settings and returns the configured properties

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

$RateLimitAdminNotifications = Initialize-RateLimitAdminNotifications -NotificationsEnabled $false # RateLimitAdminNotifications | 

# Replace the Rate Limit Admin Notification Settings
try {
    $Result = Invoke-ReplaceRateLimitSettingsAdminNotifications -RateLimitAdminNotifications $RateLimitAdminNotifications
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceRateLimitSettingsAdminNotifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RateLimitAdminNotifications** | [**RateLimitAdminNotifications**](RateLimitAdminNotifications.md)|  | 

### Return type

[**RateLimitAdminNotifications**](RateLimitAdminNotifications.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceRateLimitSettingsPerClient"></a>
# **Invoke-ReplaceRateLimitSettingsPerClient**
> PerClientRateLimitSettings Invoke-ReplaceRateLimitSettingsPerClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PerClientRateLimitSettings] <PSCustomObject><br>

Replace the Per-Client Rate Limit Settings

Replaces the Per-Client Rate Limit Settings and returns the configured properties

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

$PerClientRateLimitSettingsUseCaseModeOverrides = Initialize-PerClientRateLimitSettingsUseCaseModeOverrides -LOGINPAGE "DISABLE" -OAUTH2AUTHORIZE "DISABLE" -OIEAPPINTENT "DISABLE"
$PerClientRateLimitSettings = Initialize-PerClientRateLimitSettings -DefaultMode "DISABLE" -UseCaseModeOverrides $PerClientRateLimitSettingsUseCaseModeOverrides # PerClientRateLimitSettings | 

# Replace the Per-Client Rate Limit Settings
try {
    $Result = Invoke-ReplaceRateLimitSettingsPerClient -PerClientRateLimitSettings $PerClientRateLimitSettings
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceRateLimitSettingsPerClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PerClientRateLimitSettings** | [**PerClientRateLimitSettings**](PerClientRateLimitSettings.md)|  | 

### Return type

[**PerClientRateLimitSettings**](PerClientRateLimitSettings.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

