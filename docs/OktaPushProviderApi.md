# Okta.PowerShell.Okta.PowerShell/Api.OktaPushProviderApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaPushProvider**](OktaPushProviderApi.md#New-OktaPushProvider) | **POST** /api/v1/push-providers | Create a Push Provider
[**Invoke-OktaDeletePushProvider**](OktaPushProviderApi.md#Invoke-OktaDeletePushProvider) | **DELETE** /api/v1/push-providers/{pushProviderId} | Delete a Push Provider
[**Get-OktaPushProvider**](OktaPushProviderApi.md#Get-OktaPushProvider) | **GET** /api/v1/push-providers/{pushProviderId} | Retrieve a Push Provider
[**Invoke-OktaListPushProviders**](OktaPushProviderApi.md#Invoke-OktaListPushProviders) | **GET** /api/v1/push-providers | List all Push Providers
[**Update-OktaPushProvider**](OktaPushProviderApi.md#Update-OktaPushProvider) | **PUT** /api/v1/push-providers/{pushProviderId} | Replace a Push Provider


<a id="New-OktaPushProvider"></a>
# **New-OktaPushProvider**
> PushProvider New-OktaPushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProvider] <PSCustomObject><br>

Create a Push Provider

Adds a new push provider to your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$PushProvider = Initialize-PushProvider -Id "MyId" -LastUpdatedDate "MyLastUpdatedDate" -Name "MyName" -ProviderType "APNS" -Links $ApiTokenLink # PushProvider | 

# Create a Push Provider
try {
    $Result = New-OktaPushProvider -PushProvider $PushProvider
} catch {
    Write-Host ("Exception occurred when calling New-OktaPushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeletePushProvider"></a>
# **Invoke-OktaDeletePushProvider**
> void Invoke-OktaDeletePushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProviderId] <String><br>

Delete a Push Provider

Delete a push provider by `pushProviderId`. If the push provider is currently being used in the org by a custom authenticator, the delete will not be allowed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PushProviderId = "MyPushProviderId" # String | Id of the push provider

# Delete a Push Provider
try {
    $Result = Invoke-OktaDeletePushProvider -PushProviderId $PushProviderId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeletePushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaPushProvider"></a>
# **Get-OktaPushProvider**
> PushProvider Get-OktaPushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProviderId] <String><br>

Retrieve a Push Provider

Fetches a push provider by `pushProviderId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PushProviderId = "MyPushProviderId" # String | Id of the push provider

# Retrieve a Push Provider
try {
    $Result = Get-OktaPushProvider -PushProviderId $PushProviderId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaPushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListPushProviders"></a>
# **Invoke-OktaListPushProviders**
> PushProvider[] Invoke-OktaListPushProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>

List all Push Providers

Enumerates push providers in your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Type = "APNS" # ProviderType | Filters push providers by `providerType` (optional)

# List all Push Providers
try {
    $Result = Invoke-OktaListPushProviders -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListPushProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaPushProvider"></a>
# **Update-OktaPushProvider**
> PushProvider Update-OktaPushProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProviderId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PushProvider] <PSCustomObject><br>

Replace a Push Provider

Updates a push provider by `pushProviderId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PushProviderId = "MyPushProviderId" # String | Id of the push provider
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$PushProvider = Initialize-PushProvider -Id "MyId" -LastUpdatedDate "MyLastUpdatedDate" -Name "MyName" -ProviderType "APNS" -Links $ApiTokenLink # PushProvider | 

# Replace a Push Provider
try {
    $Result = Update-OktaPushProvider -PushProviderId $PushProviderId -PushProvider $PushProvider
} catch {
    Write-Host ("Exception occurred when calling Update-OktaPushProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

