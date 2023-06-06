# PSOpenAPITools.PSOpenAPITools\Api.CAPTCHAApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CaptchaInstance**](CAPTCHAApi.md#New-CaptchaInstance) | **POST** /api/v1/captchas | Create a CAPTCHA instance
[**Invoke-DeleteCaptchaInstance**](CAPTCHAApi.md#Invoke-DeleteCaptchaInstance) | **DELETE** /api/v1/captchas/{captchaId} | Delete a CAPTCHA Instance
[**Get-CaptchaInstance**](CAPTCHAApi.md#Get-CaptchaInstance) | **GET** /api/v1/captchas/{captchaId} | Retrieve a CAPTCHA Instance
[**Invoke-ListCaptchaInstances**](CAPTCHAApi.md#Invoke-ListCaptchaInstances) | **GET** /api/v1/captchas | List all CAPTCHA instances
[**Invoke-PartialUpdateCaptchaInstance**](CAPTCHAApi.md#Invoke-PartialUpdateCaptchaInstance) | **POST** /api/v1/captchas/{captchaId} | Update a CAPTCHA instance
[**Update-CaptchaInstance**](CAPTCHAApi.md#Update-CaptchaInstance) | **PUT** /api/v1/captchas/{captchaId} | Replace a CAPTCHA instance


<a name="New-CaptchaInstance"></a>
# **New-CaptchaInstance**
> CAPTCHAInstance New-CaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a CAPTCHA instance

Adds a new CAPTCHA instance to your organization. In the current release, we only allow one CAPTCHA instance per org.

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

$CAPTCHAInstance = Initialize-CAPTCHAInstance -Id "MyId" -Name "MyName" -SecretKey "MySecretKey" -SiteKey "MySiteKey" -Type "HCAPTCHA" -Links $ApiTokenLink # CAPTCHAInstance | 

# Create a CAPTCHA instance
try {
    $Result = New-CaptchaInstance -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-CaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**CAPTCHAInstance**](CAPTCHAInstance.md)|  | 

### Return type

[**CAPTCHAInstance**](CAPTCHAInstance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteCaptchaInstance"></a>
# **Invoke-DeleteCaptchaInstance**
> void Invoke-DeleteCaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>

Delete a CAPTCHA Instance

Delete a CAPTCHA instance by `captchaId`. If the CAPTCHA instance is currently being used in the org, the delete will not be allowed.

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

$CaptchaId = "abcd1234" # String | id of the CAPTCHA

# Delete a CAPTCHA Instance
try {
    $Result = Invoke-DeleteCaptchaInstance -CaptchaId $CaptchaId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteCaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CaptchaId** | **String**| id of the CAPTCHA | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CaptchaInstance"></a>
# **Get-CaptchaInstance**
> CAPTCHAInstance Get-CaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>

Retrieve a CAPTCHA Instance

Fetches a CAPTCHA instance by `captchaId`.

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

$CaptchaId = "abcd1234" # String | id of the CAPTCHA

# Retrieve a CAPTCHA Instance
try {
    $Result = Get-CaptchaInstance -CaptchaId $CaptchaId
} catch {
    Write-Host ("Exception occurred when calling Get-CaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CaptchaId** | **String**| id of the CAPTCHA | 

### Return type

[**CAPTCHAInstance**](CAPTCHAInstance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListCaptchaInstances"></a>
# **Invoke-ListCaptchaInstances**
> CAPTCHAInstance[] Invoke-ListCaptchaInstances<br>

List all CAPTCHA instances

Enumerates CAPTCHA instances in your organization with pagination. A subset of CAPTCHA instances can be returned that match a supported filter expression or query.

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


# List all CAPTCHA instances
try {
    $Result = Invoke-ListCaptchaInstances
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListCaptchaInstances: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CAPTCHAInstance[]**](CAPTCHAInstance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-PartialUpdateCaptchaInstance"></a>
# **Invoke-PartialUpdateCaptchaInstance**
> CAPTCHAInstance Invoke-PartialUpdateCaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Update a CAPTCHA instance

Partially update a CAPTCHA instance by `captchaId`.

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

$CaptchaId = "abcd1234" # String | id of the CAPTCHA
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$CAPTCHAInstance = Initialize-CAPTCHAInstance -Id "MyId" -Name "MyName" -SecretKey "MySecretKey" -SiteKey "MySiteKey" -Type "HCAPTCHA" -Links $ApiTokenLink # CAPTCHAInstance | 

# Update a CAPTCHA instance
try {
    $Result = Invoke-PartialUpdateCaptchaInstance -CaptchaId $CaptchaId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Invoke-PartialUpdateCaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CaptchaId** | **String**| id of the CAPTCHA | 
 **Instance** | [**CAPTCHAInstance**](CAPTCHAInstance.md)|  | 

### Return type

[**CAPTCHAInstance**](CAPTCHAInstance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-CaptchaInstance"></a>
# **Update-CaptchaInstance**
> CAPTCHAInstance Update-CaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a CAPTCHA instance

Update a CAPTCHA instance by `captchaId`.

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

$CaptchaId = "abcd1234" # String | id of the CAPTCHA
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$CAPTCHAInstance = Initialize-CAPTCHAInstance -Id "MyId" -Name "MyName" -SecretKey "MySecretKey" -SiteKey "MySiteKey" -Type "HCAPTCHA" -Links $ApiTokenLink # CAPTCHAInstance | 

# Replace a CAPTCHA instance
try {
    $Result = Update-CaptchaInstance -CaptchaId $CaptchaId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Update-CaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CaptchaId** | **String**| id of the CAPTCHA | 
 **Instance** | [**CAPTCHAInstance**](CAPTCHAInstance.md)|  | 

### Return type

[**CAPTCHAInstance**](CAPTCHAInstance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

