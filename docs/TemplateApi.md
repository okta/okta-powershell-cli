# PSOpenAPITools.PSOpenAPITools\Api.TemplateApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SmsTemplate**](TemplateApi.md#New-SmsTemplate) | **POST** /api/v1/templates/sms | Create an SMS Template
[**Invoke-DeleteSmsTemplate**](TemplateApi.md#Invoke-DeleteSmsTemplate) | **DELETE** /api/v1/templates/sms/{templateId} | Delete an SMS Template
[**Get-SmsTemplate**](TemplateApi.md#Get-SmsTemplate) | **GET** /api/v1/templates/sms/{templateId} | Retrieve an SMS Template
[**Invoke-ListSmsTemplates**](TemplateApi.md#Invoke-ListSmsTemplates) | **GET** /api/v1/templates/sms | List all SMS Templates
[**Invoke-PartialUpdateSmsTemplate**](TemplateApi.md#Invoke-PartialUpdateSmsTemplate) | **POST** /api/v1/templates/sms/{templateId} | Update an SMS Template
[**Update-SmsTemplate**](TemplateApi.md#Update-SmsTemplate) | **PUT** /api/v1/templates/sms/{templateId} | Replace an SMS Template


<a name="New-SmsTemplate"></a>
# **New-SmsTemplate**
> SmsTemplate New-SmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsTemplate] <PSCustomObject><br>

Create an SMS Template

Adds a new custom SMS template to your organization.

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

$SmsTemplate = Initialize-SmsTemplate -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Template "MyTemplate" -Translations  -Type "SMS_VERIFY_CODE" # SmsTemplate | 

# Create an SMS Template
try {
    $Result = New-SmsTemplate -SmsTemplate $SmsTemplate
} catch {
    Write-Host ("Exception occurred when calling New-SmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsTemplate** | [**SmsTemplate**](SmsTemplate.md)|  | 

### Return type

[**SmsTemplate**](SmsTemplate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteSmsTemplate"></a>
# **Invoke-DeleteSmsTemplate**
> void Invoke-DeleteSmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>

Delete an SMS Template

Removes an SMS template.

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

$TemplateId = "MyTemplateId" # String | 

# Delete an SMS Template
try {
    $Result = Invoke-DeleteSmsTemplate -TemplateId $TemplateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteSmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SmsTemplate"></a>
# **Get-SmsTemplate**
> SmsTemplate Get-SmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>

Retrieve an SMS Template

Fetches a specific template by `id`

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

$TemplateId = "MyTemplateId" # String | 

# Retrieve an SMS Template
try {
    $Result = Get-SmsTemplate -TemplateId $TemplateId
} catch {
    Write-Host ("Exception occurred when calling Get-SmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateId** | **String**|  | 

### Return type

[**SmsTemplate**](SmsTemplate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListSmsTemplates"></a>
# **Invoke-ListSmsTemplates**
> SmsTemplate[] Invoke-ListSmsTemplates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateType] <PSCustomObject><br>

List all SMS Templates

Enumerates custom SMS templates in your organization. A subset of templates can be returned that match a template type.

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

$TemplateType = "SMS_VERIFY_CODE" # SmsTemplateType |  (optional)

# List all SMS Templates
try {
    $Result = Invoke-ListSmsTemplates -TemplateType $TemplateType
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListSmsTemplates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateType** | [**SmsTemplateType**](SmsTemplateType.md)|  | [optional] 

### Return type

[**SmsTemplate[]**](SmsTemplate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-PartialUpdateSmsTemplate"></a>
# **Invoke-PartialUpdateSmsTemplate**
> SmsTemplate Invoke-PartialUpdateSmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsTemplate] <PSCustomObject><br>

Update an SMS Template

Updates only some of the SMS template properties:

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

$TemplateId = "MyTemplateId" # String | 
$SmsTemplate = Initialize-SmsTemplate -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Template "MyTemplate" -Translations  -Type "SMS_VERIFY_CODE" # SmsTemplate | 

# Update an SMS Template
try {
    $Result = Invoke-PartialUpdateSmsTemplate -TemplateId $TemplateId -SmsTemplate $SmsTemplate
} catch {
    Write-Host ("Exception occurred when calling Invoke-PartialUpdateSmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateId** | **String**|  | 
 **SmsTemplate** | [**SmsTemplate**](SmsTemplate.md)|  | 

### Return type

[**SmsTemplate**](SmsTemplate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-SmsTemplate"></a>
# **Update-SmsTemplate**
> SmsTemplate Update-SmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsTemplate] <PSCustomObject><br>

Replace an SMS Template

Updates the SMS template.

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

$TemplateId = "MyTemplateId" # String | 
$SmsTemplate = Initialize-SmsTemplate -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Template "MyTemplate" -Translations  -Type "SMS_VERIFY_CODE" # SmsTemplate | 

# Replace an SMS Template
try {
    $Result = Update-SmsTemplate -TemplateId $TemplateId -SmsTemplate $SmsTemplate
} catch {
    Write-Host ("Exception occurred when calling Update-SmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateId** | **String**|  | 
 **SmsTemplate** | [**SmsTemplate**](SmsTemplate.md)|  | 

### Return type

[**SmsTemplate**](SmsTemplate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

