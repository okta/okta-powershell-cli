# Okta.PowerShell.Okta.PowerShell\Api.OktaTemplateApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaSmsTemplate**](OktaTemplateApi.md#New-OktaSmsTemplate) | **POST** /api/v1/templates/sms | Create an SMS Template
[**Invoke-OktaDeleteSmsTemplate**](OktaTemplateApi.md#Invoke-OktaDeleteSmsTemplate) | **DELETE** /api/v1/templates/sms/{templateId} | Delete an SMS Template
[**Get-OktaSmsTemplate**](OktaTemplateApi.md#Get-OktaSmsTemplate) | **GET** /api/v1/templates/sms/{templateId} | Retrieve an SMS Template
[**Invoke-OktaListSmsTemplates**](OktaTemplateApi.md#Invoke-OktaListSmsTemplates) | **GET** /api/v1/templates/sms | List all SMS Templates
[**Invoke-OktaPartialUpdateSmsTemplate**](OktaTemplateApi.md#Invoke-OktaPartialUpdateSmsTemplate) | **POST** /api/v1/templates/sms/{templateId} | Update an SMS Template
[**Update-OktaSmsTemplate**](OktaTemplateApi.md#Update-OktaSmsTemplate) | **PUT** /api/v1/templates/sms/{templateId} | Replace an SMS Template


<a id="New-OktaSmsTemplate"></a>
# **New-OktaSmsTemplate**
> SmsTemplate New-OktaSmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsTemplate] <PSCustomObject><br>

Create an SMS Template

Adds a new custom SMS template to your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$SmsTemplate = Initialize-SmsTemplate -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Template "MyTemplate" -Translations  -Type "SMS_VERIFY_CODE" # SmsTemplate | 

# Create an SMS Template
try {
    $Result = New-OktaSmsTemplate -SmsTemplate $SmsTemplate
} catch {
    Write-Host ("Exception occurred when calling New-OktaSmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteSmsTemplate"></a>
# **Invoke-OktaDeleteSmsTemplate**
> void Invoke-OktaDeleteSmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>

Delete an SMS Template

Removes an SMS template.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$TemplateId = "MyTemplateId" # String | 

# Delete an SMS Template
try {
    $Result = Invoke-OktaDeleteSmsTemplate -TemplateId $TemplateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteSmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaSmsTemplate"></a>
# **Get-OktaSmsTemplate**
> SmsTemplate Get-OktaSmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>

Retrieve an SMS Template

Fetches a specific template by `id`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$TemplateId = "MyTemplateId" # String | 

# Retrieve an SMS Template
try {
    $Result = Get-OktaSmsTemplate -TemplateId $TemplateId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaSmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListSmsTemplates"></a>
# **Invoke-OktaListSmsTemplates**
> SmsTemplate[] Invoke-OktaListSmsTemplates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateType] <PSCustomObject><br>

List all SMS Templates

Enumerates custom SMS templates in your organization. A subset of templates can be returned that match a template type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$TemplateType = "SMS_VERIFY_CODE" # SmsTemplateType |  (optional)

# List all SMS Templates
try {
    $Result = Invoke-OktaListSmsTemplates -TemplateType $TemplateType
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListSmsTemplates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaPartialUpdateSmsTemplate"></a>
# **Invoke-OktaPartialUpdateSmsTemplate**
> SmsTemplate Invoke-OktaPartialUpdateSmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsTemplate] <PSCustomObject><br>

Update an SMS Template

Updates only some of the SMS template properties:

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$TemplateId = "MyTemplateId" # String | 
$SmsTemplate = Initialize-SmsTemplate -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Template "MyTemplate" -Translations  -Type "SMS_VERIFY_CODE" # SmsTemplate | 

# Update an SMS Template
try {
    $Result = Invoke-OktaPartialUpdateSmsTemplate -TemplateId $TemplateId -SmsTemplate $SmsTemplate
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaPartialUpdateSmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaSmsTemplate"></a>
# **Update-OktaSmsTemplate**
> SmsTemplate Update-OktaSmsTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsTemplate] <PSCustomObject><br>

Replace an SMS Template

Updates the SMS template.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$TemplateId = "MyTemplateId" # String | 
$SmsTemplate = Initialize-SmsTemplate -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Template "MyTemplate" -Translations  -Type "SMS_VERIFY_CODE" # SmsTemplate | 

# Replace an SMS Template
try {
    $Result = Update-OktaSmsTemplate -TemplateId $TemplateId -SmsTemplate $SmsTemplate
} catch {
    Write-Host ("Exception occurred when calling Update-OktaSmsTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

