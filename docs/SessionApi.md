# PSOpenAPITools.PSOpenAPITools\Api.SessionApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Session**](SessionApi.md#New-Session) | **POST** /api/v1/sessions | Create a Session with Session Token
[**Stop-Session**](SessionApi.md#Stop-Session) | **DELETE** /api/v1/sessions/{sessionId} | Delete a Session
[**Get-Session**](SessionApi.md#Get-Session) | **GET** /api/v1/sessions/{sessionId} | Retrieve a Session
[**Invoke-RefreshSession**](SessionApi.md#Invoke-RefreshSession) | **POST** /api/v1/sessions/{sessionId}/lifecycle/refresh | Refresh a Session


<a name="New-Session"></a>
# **New-Session**
> Session New-Session<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateSessionRequest] <PSCustomObject><br>

Create a Session with Session Token

Creates a new session for a user with a valid session token. Use this API if, for example, you want to set the session cookie yourself instead of allowing Okta to set it, or want to hold the session ID in order to delete a session via the API instead of visiting the logout URL.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$CreateSessionRequest = Initialize-CreateSessionRequest -SessionToken "MySessionToken" # CreateSessionRequest | 

# Create a Session with Session Token
try {
    $Result = New-Session -CreateSessionRequest $CreateSessionRequest
} catch {
    Write-Host ("Exception occurred when calling New-Session: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateSessionRequest** | [**CreateSessionRequest**](CreateSessionRequest.md)|  | 

### Return type

[**Session**](Session.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Stop-Session"></a>
# **Stop-Session**
> void Stop-Session<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Delete a Session

End a session.

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

$SessionId = "MySessionId" # String | 

# Delete a Session
try {
    $Result = Stop-Session -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Stop-Session: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Session"></a>
# **Get-Session**
> Session Get-Session<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Retrieve a Session

Get details about a session.

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

$SessionId = "MySessionId" # String | 

# Retrieve a Session
try {
    $Result = Get-Session -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Get-Session: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**|  | 

### Return type

[**Session**](Session.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RefreshSession"></a>
# **Invoke-RefreshSession**
> Session Invoke-RefreshSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Refresh a Session

Refresh a session.

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

$SessionId = "MySessionId" # String | 

# Refresh a Session
try {
    $Result = Invoke-RefreshSession -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RefreshSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SessionId** | **String**|  | 

### Return type

[**Session**](Session.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

