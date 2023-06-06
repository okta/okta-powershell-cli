# PSOpenAPITools.PSOpenAPITools\Api.EventHookApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateEventHook**](EventHookApi.md#Invoke-ActivateEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/activate | Activate an Event Hook
[**New-EventHook**](EventHookApi.md#New-EventHook) | **POST** /api/v1/eventHooks | Create an Event Hook
[**Invoke-DeactivateEventHook**](EventHookApi.md#Invoke-DeactivateEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/deactivate | Deactivate an Event Hook
[**Invoke-DeleteEventHook**](EventHookApi.md#Invoke-DeleteEventHook) | **DELETE** /api/v1/eventHooks/{eventHookId} | Delete an Event Hook
[**Get-EventHook**](EventHookApi.md#Get-EventHook) | **GET** /api/v1/eventHooks/{eventHookId} | Retrieve an Event Hook
[**Invoke-ListEventHooks**](EventHookApi.md#Invoke-ListEventHooks) | **GET** /api/v1/eventHooks | List all Event Hooks
[**Update-EventHook**](EventHookApi.md#Update-EventHook) | **PUT** /api/v1/eventHooks/{eventHookId} | Replace an Event Hook
[**Test-EventHook**](EventHookApi.md#Test-EventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/verify | Verify an Event Hook


<a name="Invoke-ActivateEventHook"></a>
# **Invoke-ActivateEventHook**
> EventHook Invoke-ActivateEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Activate an Event Hook

Activates an event hook

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

$EventHookId = "MyEventHookId" # String | 

# Activate an Event Hook
try {
    $Result = Invoke-ActivateEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-EventHook"></a>
# **New-EventHook**
> EventHook New-EventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHook] <PSCustomObject><br>

Create an Event Hook

Creates an event hook

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

$EventHookChannelConfigAuthScheme = Initialize-EventHookChannelConfigAuthScheme -Key "MyKey" -Type "HEADER" -Value "MyValue"
$EventHookChannelConfigHeader = Initialize-EventHookChannelConfigHeader -Key "MyKey" -Value "MyValue"
$EventHookChannelConfig = Initialize-EventHookChannelConfig -AuthScheme $EventHookChannelConfigAuthScheme -Headers $EventHookChannelConfigHeader -Uri "MyUri"

$EventHookChannel = Initialize-EventHookChannel -Config $EventHookChannelConfig -Type "HTTP" -Version "MyVersion"

$EventSubscriptions = Initialize-EventSubscriptions -Items "MyItems" -Type "EVENT_TYPE"
$EventHook = Initialize-EventHook -Channel $EventHookChannel -Created (Get-Date) -CreatedBy "MyCreatedBy" -Events $EventSubscriptions -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -VerificationStatus "UNVERIFIED" -Links @{ key_example =  } # EventHook | 

# Create an Event Hook
try {
    $Result = New-EventHook -EventHook $EventHook
} catch {
    Write-Host ("Exception occurred when calling New-EventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHook** | [**EventHook**](EventHook.md)|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateEventHook"></a>
# **Invoke-DeactivateEventHook**
> EventHook Invoke-DeactivateEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Deactivate an Event Hook

Deactivates an event hook

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

$EventHookId = "MyEventHookId" # String | 

# Deactivate an Event Hook
try {
    $Result = Invoke-DeactivateEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteEventHook"></a>
# **Invoke-DeleteEventHook**
> void Invoke-DeleteEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Delete an Event Hook

Deletes an event hook

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

$EventHookId = "MyEventHookId" # String | 

# Delete an Event Hook
try {
    $Result = Invoke-DeleteEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-EventHook"></a>
# **Get-EventHook**
> EventHook Get-EventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Retrieve an Event Hook

Retrieves an event hook

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

$EventHookId = "MyEventHookId" # String | 

# Retrieve an Event Hook
try {
    $Result = Get-EventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Get-EventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListEventHooks"></a>
# **Invoke-ListEventHooks**
> EventHook[] Invoke-ListEventHooks<br>

List all Event Hooks

Lists all event hooks

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


# List all Event Hooks
try {
    $Result = Invoke-ListEventHooks
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListEventHooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EventHook[]**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-EventHook"></a>
# **Update-EventHook**
> EventHook Update-EventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHook] <PSCustomObject><br>

Replace an Event Hook

Replaces an event hook

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

$EventHookId = "MyEventHookId" # String | 
$EventHookChannelConfigAuthScheme = Initialize-EventHookChannelConfigAuthScheme -Key "MyKey" -Type "HEADER" -Value "MyValue"
$EventHookChannelConfigHeader = Initialize-EventHookChannelConfigHeader -Key "MyKey" -Value "MyValue"
$EventHookChannelConfig = Initialize-EventHookChannelConfig -AuthScheme $EventHookChannelConfigAuthScheme -Headers $EventHookChannelConfigHeader -Uri "MyUri"

$EventHookChannel = Initialize-EventHookChannel -Config $EventHookChannelConfig -Type "HTTP" -Version "MyVersion"

$EventSubscriptions = Initialize-EventSubscriptions -Items "MyItems" -Type "EVENT_TYPE"
$EventHook = Initialize-EventHook -Channel $EventHookChannel -Created (Get-Date) -CreatedBy "MyCreatedBy" -Events $EventSubscriptions -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -VerificationStatus "UNVERIFIED" -Links @{ key_example =  } # EventHook | 

# Replace an Event Hook
try {
    $Result = Update-EventHook -EventHookId $EventHookId -EventHook $EventHook
} catch {
    Write-Host ("Exception occurred when calling Update-EventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 
 **EventHook** | [**EventHook**](EventHook.md)|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-EventHook"></a>
# **Test-EventHook**
> EventHook Test-EventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Verify an Event Hook

Verifies an event hook

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

$EventHookId = "MyEventHookId" # String | 

# Verify an Event Hook
try {
    $Result = Test-EventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Test-EventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

