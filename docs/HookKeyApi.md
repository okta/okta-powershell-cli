# PSOpenAPITools.PSOpenAPITools\Api.HookKeyApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-HookKey**](HookKeyApi.md#Add-HookKey) | **POST** /api/v1/hook-keys | Create a key
[**Invoke-DeleteHookKey**](HookKeyApi.md#Invoke-DeleteHookKey) | **DELETE** /api/v1/hook-keys/{hookKeyId} | Delete a key
[**Get-HookKey**](HookKeyApi.md#Get-HookKey) | **GET** /api/v1/hook-keys/{hookKeyId} | Retrieve a key
[**Get-PublicKey**](HookKeyApi.md#Get-PublicKey) | **GET** /api/v1/hook-keys/public/{keyId} | Retrieve a public key
[**Invoke-ListHookKeys**](HookKeyApi.md#Invoke-ListHookKeys) | **GET** /api/v1/hook-keys | List all keys
[**Invoke-ReplaceHookKey**](HookKeyApi.md#Invoke-ReplaceHookKey) | **PUT** /api/v1/hook-keys/{hookKeyId} | Replace a key


<a name="Add-HookKey"></a>
# **Add-HookKey**
> HookKey Add-HookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyRequest] <PSCustomObject><br>

Create a key

Creates a key

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

$KeyRequest = Initialize-KeyRequest -Name "MyName" # KeyRequest | 

# Create a key
try {
    $Result = Add-HookKey -KeyRequest $KeyRequest
} catch {
    Write-Host ("Exception occurred when calling Add-HookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KeyRequest** | [**KeyRequest**](KeyRequest.md)|  | 

### Return type

[**HookKey**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteHookKey"></a>
# **Invoke-DeleteHookKey**
> void Invoke-DeleteHookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HookKeyId] <String><br>

Delete a key

Deletes a key by `hookKeyId`. Once deleted, the Hook Key is unrecoverable. As a safety precaution, unused keys are eligible for deletion.

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

$HookKeyId = "MyHookKeyId" # String | 

# Delete a key
try {
    $Result = Invoke-DeleteHookKey -HookKeyId $HookKeyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteHookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HookKeyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-HookKey"></a>
# **Get-HookKey**
> HookKey Get-HookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HookKeyId] <String><br>

Retrieve a key

Retrieves a key by `hookKeyId`

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

$HookKeyId = "MyHookKeyId" # String | 

# Retrieve a key
try {
    $Result = Get-HookKey -HookKeyId $HookKeyId
} catch {
    Write-Host ("Exception occurred when calling Get-HookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HookKeyId** | **String**|  | 

### Return type

[**HookKey**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PublicKey"></a>
# **Get-PublicKey**
> JsonWebKey Get-PublicKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve a public key

Retrieves a public key by `keyId`

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

$KeyId = "MyKeyId" # String | 

# Retrieve a public key
try {
    $Result = Get-PublicKey -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-PublicKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KeyId** | **String**|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListHookKeys"></a>
# **Invoke-ListHookKeys**
> HookKey[] Invoke-ListHookKeys<br>

List all keys

Lists all keys

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


# List all keys
try {
    $Result = Invoke-ListHookKeys
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListHookKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HookKey[]**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceHookKey"></a>
# **Invoke-ReplaceHookKey**
> HookKey Invoke-ReplaceHookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HookKeyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyRequest] <PSCustomObject><br>

Replace a key

Replace a key by `hookKeyId`

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

$HookKeyId = "MyHookKeyId" # String | 
$KeyRequest = Initialize-KeyRequest -Name "MyName" # KeyRequest | 

# Replace a key
try {
    $Result = Invoke-ReplaceHookKey -HookKeyId $HookKeyId -KeyRequest $KeyRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceHookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HookKeyId** | **String**|  | 
 **KeyRequest** | [**KeyRequest**](KeyRequest.md)|  | 

### Return type

[**HookKey**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

