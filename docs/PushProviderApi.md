# PSOpenAPITools.PSOpenAPITools\Api.PushProviderApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PushProvider**](PushProviderApi.md#New-PushProvider) | **POST** /api/v1/push-providers | Create a Push Provider
[**Invoke-DeletePushProvider**](PushProviderApi.md#Invoke-DeletePushProvider) | **DELETE** /api/v1/push-providers/{pushProviderId} | Delete a Push Provider
[**Get-PushProvider**](PushProviderApi.md#Get-PushProvider) | **GET** /api/v1/push-providers/{pushProviderId} | Retrieve a Push Provider
[**Invoke-ListPushProviders**](PushProviderApi.md#Invoke-ListPushProviders) | **GET** /api/v1/push-providers | List all Push Providers
[**Update-PushProvider**](PushProviderApi.md#Update-PushProvider) | **PUT** /api/v1/push-providers/{pushProviderId} | Replace a Push Provider


<a name="New-PushProvider"></a>
# **New-PushProvider**
> PushProvider New-PushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProvider] <PSCustomObject><br>

Create a Push Provider

Adds a new push provider to your organization.

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

$PushProvider = Initialize-PushProvider -Id "MyId" -LastUpdatedDate "MyLastUpdatedDate" -Name "MyName" -ProviderType "APNS" -Links $ApiTokenLink # PushProvider | 

# Create a Push Provider
try {
    $Result = New-PushProvider -PushProvider $PushProvider
} catch {
    Write-Host ("Exception occurred when calling New-PushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PushProvider** | [**PushProvider**](PushProvider.md)|  | 

### Return type

[**PushProvider**](PushProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeletePushProvider"></a>
# **Invoke-DeletePushProvider**
> void Invoke-DeletePushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProviderId] <String><br>

Delete a Push Provider

Delete a push provider by `pushProviderId`. If the push provider is currently being used in the org by a custom authenticator, the delete will not be allowed.

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

$PushProviderId = "MyPushProviderId" # String | Id of the push provider

# Delete a Push Provider
try {
    $Result = Invoke-DeletePushProvider -PushProviderId $PushProviderId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PushProviderId** | **String**| Id of the push provider | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PushProvider"></a>
# **Get-PushProvider**
> PushProvider Get-PushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProviderId] <String><br>

Retrieve a Push Provider

Fetches a push provider by `pushProviderId`.

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

$PushProviderId = "MyPushProviderId" # String | Id of the push provider

# Retrieve a Push Provider
try {
    $Result = Get-PushProvider -PushProviderId $PushProviderId
} catch {
    Write-Host ("Exception occurred when calling Get-PushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PushProviderId** | **String**| Id of the push provider | 

### Return type

[**PushProvider**](PushProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListPushProviders"></a>
# **Invoke-ListPushProviders**
> PushProvider[] Invoke-ListPushProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>

List all Push Providers

Enumerates push providers in your organization.

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

$Type = "APNS" # ProviderType | Filters push providers by `providerType` (optional)

# List all Push Providers
try {
    $Result = Invoke-ListPushProviders -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListPushProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | [**ProviderType**](ProviderType.md)| Filters push providers by &#x60;providerType&#x60; | [optional] 

### Return type

[**PushProvider[]**](PushProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-PushProvider"></a>
# **Update-PushProvider**
> PushProvider Update-PushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProviderId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProvider] <PSCustomObject><br>

Replace a Push Provider

Updates a push provider by `pushProviderId`.

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

$PushProviderId = "MyPushProviderId" # String | Id of the push provider
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$PushProvider = Initialize-PushProvider -Id "MyId" -LastUpdatedDate "MyLastUpdatedDate" -Name "MyName" -ProviderType "APNS" -Links $ApiTokenLink # PushProvider | 

# Replace a Push Provider
try {
    $Result = Update-PushProvider -PushProviderId $PushProviderId -PushProvider $PushProvider
} catch {
    Write-Host ("Exception occurred when calling Update-PushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PushProviderId** | **String**| Id of the push provider | 
 **PushProvider** | [**PushProvider**](PushProvider.md)|  | 

### Return type

[**PushProvider**](PushProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

