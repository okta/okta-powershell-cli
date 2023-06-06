# PSOpenAPITools.PSOpenAPITools\Api.TrustedOriginApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateOrigin**](TrustedOriginApi.md#Invoke-ActivateOrigin) | **POST** /api/v1/trustedOrigins/{trustedOriginId}/lifecycle/activate | Activate a Trusted Origin
[**New-Origin**](TrustedOriginApi.md#New-Origin) | **POST** /api/v1/trustedOrigins | Create a Trusted Origin
[**Invoke-DeactivateOrigin**](TrustedOriginApi.md#Invoke-DeactivateOrigin) | **POST** /api/v1/trustedOrigins/{trustedOriginId}/lifecycle/deactivate | Deactivate a Trusted Origin
[**Invoke-DeleteOrigin**](TrustedOriginApi.md#Invoke-DeleteOrigin) | **DELETE** /api/v1/trustedOrigins/{trustedOriginId} | Delete a Trusted Origin
[**Get-Origin**](TrustedOriginApi.md#Get-Origin) | **GET** /api/v1/trustedOrigins/{trustedOriginId} | Retrieve a Trusted Origin
[**Invoke-ListOrigins**](TrustedOriginApi.md#Invoke-ListOrigins) | **GET** /api/v1/trustedOrigins | List all Trusted Origins
[**Update-Origin**](TrustedOriginApi.md#Update-Origin) | **PUT** /api/v1/trustedOrigins/{trustedOriginId} | Replace a Trusted Origin


<a name="Invoke-ActivateOrigin"></a>
# **Invoke-ActivateOrigin**
> TrustedOrigin Invoke-ActivateOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Activate a Trusted Origin

Activate a trusted origin

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

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Activate a Trusted Origin
try {
    $Result = Invoke-ActivateOrigin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Origin"></a>
# **New-Origin**
> TrustedOrigin New-Origin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOrigin] <PSCustomObject><br>

Create a Trusted Origin

Create a trusted origin

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

$TrustedOriginScope = Initialize-TrustedOriginScope -AllowedOktaApps "OKTA_ENDUSER" -Type "CORS"
$TrustedOrigin = Initialize-TrustedOrigin -Created (Get-Date) -CreatedBy "MyCreatedBy" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Origin "MyOrigin" -Scopes $TrustedOriginScope -Status "MyStatus" -Links @{ key_example =  } # TrustedOrigin | 

# Create a Trusted Origin
try {
    $Result = New-Origin -TrustedOrigin $TrustedOrigin
} catch {
    Write-Host ("Exception occurred when calling New-Origin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOrigin** | [**TrustedOrigin**](TrustedOrigin.md)|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateOrigin"></a>
# **Invoke-DeactivateOrigin**
> TrustedOrigin Invoke-DeactivateOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Deactivate a Trusted Origin

Deactivate a trusted origin

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

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Deactivate a Trusted Origin
try {
    $Result = Invoke-DeactivateOrigin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteOrigin"></a>
# **Invoke-DeleteOrigin**
> void Invoke-DeleteOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Delete a Trusted Origin

Delete a trusted origin

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

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Delete a Trusted Origin
try {
    $Result = Invoke-DeleteOrigin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Origin"></a>
# **Get-Origin**
> TrustedOrigin Get-Origin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Retrieve a Trusted Origin

Retrieve a trusted origin

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

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Retrieve a Trusted Origin
try {
    $Result = Get-Origin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Get-Origin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListOrigins"></a>
# **Invoke-ListOrigins**
> TrustedOrigin[] Invoke-ListOrigins<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Trusted Origins

List all trusted origins

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

$Q = "MyQ" # String |  (optional)
$Filter = "MyFilter" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Trusted Origins
try {
    $Result = Invoke-ListOrigins -Q $Q -Filter $Filter -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListOrigins: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**|  | [optional] 
 **Filter** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to -1]

### Return type

[**TrustedOrigin[]**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Origin"></a>
# **Update-Origin**
> TrustedOrigin Update-Origin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOrigin] <PSCustomObject><br>

Replace a Trusted Origin

Replace a trusted origin

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

$TrustedOriginId = "MyTrustedOriginId" # String | 
$TrustedOriginScope = Initialize-TrustedOriginScope -AllowedOktaApps "OKTA_ENDUSER" -Type "CORS"
$TrustedOrigin = Initialize-TrustedOrigin -Created (Get-Date) -CreatedBy "MyCreatedBy" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Origin "MyOrigin" -Scopes $TrustedOriginScope -Status "MyStatus" -Links @{ key_example =  } # TrustedOrigin | 

# Replace a Trusted Origin
try {
    $Result = Update-Origin -TrustedOriginId $TrustedOriginId -TrustedOrigin $TrustedOrigin
} catch {
    Write-Host ("Exception occurred when calling Update-Origin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 
 **TrustedOrigin** | [**TrustedOrigin**](TrustedOrigin.md)|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

