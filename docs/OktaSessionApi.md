# Okta.PowerShell.Okta.PowerShell\Api.OktaSessionApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaSession**](OktaSessionApi.md#New-OktaSession) | **POST** /api/v1/sessions | Create a Session with Session Token
[**Stop-OktaSession**](OktaSessionApi.md#Stop-OktaSession) | **DELETE** /api/v1/sessions/{sessionId} | Delete a Session
[**Get-OktaSession**](OktaSessionApi.md#Get-OktaSession) | **GET** /api/v1/sessions/{sessionId} | Retrieve a Session
[**Invoke-OktaRefreshSession**](OktaSessionApi.md#Invoke-OktaRefreshSession) | **POST** /api/v1/sessions/{sessionId}/lifecycle/refresh | Refresh a Session


<a id="New-OktaSession"></a>
# **New-OktaSession**
> Session New-OktaSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateSessionRequest] <PSCustomObject><br>

Create a Session with Session Token

Creates a new session for a user with a valid session token. Use this API if, for example, you want to set the session cookie yourself instead of allowing Okta to set it, or want to hold the session ID in order to delete a session via the API instead of visiting the logout URL.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

$CreateSessionRequest = Initialize-OktaCreateSessionRequest -SessionToken "MySessionToken" # CreateSessionRequest | 

# Create a Session with Session Token
try {
    $Result = New-OktaSession -CreateSessionRequest $CreateSessionRequest
} catch {
    Write-Host ("Exception occurred when calling New-OktaSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Stop-OktaSession"></a>
# **Stop-OktaSession**
> void Stop-OktaSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Delete a Session

End a session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$SessionId = "MySessionId" # String | 

# Delete a Session
try {
    $Result = Stop-OktaSession -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Stop-OktaSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaSession"></a>
# **Get-OktaSession**
> Session Get-OktaSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Retrieve a Session

Get details about a session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$SessionId = "MySessionId" # String | 

# Retrieve a Session
try {
    $Result = Get-OktaSession -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRefreshSession"></a>
# **Invoke-OktaRefreshSession**
> Session Invoke-OktaRefreshSession<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SessionId] <String><br>

Refresh a Session

Refresh a session.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$SessionId = "MySessionId" # String | 

# Refresh a Session
try {
    $Result = Invoke-OktaRefreshSession -SessionId $SessionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRefreshSession: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

