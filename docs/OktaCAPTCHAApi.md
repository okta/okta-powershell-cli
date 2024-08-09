# Okta.PowerShell.Okta.PowerShell/Api.OktaCAPTCHAApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaCaptchaInstance**](OktaCAPTCHAApi.md#New-OktaCaptchaInstance) | **POST** /api/v1/captchas | Create a CAPTCHA instance
[**Invoke-OktaDeleteCaptchaInstance**](OktaCAPTCHAApi.md#Invoke-OktaDeleteCaptchaInstance) | **DELETE** /api/v1/captchas/{captchaId} | Delete a CAPTCHA Instance
[**Get-OktaCaptchaInstance**](OktaCAPTCHAApi.md#Get-OktaCaptchaInstance) | **GET** /api/v1/captchas/{captchaId} | Retrieve a CAPTCHA Instance
[**Invoke-OktaListCaptchaInstances**](OktaCAPTCHAApi.md#Invoke-OktaListCaptchaInstances) | **GET** /api/v1/captchas | List all CAPTCHA instances
[**Invoke-OktaPartialUpdateCaptchaInstance**](OktaCAPTCHAApi.md#Invoke-OktaPartialUpdateCaptchaInstance) | **POST** /api/v1/captchas/{captchaId} | Update a CAPTCHA instance
[**Update-OktaCaptchaInstance**](OktaCAPTCHAApi.md#Update-OktaCaptchaInstance) | **PUT** /api/v1/captchas/{captchaId} | Replace a CAPTCHA instance


<a id="New-OktaCaptchaInstance"></a>
# **New-OktaCaptchaInstance**
> CAPTCHAInstance New-OktaCaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a CAPTCHA instance

Adds a new CAPTCHA instance to your organization. In the current release, we only allow one CAPTCHA instance per org.

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

$CAPTCHAInstance = Initialize-CAPTCHAInstance -Id "MyId" -Name "MyName" -SecretKey "MySecretKey" -SiteKey "MySiteKey" -Type "HCAPTCHA" -Links $ApiTokenLink # CAPTCHAInstance | 

# Create a CAPTCHA instance
try {
    $Result = New-OktaCaptchaInstance -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-OktaCaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteCaptchaInstance"></a>
# **Invoke-OktaDeleteCaptchaInstance**
> void Invoke-OktaDeleteCaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>

Delete a CAPTCHA Instance

Delete a CAPTCHA instance by `captchaId`. If the CAPTCHA instance is currently being used in the org, the delete will not be allowed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$CaptchaId = "abcd1234" # String | id of the CAPTCHA

# Delete a CAPTCHA Instance
try {
    $Result = Invoke-OktaDeleteCaptchaInstance -CaptchaId $CaptchaId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteCaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaCaptchaInstance"></a>
# **Get-OktaCaptchaInstance**
> CAPTCHAInstance Get-OktaCaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>

Retrieve a CAPTCHA Instance

Fetches a CAPTCHA instance by `captchaId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$CaptchaId = "abcd1234" # String | id of the CAPTCHA

# Retrieve a CAPTCHA Instance
try {
    $Result = Get-OktaCaptchaInstance -CaptchaId $CaptchaId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaCaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListCaptchaInstances"></a>
# **Invoke-OktaListCaptchaInstances**
> CAPTCHAInstance[] Invoke-OktaListCaptchaInstances<br>

List all CAPTCHA instances

Enumerates CAPTCHA instances in your organization with pagination. A subset of CAPTCHA instances can be returned that match a supported filter expression or query.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all CAPTCHA instances
try {
    $Result = Invoke-OktaListCaptchaInstances
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListCaptchaInstances: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaPartialUpdateCaptchaInstance"></a>
# **Invoke-OktaPartialUpdateCaptchaInstance**
> CAPTCHAInstance Invoke-OktaPartialUpdateCaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Update a CAPTCHA instance

Partially update a CAPTCHA instance by `captchaId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$CaptchaId = "abcd1234" # String | id of the CAPTCHA
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$CAPTCHAInstance = Initialize-CAPTCHAInstance -Id "MyId" -Name "MyName" -SecretKey "MySecretKey" -SiteKey "MySiteKey" -Type "HCAPTCHA" -Links $ApiTokenLink # CAPTCHAInstance | 

# Update a CAPTCHA instance
try {
    $Result = Invoke-OktaPartialUpdateCaptchaInstance -CaptchaId $CaptchaId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaPartialUpdateCaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaCaptchaInstance"></a>
# **Update-OktaCaptchaInstance**
> CAPTCHAInstance Update-OktaCaptchaInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CaptchaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a CAPTCHA instance

Update a CAPTCHA instance by `captchaId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$CaptchaId = "abcd1234" # String | id of the CAPTCHA
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$CAPTCHAInstance = Initialize-CAPTCHAInstance -Id "MyId" -Name "MyName" -SecretKey "MySecretKey" -SiteKey "MySiteKey" -Type "HCAPTCHA" -Links $ApiTokenLink # CAPTCHAInstance | 

# Replace a CAPTCHA instance
try {
    $Result = Update-OktaCaptchaInstance -CaptchaId $CaptchaId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Update-OktaCaptchaInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

