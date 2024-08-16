# Okta.PowerShell.Okta.PowerShell\Api.OktaRateLimitSettingsApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaRateLimitSettingsAdminNotifications**](OktaRateLimitSettingsApi.md#Get-OktaRateLimitSettingsAdminNotifications) | **GET** /api/v1/rate-limit-settings/admin-notifications | Retrieve the Rate Limit Admin Notification Settings
[**Get-OktaRateLimitSettingsPerClient**](OktaRateLimitSettingsApi.md#Get-OktaRateLimitSettingsPerClient) | **GET** /api/v1/rate-limit-settings/per-client | Retrieve the Per-Client Rate Limit Settings
[**Invoke-OktaReplaceRateLimitSettingsAdminNotifications**](OktaRateLimitSettingsApi.md#Invoke-OktaReplaceRateLimitSettingsAdminNotifications) | **PUT** /api/v1/rate-limit-settings/admin-notifications | Replace the Rate Limit Admin Notification Settings
[**Invoke-OktaReplaceRateLimitSettingsPerClient**](OktaRateLimitSettingsApi.md#Invoke-OktaReplaceRateLimitSettingsPerClient) | **PUT** /api/v1/rate-limit-settings/per-client | Replace the Per-Client Rate Limit Settings


<a id="Get-OktaRateLimitSettingsAdminNotifications"></a>
# **Get-OktaRateLimitSettingsAdminNotifications**
> RateLimitAdminNotifications Get-OktaRateLimitSettingsAdminNotifications<br>

Retrieve the Rate Limit Admin Notification Settings

Retrieves the currently configured Rate Limit Admin Notification Settings

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retrieve the Rate Limit Admin Notification Settings
try {
    $Result = Get-OktaRateLimitSettingsAdminNotifications
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRateLimitSettingsAdminNotifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaRateLimitSettingsPerClient"></a>
# **Get-OktaRateLimitSettingsPerClient**
> PerClientRateLimitSettings Get-OktaRateLimitSettingsPerClient<br>

Retrieve the Per-Client Rate Limit Settings

Retrieves the currently configured Per-Client Rate Limit Settings

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retrieve the Per-Client Rate Limit Settings
try {
    $Result = Get-OktaRateLimitSettingsPerClient
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRateLimitSettingsPerClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceRateLimitSettingsAdminNotifications"></a>
# **Invoke-OktaReplaceRateLimitSettingsAdminNotifications**
> RateLimitAdminNotifications Invoke-OktaReplaceRateLimitSettingsAdminNotifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RateLimitAdminNotifications] <PSCustomObject><br>

Replace the Rate Limit Admin Notification Settings

Replaces the Rate Limit Admin Notification Settings and returns the configured properties

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RateLimitAdminNotifications = Initialize-RateLimitAdminNotifications -NotificationsEnabled $false # RateLimitAdminNotifications | 

# Replace the Rate Limit Admin Notification Settings
try {
    $Result = Invoke-OktaReplaceRateLimitSettingsAdminNotifications -RateLimitAdminNotifications $RateLimitAdminNotifications
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceRateLimitSettingsAdminNotifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceRateLimitSettingsPerClient"></a>
# **Invoke-OktaReplaceRateLimitSettingsPerClient**
> PerClientRateLimitSettings Invoke-OktaReplaceRateLimitSettingsPerClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PerClientRateLimitSettings] <PSCustomObject><br>

Replace the Per-Client Rate Limit Settings

Replaces the Per-Client Rate Limit Settings and returns the configured properties

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PerClientRateLimitSettingsUseCaseModeOverrides = Initialize-PerClientRateLimitSettingsUseCaseModeOverrides -LOGINPAGE "DISABLE" -OAUTH2AUTHORIZE "DISABLE" -OIEAPPINTENT "DISABLE"
$PerClientRateLimitSettings = Initialize-PerClientRateLimitSettings -DefaultMode "DISABLE" -UseCaseModeOverrides $PerClientRateLimitSettingsUseCaseModeOverrides # PerClientRateLimitSettings | 

# Replace the Per-Client Rate Limit Settings
try {
    $Result = Invoke-OktaReplaceRateLimitSettingsPerClient -PerClientRateLimitSettings $PerClientRateLimitSettings
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceRateLimitSettingsPerClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

