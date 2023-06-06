# PSOpenAPITools.PSOpenAPITools\Api.CustomizationApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Brand**](CustomizationApi.md#New-Brand) | **POST** /api/v1/brands | Create a Brand
[**New-EmailCustomization**](CustomizationApi.md#New-EmailCustomization) | **POST** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | Create an Email Customization
[**Invoke-DeleteAllCustomizations**](CustomizationApi.md#Invoke-DeleteAllCustomizations) | **DELETE** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | Delete all Email Customizations
[**Invoke-DeleteBrand**](CustomizationApi.md#Invoke-DeleteBrand) | **DELETE** /api/v1/brands/{brandId} | Delete a brand
[**Invoke-DeleteBrandThemeBackgroundImage**](CustomizationApi.md#Invoke-DeleteBrandThemeBackgroundImage) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/background-image | Delete the Background Image
[**Invoke-DeleteBrandThemeFavicon**](CustomizationApi.md#Invoke-DeleteBrandThemeFavicon) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/favicon | Delete the Favicon
[**Invoke-DeleteBrandThemeLogo**](CustomizationApi.md#Invoke-DeleteBrandThemeLogo) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/logo | Delete the Logo
[**Invoke-DeleteEmailCustomization**](CustomizationApi.md#Invoke-DeleteEmailCustomization) | **DELETE** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Delete an Email Customization
[**Get-Brand**](CustomizationApi.md#Get-Brand) | **GET** /api/v1/brands/{brandId} | Retrieve a Brand
[**Get-BrandDomains**](CustomizationApi.md#Get-BrandDomains) | **GET** /api/v1/brands/{brandId}/domains | List all Domains associated with a Brand
[**Get-BrandTheme**](CustomizationApi.md#Get-BrandTheme) | **GET** /api/v1/brands/{brandId}/themes/{themeId} | Retrieve a Theme
[**Get-CustomizationPreview**](CustomizationApi.md#Get-CustomizationPreview) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId}/preview | Preview an Email Customization
[**Get-EmailCustomization**](CustomizationApi.md#Get-EmailCustomization) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Retrieve an Email Customization
[**Get-EmailDefaultContent**](CustomizationApi.md#Get-EmailDefaultContent) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/default-content | Retrieve an Email Template Default Content
[**Get-EmailDefaultPreview**](CustomizationApi.md#Get-EmailDefaultPreview) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/default-content/preview | Preview the Email Template Default Content
[**Get-EmailSettings**](CustomizationApi.md#Get-EmailSettings) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/settings | Retrieve the Email Template Settings
[**Get-EmailTemplate**](CustomizationApi.md#Get-EmailTemplate) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName} | Retrieve an Email Template
[**Invoke-LinkBrandDomain**](CustomizationApi.md#Invoke-LinkBrandDomain) | **POST** /api/v1/brands/{brandId}/domains | Link a Brand to a Domain
[**Invoke-ListAllSignInWidgetVersions**](CustomizationApi.md#Invoke-ListAllSignInWidgetVersions) | **GET** /api/v1/brands/{brandId}/pages/sign-in/widget-versions | List all Sign-in Widget Versions
[**Invoke-ListBrandThemes**](CustomizationApi.md#Invoke-ListBrandThemes) | **GET** /api/v1/brands/{brandId}/themes | List all Themes
[**Invoke-ListBrands**](CustomizationApi.md#Invoke-ListBrands) | **GET** /api/v1/brands | List all Brands
[**Invoke-ListEmailCustomizations**](CustomizationApi.md#Invoke-ListEmailCustomizations) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | List all Email Customizations
[**Invoke-ListEmailTemplates**](CustomizationApi.md#Invoke-ListEmailTemplates) | **GET** /api/v1/brands/{brandId}/templates/email | List all Email Templates
[**Invoke-ReplaceCustomizedErrorPage**](CustomizationApi.md#Invoke-ReplaceCustomizedErrorPage) | **PUT** /api/v1/brands/{brandId}/pages/error/customized | Replace the Customized Error Page
[**Invoke-ReplaceCustomizedSignInPage**](CustomizationApi.md#Invoke-ReplaceCustomizedSignInPage) | **PUT** /api/v1/brands/{brandId}/pages/sign-in/customized | Replace the Customized Sign-in Page
[**Invoke-ReplacePreviewErrorPage**](CustomizationApi.md#Invoke-ReplacePreviewErrorPage) | **PUT** /api/v1/brands/{brandId}/pages/error/preview | Replace the Preview Error Page
[**Invoke-ReplacePreviewSignInPage**](CustomizationApi.md#Invoke-ReplacePreviewSignInPage) | **PUT** /api/v1/brands/{brandId}/pages/sign-in/preview | Replace the Preview Sign-in Page
[**Invoke-ReplaceSignOutPageSettings**](CustomizationApi.md#Invoke-ReplaceSignOutPageSettings) | **PUT** /api/v1/brands/{brandId}/pages/sign-out/customized | Replace the Sign-out Page Settings
[**Reset-CustomizedErrorPage**](CustomizationApi.md#Reset-CustomizedErrorPage) | **DELETE** /api/v1/brands/{brandId}/pages/error/customized | Reset the Customized Error Page
[**Reset-CustomizedSignInPage**](CustomizationApi.md#Reset-CustomizedSignInPage) | **DELETE** /api/v1/brands/{brandId}/pages/sign-in/customized | Reset the Customized Sign-in Page
[**Reset-PreviewErrorPage**](CustomizationApi.md#Reset-PreviewErrorPage) | **DELETE** /api/v1/brands/{brandId}/pages/error/preview | Reset the Preview Error Page
[**Reset-PreviewSignInPage**](CustomizationApi.md#Reset-PreviewSignInPage) | **DELETE** /api/v1/brands/{brandId}/pages/sign-in/preview | Reset the Preview Sign-in Page
[**Invoke-RetrieveCustomizedErrorPage**](CustomizationApi.md#Invoke-RetrieveCustomizedErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/customized | Retrieve the Customized Error Page
[**Invoke-RetrieveCustomizedSignInPage**](CustomizationApi.md#Invoke-RetrieveCustomizedSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/customized | Retrieve the Customized Sign-in Page
[**Invoke-RetrieveDefaultErrorPage**](CustomizationApi.md#Invoke-RetrieveDefaultErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/default | Retrieve the Default Error Page
[**Invoke-RetrieveDefaultSignInPage**](CustomizationApi.md#Invoke-RetrieveDefaultSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/default | Retrieve the Default Sign-in Page
[**Invoke-RetrieveErrorPage**](CustomizationApi.md#Invoke-RetrieveErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error | Retrieve the Error Page
[**Invoke-RetrievePreviewErrorPage**](CustomizationApi.md#Invoke-RetrievePreviewErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/preview | Retrieve the Preview Error Page Preview
[**Invoke-RetrievePreviewSignInPage**](CustomizationApi.md#Invoke-RetrievePreviewSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/preview | Retrieve the Preview Sign-in Page Preview
[**Invoke-RetrieveSignInPage**](CustomizationApi.md#Invoke-RetrieveSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in | Retrieve the Sign-in Page
[**Invoke-RetrieveSignOutPageSettings**](CustomizationApi.md#Invoke-RetrieveSignOutPageSettings) | **GET** /api/v1/brands/{brandId}/pages/sign-out/customized | Retrieve the Sign-out Page Settings
[**Send-TestEmail**](CustomizationApi.md#Send-TestEmail) | **POST** /api/v1/brands/{brandId}/templates/email/{templateName}/test | Send a Test Email
[**Invoke-UnlinkBrandDomain**](CustomizationApi.md#Invoke-UnlinkBrandDomain) | **DELETE** /api/v1/brands/{brandId}/domains/{domainId} | Unlink a Brand from a Domain
[**Update-Brand**](CustomizationApi.md#Update-Brand) | **PUT** /api/v1/brands/{brandId} | Replace a Brand
[**Update-BrandTheme**](CustomizationApi.md#Update-BrandTheme) | **PUT** /api/v1/brands/{brandId}/themes/{themeId} | Replace a Theme
[**Update-EmailCustomization**](CustomizationApi.md#Update-EmailCustomization) | **PUT** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Replace an Email Customization
[**Update-EmailSettings**](CustomizationApi.md#Update-EmailSettings) | **PUT** /api/v1/brands/{brandId}/templates/email/{templateName}/settings | Replace the Email Template Settings
[**Invoke-UploadBrandThemeBackgroundImage**](CustomizationApi.md#Invoke-UploadBrandThemeBackgroundImage) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/background-image | Upload the Background Image
[**Invoke-UploadBrandThemeFavicon**](CustomizationApi.md#Invoke-UploadBrandThemeFavicon) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/favicon | Upload the Favicon
[**Invoke-UploadBrandThemeLogo**](CustomizationApi.md#Invoke-UploadBrandThemeLogo) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/logo | Upload the Logo


<a name="New-Brand"></a>
# **New-Brand**
> Brand New-Brand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateBrandRequest] <PSCustomObject><br>

Create a Brand

Create new brand in your org

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

$CreateBrandRequest = Initialize-CreateBrandRequest -Name "MyName" # CreateBrandRequest |  (optional)

# Create a Brand
try {
    $Result = New-Brand -CreateBrandRequest $CreateBrandRequest
} catch {
    Write-Host ("Exception occurred when calling New-Brand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateBrandRequest** | [**CreateBrandRequest**](CreateBrandRequest.md)|  | [optional] 

### Return type

[**Brand**](Brand.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-EmailCustomization"></a>
# **New-EmailCustomization**
> EmailCustomization New-EmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create an Email Customization

Creates a new email customization.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$EmailCustomizationAllOfLinks = Initialize-EmailCustomizationAllOfLinks -Self $HrefObject -Template $HrefObject -Preview $HrefObject -Test $HrefObject

$EmailCustomization = Initialize-EmailCustomization -Body "MyBody" -Subject "MySubject" -Created (Get-Date) -Id "MyId" -IsDefault $false -Language "MyLanguage" -LastUpdated (Get-Date) -Links $EmailCustomizationAllOfLinks # EmailCustomization |  (optional)

# Create an Email Customization
try {
    $Result = New-EmailCustomization -BrandId $BrandId -TemplateName $TemplateName -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-EmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **Instance** | [**EmailCustomization**](EmailCustomization.md)|  | [optional] 

### Return type

[**EmailCustomization**](EmailCustomization.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteAllCustomizations"></a>
# **Invoke-DeleteAllCustomizations**
> void Invoke-DeleteAllCustomizations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>

Delete all Email Customizations

Deletes all customizations for an email template.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.

# Delete all Email Customizations
try {
    $Result = Invoke-DeleteAllCustomizations -BrandId $BrandId -TemplateName $TemplateName
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAllCustomizations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteBrand"></a>
# **Invoke-DeleteBrand**
> void Invoke-DeleteBrand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Delete a brand

Deletes a brand by its unique identifier.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Delete a brand
try {
    $Result = Invoke-DeleteBrand -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBrand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteBrandThemeBackgroundImage"></a>
# **Invoke-DeleteBrandThemeBackgroundImage**
> void Invoke-DeleteBrandThemeBackgroundImage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Delete the Background Image

Deletes a Theme background image.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Delete the Background Image
try {
    $Result = Invoke-DeleteBrandThemeBackgroundImage -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBrandThemeBackgroundImage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteBrandThemeFavicon"></a>
# **Invoke-DeleteBrandThemeFavicon**
> void Invoke-DeleteBrandThemeFavicon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Delete the Favicon

Deletes a Theme favicon. The theme will use the default Okta favicon.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Delete the Favicon
try {
    $Result = Invoke-DeleteBrandThemeFavicon -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBrandThemeFavicon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteBrandThemeLogo"></a>
# **Invoke-DeleteBrandThemeLogo**
> void Invoke-DeleteBrandThemeLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Delete the Logo

Deletes a Theme logo. The theme will use the default Okta logo.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Delete the Logo
try {
    $Result = Invoke-DeleteBrandThemeLogo -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBrandThemeLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteEmailCustomization"></a>
# **Invoke-DeleteEmailCustomization**
> void Invoke-DeleteEmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>

Delete an Email Customization

Deletes an email customization by its unique identifier.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.

# Delete an Email Customization
try {
    $Result = Invoke-DeleteEmailCustomization -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteEmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **CustomizationId** | **String**| The ID of the email customization. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Brand"></a>
# **Get-Brand**
> Brand Get-Brand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve a Brand

Fetches a brand by `brandId`

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve a Brand
try {
    $Result = Get-Brand -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Get-Brand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**Brand**](Brand.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BrandDomains"></a>
# **Get-BrandDomains**
> DomainResponse[] Get-BrandDomains<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

List all Domains associated with a Brand

List all domains associated with a brand by `brandId`

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# List all Domains associated with a Brand
try {
    $Result = Get-BrandDomains -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Get-BrandDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**DomainResponse[]**](DomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BrandTheme"></a>
# **Get-BrandTheme**
> ThemeResponse Get-BrandTheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Retrieve a Theme

Fetches a theme for a brand

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Retrieve a Theme
try {
    $Result = Get-BrandTheme -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Get-BrandTheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 

### Return type

[**ThemeResponse**](ThemeResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CustomizationPreview"></a>
# **Get-CustomizationPreview**
> EmailPreview Get-CustomizationPreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>

Preview an Email Customization

Generates a preview of an email customization. All variable references (e.g., `${user.profile.firstName}`) are populated using the current user's context.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.

# Preview an Email Customization
try {
    $Result = Get-CustomizationPreview -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId
} catch {
    Write-Host ("Exception occurred when calling Get-CustomizationPreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **CustomizationId** | **String**| The ID of the email customization. | 

### Return type

[**EmailPreview**](EmailPreview.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-EmailCustomization"></a>
# **Get-EmailCustomization**
> EmailCustomization Get-EmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>

Retrieve an Email Customization

Gets an email customization by its unique identifier.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.

# Retrieve an Email Customization
try {
    $Result = Get-EmailCustomization -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId
} catch {
    Write-Host ("Exception occurred when calling Get-EmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **CustomizationId** | **String**| The ID of the email customization. | 

### Return type

[**EmailCustomization**](EmailCustomization.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-EmailDefaultContent"></a>
# **Get-EmailDefaultContent**
> EmailDefaultContent Get-EmailDefaultContent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Language] <String><br>

Retrieve an Email Template Default Content

Gets an email template's default content.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Language = "MyLanguage" # String | The language to use for the email. Defaults to the current user's language if unspecified. (optional)

# Retrieve an Email Template Default Content
try {
    $Result = Get-EmailDefaultContent -BrandId $BrandId -TemplateName $TemplateName -Language $Language
} catch {
    Write-Host ("Exception occurred when calling Get-EmailDefaultContent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **Language** | **String**| The language to use for the email. Defaults to the current user&#39;s language if unspecified. | [optional] 

### Return type

[**EmailDefaultContent**](EmailDefaultContent.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-EmailDefaultPreview"></a>
# **Get-EmailDefaultPreview**
> EmailPreview Get-EmailDefaultPreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Language] <String><br>

Preview the Email Template Default Content

Generates a preview of an email template's default content. All variable references (e.g., `${user.profile.firstName}`) are populated using the current user's context.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Language = "MyLanguage" # String | The language to use for the email. Defaults to the current user's language if unspecified. (optional)

# Preview the Email Template Default Content
try {
    $Result = Get-EmailDefaultPreview -BrandId $BrandId -TemplateName $TemplateName -Language $Language
} catch {
    Write-Host ("Exception occurred when calling Get-EmailDefaultPreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **Language** | **String**| The language to use for the email. Defaults to the current user&#39;s language if unspecified. | [optional] 

### Return type

[**EmailPreview**](EmailPreview.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-EmailSettings"></a>
# **Get-EmailSettings**
> EmailSettings Get-EmailSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>

Retrieve the Email Template Settings

Gets an email template's settings.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.

# Retrieve the Email Template Settings
try {
    $Result = Get-EmailSettings -BrandId $BrandId -TemplateName $TemplateName
} catch {
    Write-Host ("Exception occurred when calling Get-EmailSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 

### Return type

[**EmailSettings**](EmailSettings.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-EmailTemplate"></a>
# **Get-EmailTemplate**
> EmailTemplate Get-EmailTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

Retrieve an Email Template

Gets the details of an email template by name.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Expand = "settings" # String[] | Specifies additional metadata to be included in the response. (optional)

# Retrieve an Email Template
try {
    $Result = Get-EmailTemplate -BrandId $BrandId -TemplateName $TemplateName -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-EmailTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **Expand** | [**String[]**](String.md)| Specifies additional metadata to be included in the response. | [optional] 

### Return type

[**EmailTemplate**](EmailTemplate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-LinkBrandDomain"></a>
# **Invoke-LinkBrandDomain**
> BrandDomain Invoke-LinkBrandDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateBrandDomainRequest] <PSCustomObject><br>

Link a Brand to a Domain

Link a Brand to a Domain by `domainId`

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$CreateBrandDomainRequest = Initialize-CreateBrandDomainRequest -DomainId "MyDomainId" # CreateBrandDomainRequest |  (optional)

# Link a Brand to a Domain
try {
    $Result = Invoke-LinkBrandDomain -BrandId $BrandId -CreateBrandDomainRequest $CreateBrandDomainRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-LinkBrandDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **CreateBrandDomainRequest** | [**CreateBrandDomainRequest**](CreateBrandDomainRequest.md)|  | [optional] 

### Return type

[**BrandDomain**](BrandDomain.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAllSignInWidgetVersions"></a>
# **Invoke-ListAllSignInWidgetVersions**
> String[] Invoke-ListAllSignInWidgetVersions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

List all Sign-in Widget Versions

List all sign-in widget versions.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# List all Sign-in Widget Versions
try {
    $Result = Invoke-ListAllSignInWidgetVersions -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAllSignInWidgetVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

**String[]**

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListBrandThemes"></a>
# **Invoke-ListBrandThemes**
> ThemeResponse[] Invoke-ListBrandThemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

List all Themes

List all the themes in your brand

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# List all Themes
try {
    $Result = Invoke-ListBrandThemes -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListBrandThemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**ThemeResponse[]**](ThemeResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListBrands"></a>
# **Invoke-ListBrands**
> Brand[] Invoke-ListBrands<br>

List all Brands

List all the brands in your org.

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


# List all Brands
try {
    $Result = Invoke-ListBrands
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListBrands: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Brand[]**](Brand.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListEmailCustomizations"></a>
# **Invoke-ListEmailCustomizations**
> EmailCustomization[] Invoke-ListEmailCustomizations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Email Customizations

Lists all customizations of an email template.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)

# List all Email Customizations
try {
    $Result = Invoke-ListEmailCustomizations -BrandId $BrandId -TemplateName $TemplateName -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListEmailCustomizations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 
 **Limit** | **Int32**| A limit on the number of objects to return. | [optional] [default to 20]

### Return type

[**EmailCustomization[]**](EmailCustomization.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListEmailTemplates"></a>
# **Invoke-ListEmailTemplates**
> EmailTemplate[] Invoke-ListEmailTemplates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

List all Email Templates

Lists all email templates.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)
$Expand = "settings" # String[] | Specifies additional metadata to be included in the response. (optional)

# List all Email Templates
try {
    $Result = Invoke-ListEmailTemplates -BrandId $BrandId -After $After -Limit $Limit -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListEmailTemplates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 
 **Limit** | **Int32**| A limit on the number of objects to return. | [optional] [default to 20]
 **Expand** | [**String[]**](String.md)| Specifies additional metadata to be included in the response. | [optional] 

### Return type

[**EmailTemplate[]**](EmailTemplate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceCustomizedErrorPage"></a>
# **Invoke-ReplaceCustomizedErrorPage**
> CustomizablePage Invoke-ReplaceCustomizedErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizablePage] <PSCustomObject><br>

Replace the Customized Error Page

Replaces the customized error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$CustomizablePage = Initialize-CustomizablePage -PageContent "MyPageContent" # CustomizablePage | 

# Replace the Customized Error Page
try {
    $Result = Invoke-ReplaceCustomizedErrorPage -BrandId $BrandId -CustomizablePage $CustomizablePage
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceCustomizedErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **CustomizablePage** | [**CustomizablePage**](CustomizablePage.md)|  | 

### Return type

[**CustomizablePage**](CustomizablePage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceCustomizedSignInPage"></a>
# **Invoke-ReplaceCustomizedSignInPage**
> SignInPage Invoke-ReplaceCustomizedSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SignInPage] <PSCustomObject><br>

Replace the Customized Sign-in Page

Replaces the customized sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$SignInPageAllOfWidgetCustomizations = Initialize-SignInPageAllOfWidgetCustomizations -SignInLabel "MySignInLabel" -UsernameLabel "MyUsernameLabel" -UsernameInfoTip "MyUsernameInfoTip" -PasswordLabel "MyPasswordLabel" -PasswordInfoTip "MyPasswordInfoTip" -ShowPasswordVisibilityToggle $false -ShowUserIdentifier $false -ForgotPasswordLabel "MyForgotPasswordLabel" -ForgotPasswordUrl "MyForgotPasswordUrl" -UnlockAccountLabel "MyUnlockAccountLabel" -UnlockAccountUrl "MyUnlockAccountUrl" -HelpLabel "MyHelpLabel" -HelpUrl "MyHelpUrl" -CustomLink1Label "MyCustomLink1Label" -CustomLink1Url "MyCustomLink1Url" -CustomLink2Label "MyCustomLink2Label" -CustomLink2Url "MyCustomLink2Url" -AuthenticatorPageCustomLinkLabel "MyAuthenticatorPageCustomLinkLabel" -AuthenticatorPageCustomLinkUrl "MyAuthenticatorPageCustomLinkUrl" -ClassicRecoveryFlowEmailOrUsernameLabel "MyClassicRecoveryFlowEmailOrUsernameLabel"
$SignInPage = Initialize-SignInPage -PageContent "MyPageContent" -WidgetCustomizations $SignInPageAllOfWidgetCustomizations -WidgetVersion "MyWidgetVersion" # SignInPage | 

# Replace the Customized Sign-in Page
try {
    $Result = Invoke-ReplaceCustomizedSignInPage -BrandId $BrandId -SignInPage $SignInPage
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceCustomizedSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **SignInPage** | [**SignInPage**](SignInPage.md)|  | 

### Return type

[**SignInPage**](SignInPage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplacePreviewErrorPage"></a>
# **Invoke-ReplacePreviewErrorPage**
> CustomizablePage Invoke-ReplacePreviewErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizablePage] <PSCustomObject><br>

Replace the Preview Error Page

Replace the preview error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$CustomizablePage = Initialize-CustomizablePage -PageContent "MyPageContent" # CustomizablePage | 

# Replace the Preview Error Page
try {
    $Result = Invoke-ReplacePreviewErrorPage -BrandId $BrandId -CustomizablePage $CustomizablePage
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplacePreviewErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **CustomizablePage** | [**CustomizablePage**](CustomizablePage.md)|  | 

### Return type

[**CustomizablePage**](CustomizablePage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplacePreviewSignInPage"></a>
# **Invoke-ReplacePreviewSignInPage**
> SignInPage Invoke-ReplacePreviewSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SignInPage] <PSCustomObject><br>

Replace the Preview Sign-in Page

Replace the preview sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$SignInPageAllOfWidgetCustomizations = Initialize-SignInPageAllOfWidgetCustomizations -SignInLabel "MySignInLabel" -UsernameLabel "MyUsernameLabel" -UsernameInfoTip "MyUsernameInfoTip" -PasswordLabel "MyPasswordLabel" -PasswordInfoTip "MyPasswordInfoTip" -ShowPasswordVisibilityToggle $false -ShowUserIdentifier $false -ForgotPasswordLabel "MyForgotPasswordLabel" -ForgotPasswordUrl "MyForgotPasswordUrl" -UnlockAccountLabel "MyUnlockAccountLabel" -UnlockAccountUrl "MyUnlockAccountUrl" -HelpLabel "MyHelpLabel" -HelpUrl "MyHelpUrl" -CustomLink1Label "MyCustomLink1Label" -CustomLink1Url "MyCustomLink1Url" -CustomLink2Label "MyCustomLink2Label" -CustomLink2Url "MyCustomLink2Url" -AuthenticatorPageCustomLinkLabel "MyAuthenticatorPageCustomLinkLabel" -AuthenticatorPageCustomLinkUrl "MyAuthenticatorPageCustomLinkUrl" -ClassicRecoveryFlowEmailOrUsernameLabel "MyClassicRecoveryFlowEmailOrUsernameLabel"
$SignInPage = Initialize-SignInPage -PageContent "MyPageContent" -WidgetCustomizations $SignInPageAllOfWidgetCustomizations -WidgetVersion "MyWidgetVersion" # SignInPage | 

# Replace the Preview Sign-in Page
try {
    $Result = Invoke-ReplacePreviewSignInPage -BrandId $BrandId -SignInPage $SignInPage
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplacePreviewSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **SignInPage** | [**SignInPage**](SignInPage.md)|  | 

### Return type

[**SignInPage**](SignInPage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceSignOutPageSettings"></a>
# **Invoke-ReplaceSignOutPageSettings**
> HostedPage Invoke-ReplaceSignOutPageSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostedPage] <PSCustomObject><br>

Replace the Sign-out Page Settings

Replaces the sign-out page settings.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$HostedPage = Initialize-HostedPage -Type "EXTERNALLY_HOSTED" -Url "MyUrl" # HostedPage | 

# Replace the Sign-out Page Settings
try {
    $Result = Invoke-ReplaceSignOutPageSettings -BrandId $BrandId -HostedPage $HostedPage
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceSignOutPageSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **HostedPage** | [**HostedPage**](HostedPage.md)|  | 

### Return type

[**HostedPage**](HostedPage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Reset-CustomizedErrorPage"></a>
# **Reset-CustomizedErrorPage**
> void Reset-CustomizedErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Customized Error Page

Resets the customized error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Customized Error Page
try {
    $Result = Reset-CustomizedErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-CustomizedErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Reset-CustomizedSignInPage"></a>
# **Reset-CustomizedSignInPage**
> void Reset-CustomizedSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Customized Sign-in Page

Reset the customized sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Customized Sign-in Page
try {
    $Result = Reset-CustomizedSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-CustomizedSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Reset-PreviewErrorPage"></a>
# **Reset-PreviewErrorPage**
> void Reset-PreviewErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Preview Error Page

Reset the preview error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Preview Error Page
try {
    $Result = Reset-PreviewErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-PreviewErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Reset-PreviewSignInPage"></a>
# **Reset-PreviewSignInPage**
> void Reset-PreviewSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Preview Sign-in Page

Reset the preview sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Preview Sign-in Page
try {
    $Result = Reset-PreviewSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-PreviewSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrieveCustomizedErrorPage"></a>
# **Invoke-RetrieveCustomizedErrorPage**
> CustomizablePage Invoke-RetrieveCustomizedErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Customized Error Page

Retrieves the customized error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Customized Error Page
try {
    $Result = Invoke-RetrieveCustomizedErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrieveCustomizedErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**CustomizablePage**](CustomizablePage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrieveCustomizedSignInPage"></a>
# **Invoke-RetrieveCustomizedSignInPage**
> SignInPage Invoke-RetrieveCustomizedSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Customized Sign-in Page

Retrieves the customized sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Customized Sign-in Page
try {
    $Result = Invoke-RetrieveCustomizedSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrieveCustomizedSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**SignInPage**](SignInPage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrieveDefaultErrorPage"></a>
# **Invoke-RetrieveDefaultErrorPage**
> CustomizablePage Invoke-RetrieveDefaultErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Default Error Page

Retrieves the default error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Default Error Page
try {
    $Result = Invoke-RetrieveDefaultErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrieveDefaultErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**CustomizablePage**](CustomizablePage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrieveDefaultSignInPage"></a>
# **Invoke-RetrieveDefaultSignInPage**
> SignInPage Invoke-RetrieveDefaultSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Default Sign-in Page

Retrieves the default sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Default Sign-in Page
try {
    $Result = Invoke-RetrieveDefaultSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrieveDefaultSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**SignInPage**](SignInPage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrieveErrorPage"></a>
# **Invoke-RetrieveErrorPage**
> PageRoot Invoke-RetrieveErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

Retrieve the Error Page

Retrieves the error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$Expand = "default" # String[] | Specifies additional metadata to be included in the response. (optional)

# Retrieve the Error Page
try {
    $Result = Invoke-RetrieveErrorPage -BrandId $BrandId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrieveErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **Expand** | [**String[]**](String.md)| Specifies additional metadata to be included in the response. | [optional] 

### Return type

[**PageRoot**](PageRoot.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrievePreviewErrorPage"></a>
# **Invoke-RetrievePreviewErrorPage**
> CustomizablePage Invoke-RetrievePreviewErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Preview Error Page Preview

Retrieves the preview error page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Preview Error Page Preview
try {
    $Result = Invoke-RetrievePreviewErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrievePreviewErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**CustomizablePage**](CustomizablePage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrievePreviewSignInPage"></a>
# **Invoke-RetrievePreviewSignInPage**
> SignInPage Invoke-RetrievePreviewSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Preview Sign-in Page Preview

Retrieves the preview sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Preview Sign-in Page Preview
try {
    $Result = Invoke-RetrievePreviewSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrievePreviewSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**SignInPage**](SignInPage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrieveSignInPage"></a>
# **Invoke-RetrieveSignInPage**
> PageRoot Invoke-RetrieveSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

Retrieve the Sign-in Page

Retrieves the sign-in page.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$Expand = "default" # String[] | Specifies additional metadata to be included in the response. (optional)

# Retrieve the Sign-in Page
try {
    $Result = Invoke-RetrieveSignInPage -BrandId $BrandId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrieveSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **Expand** | [**String[]**](String.md)| Specifies additional metadata to be included in the response. | [optional] 

### Return type

[**PageRoot**](PageRoot.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetrieveSignOutPageSettings"></a>
# **Invoke-RetrieveSignOutPageSettings**
> HostedPage Invoke-RetrieveSignOutPageSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Sign-out Page Settings

Retrieves the sign-out page settings.

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

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Sign-out Page Settings
try {
    $Result = Invoke-RetrieveSignOutPageSettings -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetrieveSignOutPageSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 

### Return type

[**HostedPage**](HostedPage.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-TestEmail"></a>
# **Send-TestEmail**
> void Send-TestEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Language] <String><br>

Send a Test Email

Sends a test email to the current user’s primary and secondary email addresses. The email content is selected based on the following priority: 1. The email customization for the language specified in the `language` query parameter. 2. The email template's default customization. 3. The email template’s default content, translated to the current user's language.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Language = "MyLanguage" # String | The language to use for the email. Defaults to the current user's language if unspecified. (optional)

# Send a Test Email
try {
    $Result = Send-TestEmail -BrandId $BrandId -TemplateName $TemplateName -Language $Language
} catch {
    Write-Host ("Exception occurred when calling Send-TestEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **Language** | **String**| The language to use for the email. Defaults to the current user&#39;s language if unspecified. | [optional] 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnlinkBrandDomain"></a>
# **Invoke-UnlinkBrandDomain**
> void Invoke-UnlinkBrandDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Unlink a Brand from a Domain

Unlink brand and domain by its unique identifier

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$DomainId = "MyDomainId" # String | The ID of the domain.

# Unlink a Brand from a Domain
try {
    $Result = Invoke-UnlinkBrandDomain -BrandId $BrandId -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnlinkBrandDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **DomainId** | **String**| The ID of the domain. | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Brand"></a>
# **Update-Brand**
> Brand Update-Brand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Brand] <PSCustomObject><br>

Replace a Brand

Updates a brand by `brandId`

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$BrandRequest = Initialize-BrandRequest -AgreeToCustomPrivacyPolicy $false -CustomPrivacyPolicyUrl "MyCustomPrivacyPolicyUrl" -Name "MyName" -RemovePoweredByOkta $false # BrandRequest | 

# Replace a Brand
try {
    $Result = Update-Brand -BrandId $BrandId -Brand $Brand
} catch {
    Write-Host ("Exception occurred when calling Update-Brand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **Brand** | [**BrandRequest**](BrandRequest.md)|  | 

### Return type

[**Brand**](Brand.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BrandTheme"></a>
# **Update-BrandTheme**
> ThemeResponse Update-BrandTheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Theme] <PSCustomObject><br>

Replace a Theme

Updates a theme for a brand

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$Theme = Initialize-Theme -BackgroundImage "MyBackgroundImage" -EmailTemplateTouchPointVariant "FULL_THEME" -EndUserDashboardTouchPointVariant "FULL_THEME" -ErrorPageTouchPointVariant "BACKGROUND_IMAGE" -LoadingPageTouchPointVariant "NONE" -PrimaryColorContrastHex "MyPrimaryColorContrastHex" -PrimaryColorHex "MyPrimaryColorHex" -SecondaryColorContrastHex "MySecondaryColorContrastHex" -SecondaryColorHex "MySecondaryColorHex" -SignInPageTouchPointVariant "BACKGROUND_IMAGE" -Links @{ key_example =  } # Theme | 

# Replace a Theme
try {
    $Result = Update-BrandTheme -BrandId $BrandId -ThemeId $ThemeId -Theme $Theme
} catch {
    Write-Host ("Exception occurred when calling Update-BrandTheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 
 **Theme** | [**Theme**](Theme.md)|  | 

### Return type

[**ThemeResponse**](ThemeResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-EmailCustomization"></a>
# **Update-EmailCustomization**
> EmailCustomization Update-EmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace an Email Customization

Updates an existing email customization using the property values provided.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$EmailCustomizationAllOfLinks = Initialize-EmailCustomizationAllOfLinks -Self $HrefObject -Template $HrefObject -Preview $HrefObject -Test $HrefObject

$EmailCustomization = Initialize-EmailCustomization -Body "MyBody" -Subject "MySubject" -Created (Get-Date) -Id "MyId" -IsDefault $false -Language "MyLanguage" -LastUpdated (Get-Date) -Links $EmailCustomizationAllOfLinks # EmailCustomization | Request (optional)

# Replace an Email Customization
try {
    $Result = Update-EmailCustomization -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Update-EmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **CustomizationId** | **String**| The ID of the email customization. | 
 **Instance** | [**EmailCustomization**](EmailCustomization.md)| Request | [optional] 

### Return type

[**EmailCustomization**](EmailCustomization.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-EmailSettings"></a>
# **Update-EmailSettings**
> void Update-EmailSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailSettings] <PSCustomObject><br>

Replace the Email Template Settings

Updates an email template's settings.

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$EmailSettings = Initialize-EmailSettings -Recipients "ALL_USERS" # EmailSettings |  (optional)

# Replace the Email Template Settings
try {
    $Result = Update-EmailSettings -BrandId $BrandId -TemplateName $TemplateName -EmailSettings $EmailSettings
} catch {
    Write-Host ("Exception occurred when calling Update-EmailSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **TemplateName** | **String**| The name of the email template. | 
 **EmailSettings** | [**EmailSettings**](EmailSettings.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UploadBrandThemeBackgroundImage"></a>
# **Invoke-UploadBrandThemeBackgroundImage**
> ImageUploadResponse Invoke-UploadBrandThemeBackgroundImage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Background Image

Updates the background image for your Theme

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$File =  # System.IO.FileInfo | 

# Upload the Background Image
try {
    $Result = Invoke-UploadBrandThemeBackgroundImage -BrandId $BrandId -ThemeId $ThemeId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadBrandThemeBackgroundImage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

[**ImageUploadResponse**](ImageUploadResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UploadBrandThemeFavicon"></a>
# **Invoke-UploadBrandThemeFavicon**
> ImageUploadResponse Invoke-UploadBrandThemeFavicon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Favicon

Updates the favicon for your theme

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$File =  # System.IO.FileInfo | 

# Upload the Favicon
try {
    $Result = Invoke-UploadBrandThemeFavicon -BrandId $BrandId -ThemeId $ThemeId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadBrandThemeFavicon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

[**ImageUploadResponse**](ImageUploadResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UploadBrandThemeLogo"></a>
# **Invoke-UploadBrandThemeLogo**
> ImageUploadResponse Invoke-UploadBrandThemeLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Logo

Updates the logo for your Theme

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

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$File =  # System.IO.FileInfo | 

# Upload the Logo
try {
    $Result = Invoke-UploadBrandThemeLogo -BrandId $BrandId -ThemeId $ThemeId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadBrandThemeLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BrandId** | **String**| The ID of the brand. | 
 **ThemeId** | **String**| The ID of the theme. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

[**ImageUploadResponse**](ImageUploadResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

