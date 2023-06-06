# PSOpenAPITools.PSOpenAPITools\Api.EmailDomainApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-EmailDomain**](EmailDomainApi.md#New-EmailDomain) | **POST** /api/v1/email-domains | Create an Email Domain
[**Invoke-DeleteEmailDomain**](EmailDomainApi.md#Invoke-DeleteEmailDomain) | **DELETE** /api/v1/email-domains/{emailDomainId} | Delete an Email Domain
[**Get-EmailDomain**](EmailDomainApi.md#Get-EmailDomain) | **GET** /api/v1/email-domains/{emailDomainId} | Retrieve a Email Domain
[**Invoke-ListEmailDomainBrands**](EmailDomainApi.md#Invoke-ListEmailDomainBrands) | **GET** /api/v1/email-domains/{emailDomainId}/brands | List all brands linked to an email domain
[**Invoke-ListEmailDomains**](EmailDomainApi.md#Invoke-ListEmailDomains) | **GET** /api/v1/email-domains | List all email domains
[**Update-EmailDomain**](EmailDomainApi.md#Update-EmailDomain) | **PUT** /api/v1/email-domains/{emailDomainId} | Replace an Email Domain
[**Test-EmailDomain**](EmailDomainApi.md#Test-EmailDomain) | **POST** /api/v1/email-domains/{emailDomainId}/verify | Verify an Email Domain


<a name="New-EmailDomain"></a>
# **New-EmailDomain**
> EmailDomainResponse New-EmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomain] <PSCustomObject><br>

Create an Email Domain

Creates a custom email domain.

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

$EmailDomain = Initialize-EmailDomain -Domain "MyDomain" -DisplayName "MyDisplayName" -UserName "MyUserName" # EmailDomain | 

# Create an Email Domain
try {
    $Result = New-EmailDomain -EmailDomain $EmailDomain
} catch {
    Write-Host ("Exception occurred when calling New-EmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailDomain** | [**EmailDomain**](EmailDomain.md)|  | 

### Return type

[**EmailDomainResponse**](EmailDomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteEmailDomain"></a>
# **Invoke-DeleteEmailDomain**
> void Invoke-DeleteEmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

Delete an Email Domain

Deletes an Email Domain by `emailDomainId`.

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

$EmailDomainId = "MyEmailDomainId" # String | 

# Delete an Email Domain
try {
    $Result = Invoke-DeleteEmailDomain -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteEmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailDomainId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-EmailDomain"></a>
# **Get-EmailDomain**
> EmailDomainResponse Get-EmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

Retrieve a Email Domain

Fetches an Email Domain by `emailDomainId`.

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

$EmailDomainId = "MyEmailDomainId" # String | 

# Retrieve a Email Domain
try {
    $Result = Get-EmailDomain -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Get-EmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailDomainId** | **String**|  | 

### Return type

[**EmailDomainResponse**](EmailDomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListEmailDomainBrands"></a>
# **Invoke-ListEmailDomainBrands**
> Brand[] Invoke-ListEmailDomainBrands<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

List all brands linked to an email domain

List all brands linked to an email domain.

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

$EmailDomainId = "MyEmailDomainId" # String | 

# List all brands linked to an email domain
try {
    $Result = Invoke-ListEmailDomainBrands -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListEmailDomainBrands: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailDomainId** | **String**|  | 

### Return type

[**Brand[]**](Brand.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListEmailDomains"></a>
# **Invoke-ListEmailDomains**
> EmailDomainListResponse Invoke-ListEmailDomains<br>

List all email domains

List all the email domains in your org.

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


# List all email domains
try {
    $Result = Invoke-ListEmailDomains
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListEmailDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailDomainListResponse**](EmailDomainListResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-EmailDomain"></a>
# **Update-EmailDomain**
> EmailDomainResponse Update-EmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateEmailDomain] <PSCustomObject><br>

Replace an Email Domain

Replaces an email domain by `emailDomainId`

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

$EmailDomainId = "MyEmailDomainId" # String | 
$UpdateEmailDomain = Initialize-UpdateEmailDomain -DisplayName "MyDisplayName" -UserName "MyUserName" # UpdateEmailDomain | 

# Replace an Email Domain
try {
    $Result = Update-EmailDomain -EmailDomainId $EmailDomainId -UpdateEmailDomain $UpdateEmailDomain
} catch {
    Write-Host ("Exception occurred when calling Update-EmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailDomainId** | **String**|  | 
 **UpdateEmailDomain** | [**UpdateEmailDomain**](UpdateEmailDomain.md)|  | 

### Return type

[**EmailDomainResponse**](EmailDomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-EmailDomain"></a>
# **Test-EmailDomain**
> EmailDomainResponse Test-EmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

Verify an Email Domain

Verifies an Email Domain by `emailDomainId`.

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

$EmailDomainId = "MyEmailDomainId" # String | 

# Verify an Email Domain
try {
    $Result = Test-EmailDomain -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Test-EmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailDomainId** | **String**|  | 

### Return type

[**EmailDomainResponse**](EmailDomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

