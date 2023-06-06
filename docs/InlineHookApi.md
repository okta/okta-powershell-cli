# PSOpenAPITools.PSOpenAPITools\Api.InlineHookApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateInlineHook**](InlineHookApi.md#Invoke-ActivateInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/lifecycle/activate | Activate an Inline Hook
[**New-InlineHook**](InlineHookApi.md#New-InlineHook) | **POST** /api/v1/inlineHooks | Create an Inline Hook
[**Invoke-DeactivateInlineHook**](InlineHookApi.md#Invoke-DeactivateInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate | Deactivate an Inline Hook
[**Invoke-DeleteInlineHook**](InlineHookApi.md#Invoke-DeleteInlineHook) | **DELETE** /api/v1/inlineHooks/{inlineHookId} | Delete an Inline Hook
[**Invoke-ExecuteInlineHook**](InlineHookApi.md#Invoke-ExecuteInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/execute | Execute an Inline Hook
[**Get-InlineHook**](InlineHookApi.md#Get-InlineHook) | **GET** /api/v1/inlineHooks/{inlineHookId} | Retrieve an Inline Hook
[**Invoke-ListInlineHooks**](InlineHookApi.md#Invoke-ListInlineHooks) | **GET** /api/v1/inlineHooks | List all Inline Hooks
[**Update-InlineHook**](InlineHookApi.md#Update-InlineHook) | **PUT** /api/v1/inlineHooks/{inlineHookId} | Replace an Inline Hook


<a name="Invoke-ActivateInlineHook"></a>
# **Invoke-ActivateInlineHook**
> InlineHook Invoke-ActivateInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Activate an Inline Hook

Activates the inline hook by `inlineHookId`

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

$InlineHookId = "MyInlineHookId" # String | 

# Activate an Inline Hook
try {
    $Result = Invoke-ActivateInlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-InlineHook"></a>
# **New-InlineHook**
> InlineHook New-InlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHook] <PSCustomObject><br>

Create an Inline Hook

Creates an inline hook

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

$InlineHookChannel = Initialize-InlineHookChannel -Type "HTTP" -Version "MyVersion"
$InlineHook = Initialize-InlineHook -Channel $InlineHookChannel -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "com.okta.import.transform" -Version "MyVersion" -Links @{ key_example =  } # InlineHook | 

# Create an Inline Hook
try {
    $Result = New-InlineHook -InlineHook $InlineHook
} catch {
    Write-Host ("Exception occurred when calling New-InlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHook** | [**InlineHook**](InlineHook.md)|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateInlineHook"></a>
# **Invoke-DeactivateInlineHook**
> InlineHook Invoke-DeactivateInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Deactivate an Inline Hook

Deactivates the inline hook by `inlineHookId`

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

$InlineHookId = "MyInlineHookId" # String | 

# Deactivate an Inline Hook
try {
    $Result = Invoke-DeactivateInlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteInlineHook"></a>
# **Invoke-DeleteInlineHook**
> void Invoke-DeleteInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Delete an Inline Hook

Deletes an inline hook by `inlineHookId`. Once deleted, the Inline Hook is unrecoverable. As a safety precaution, only Inline Hooks with a status of INACTIVE are eligible for deletion.

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

$InlineHookId = "MyInlineHookId" # String | 

# Delete an Inline Hook
try {
    $Result = Invoke-DeleteInlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ExecuteInlineHook"></a>
# **Invoke-ExecuteInlineHook**
> InlineHookResponse Invoke-ExecuteInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PayloadData] <SystemCollectionsHashtable><br>

Execute an Inline Hook

Executes the inline hook by `inlineHookId` using the request body as the input. This will send the provided data through the Channel and return a response if it matches the correct data contract. This execution endpoint should only be used for testing purposes.

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

$InlineHookId = "MyInlineHookId" # String | 
$PayloadData = @{ key_example = ... } # SystemCollectionsHashtable | 

# Execute an Inline Hook
try {
    $Result = Invoke-ExecuteInlineHook -InlineHookId $InlineHookId -PayloadData $PayloadData
} catch {
    Write-Host ("Exception occurred when calling Invoke-ExecuteInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 
 **PayloadData** | **SystemCollectionsHashtable**|  | 

### Return type

[**InlineHookResponse**](InlineHookResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-InlineHook"></a>
# **Get-InlineHook**
> InlineHook Get-InlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Retrieve an Inline Hook

Retrieves an inline hook by `inlineHookId`

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

$InlineHookId = "MyInlineHookId" # String | 

# Retrieve an Inline Hook
try {
    $Result = Get-InlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Get-InlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListInlineHooks"></a>
# **Invoke-ListInlineHooks**
> InlineHook[] Invoke-ListInlineHooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

List all Inline Hooks

Lists all inline hooks

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

$Type = "MyType" # String |  (optional)

# List all Inline Hooks
try {
    $Result = Invoke-ListInlineHooks -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListInlineHooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | **String**|  | [optional] 

### Return type

[**InlineHook[]**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-InlineHook"></a>
# **Update-InlineHook**
> InlineHook Update-InlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHook] <PSCustomObject><br>

Replace an Inline Hook

Replaces an inline hook by `inlineHookId`

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

$InlineHookId = "MyInlineHookId" # String | 
$InlineHookChannel = Initialize-InlineHookChannel -Type "HTTP" -Version "MyVersion"
$InlineHook = Initialize-InlineHook -Channel $InlineHookChannel -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "com.okta.import.transform" -Version "MyVersion" -Links @{ key_example =  } # InlineHook | 

# Replace an Inline Hook
try {
    $Result = Update-InlineHook -InlineHookId $InlineHookId -InlineHook $InlineHook
} catch {
    Write-Host ("Exception occurred when calling Update-InlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 
 **InlineHook** | [**InlineHook**](InlineHook.md)|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

