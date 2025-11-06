# Okta.PowerShell.Okta.PowerShell\Api.OktaCustomizationApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaBrand**](OktaCustomizationApi.md#New-OktaBrand) | **POST** /api/v1/brands | Create a Brand
[**New-OktaEmailCustomization**](OktaCustomizationApi.md#New-OktaEmailCustomization) | **POST** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | Create an Email Customization
[**Invoke-OktaDeleteAllCustomizations**](OktaCustomizationApi.md#Invoke-OktaDeleteAllCustomizations) | **DELETE** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | Delete all Email Customizations
[**Invoke-OktaDeleteBrand**](OktaCustomizationApi.md#Invoke-OktaDeleteBrand) | **DELETE** /api/v1/brands/{brandId} | Delete a brand
[**Invoke-OktaDeleteBrandThemeBackgroundImage**](OktaCustomizationApi.md#Invoke-OktaDeleteBrandThemeBackgroundImage) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/background-image | Delete the Background Image
[**Invoke-OktaDeleteBrandThemeFavicon**](OktaCustomizationApi.md#Invoke-OktaDeleteBrandThemeFavicon) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/favicon | Delete the Favicon
[**Invoke-OktaDeleteBrandThemeLogo**](OktaCustomizationApi.md#Invoke-OktaDeleteBrandThemeLogo) | **DELETE** /api/v1/brands/{brandId}/themes/{themeId}/logo | Delete the Logo
[**Invoke-OktaDeleteEmailCustomization**](OktaCustomizationApi.md#Invoke-OktaDeleteEmailCustomization) | **DELETE** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Delete an Email Customization
[**Get-OktaBrand**](OktaCustomizationApi.md#Get-OktaBrand) | **GET** /api/v1/brands/{brandId} | Retrieve a Brand
[**Get-OktaBrandDomains**](OktaCustomizationApi.md#Get-OktaBrandDomains) | **GET** /api/v1/brands/{brandId}/domains | List all Domains associated with a Brand
[**Get-OktaBrandTheme**](OktaCustomizationApi.md#Get-OktaBrandTheme) | **GET** /api/v1/brands/{brandId}/themes/{themeId} | Retrieve a Theme
[**Get-OktaCustomizationPreview**](OktaCustomizationApi.md#Get-OktaCustomizationPreview) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId}/preview | Preview an Email Customization
[**Get-OktaEmailCustomization**](OktaCustomizationApi.md#Get-OktaEmailCustomization) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Retrieve an Email Customization
[**Get-OktaEmailDefaultContent**](OktaCustomizationApi.md#Get-OktaEmailDefaultContent) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/default-content | Retrieve an Email Template Default Content
[**Get-OktaEmailDefaultPreview**](OktaCustomizationApi.md#Get-OktaEmailDefaultPreview) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/default-content/preview | Preview the Email Template Default Content
[**Get-OktaEmailSettings**](OktaCustomizationApi.md#Get-OktaEmailSettings) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/settings | Retrieve the Email Template Settings
[**Get-OktaEmailTemplate**](OktaCustomizationApi.md#Get-OktaEmailTemplate) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName} | Retrieve an Email Template
[**Invoke-OktaLinkBrandDomain**](OktaCustomizationApi.md#Invoke-OktaLinkBrandDomain) | **POST** /api/v1/brands/{brandId}/domains | Link a Brand to a Domain
[**Invoke-OktaListAllSignInWidgetVersions**](OktaCustomizationApi.md#Invoke-OktaListAllSignInWidgetVersions) | **GET** /api/v1/brands/{brandId}/pages/sign-in/widget-versions | List all Sign-in Widget Versions
[**Invoke-OktaListBrandThemes**](OktaCustomizationApi.md#Invoke-OktaListBrandThemes) | **GET** /api/v1/brands/{brandId}/themes | List all Themes
[**Invoke-OktaListBrands**](OktaCustomizationApi.md#Invoke-OktaListBrands) | **GET** /api/v1/brands | List all Brands
[**Invoke-OktaListEmailCustomizations**](OktaCustomizationApi.md#Invoke-OktaListEmailCustomizations) | **GET** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations | List all Email Customizations
[**Invoke-OktaListEmailTemplates**](OktaCustomizationApi.md#Invoke-OktaListEmailTemplates) | **GET** /api/v1/brands/{brandId}/templates/email | List all Email Templates
[**Invoke-OktaReplaceCustomizedErrorPage**](OktaCustomizationApi.md#Invoke-OktaReplaceCustomizedErrorPage) | **PUT** /api/v1/brands/{brandId}/pages/error/customized | Replace the Customized Error Page
[**Invoke-OktaReplaceCustomizedSignInPage**](OktaCustomizationApi.md#Invoke-OktaReplaceCustomizedSignInPage) | **PUT** /api/v1/brands/{brandId}/pages/sign-in/customized | Replace the Customized Sign-in Page
[**Invoke-OktaReplacePreviewErrorPage**](OktaCustomizationApi.md#Invoke-OktaReplacePreviewErrorPage) | **PUT** /api/v1/brands/{brandId}/pages/error/preview | Replace the Preview Error Page
[**Invoke-OktaReplacePreviewSignInPage**](OktaCustomizationApi.md#Invoke-OktaReplacePreviewSignInPage) | **PUT** /api/v1/brands/{brandId}/pages/sign-in/preview | Replace the Preview Sign-in Page
[**Invoke-OktaReplaceSignOutPageSettings**](OktaCustomizationApi.md#Invoke-OktaReplaceSignOutPageSettings) | **PUT** /api/v1/brands/{brandId}/pages/sign-out/customized | Replace the Sign-out Page Settings
[**Reset-OktaCustomizedErrorPage**](OktaCustomizationApi.md#Reset-OktaCustomizedErrorPage) | **DELETE** /api/v1/brands/{brandId}/pages/error/customized | Reset the Customized Error Page
[**Reset-OktaCustomizedSignInPage**](OktaCustomizationApi.md#Reset-OktaCustomizedSignInPage) | **DELETE** /api/v1/brands/{brandId}/pages/sign-in/customized | Reset the Customized Sign-in Page
[**Reset-OktaPreviewErrorPage**](OktaCustomizationApi.md#Reset-OktaPreviewErrorPage) | **DELETE** /api/v1/brands/{brandId}/pages/error/preview | Reset the Preview Error Page
[**Reset-OktaPreviewSignInPage**](OktaCustomizationApi.md#Reset-OktaPreviewSignInPage) | **DELETE** /api/v1/brands/{brandId}/pages/sign-in/preview | Reset the Preview Sign-in Page
[**Invoke-OktaRetrieveCustomizedErrorPage**](OktaCustomizationApi.md#Invoke-OktaRetrieveCustomizedErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/customized | Retrieve the Customized Error Page
[**Invoke-OktaRetrieveCustomizedSignInPage**](OktaCustomizationApi.md#Invoke-OktaRetrieveCustomizedSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/customized | Retrieve the Customized Sign-in Page
[**Invoke-OktaRetrieveDefaultErrorPage**](OktaCustomizationApi.md#Invoke-OktaRetrieveDefaultErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/default | Retrieve the Default Error Page
[**Invoke-OktaRetrieveDefaultSignInPage**](OktaCustomizationApi.md#Invoke-OktaRetrieveDefaultSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/default | Retrieve the Default Sign-in Page
[**Invoke-OktaRetrieveErrorPage**](OktaCustomizationApi.md#Invoke-OktaRetrieveErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error | Retrieve the Error Page
[**Invoke-OktaRetrievePreviewErrorPage**](OktaCustomizationApi.md#Invoke-OktaRetrievePreviewErrorPage) | **GET** /api/v1/brands/{brandId}/pages/error/preview | Retrieve the Preview Error Page Preview
[**Invoke-OktaRetrievePreviewSignInPage**](OktaCustomizationApi.md#Invoke-OktaRetrievePreviewSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in/preview | Retrieve the Preview Sign-in Page Preview
[**Invoke-OktaRetrieveSignInPage**](OktaCustomizationApi.md#Invoke-OktaRetrieveSignInPage) | **GET** /api/v1/brands/{brandId}/pages/sign-in | Retrieve the Sign-in Page
[**Invoke-OktaRetrieveSignOutPageSettings**](OktaCustomizationApi.md#Invoke-OktaRetrieveSignOutPageSettings) | **GET** /api/v1/brands/{brandId}/pages/sign-out/customized | Retrieve the Sign-out Page Settings
[**Send-OktaTestEmail**](OktaCustomizationApi.md#Send-OktaTestEmail) | **POST** /api/v1/brands/{brandId}/templates/email/{templateName}/test | Send a Test Email
[**Invoke-OktaUnlinkBrandDomain**](OktaCustomizationApi.md#Invoke-OktaUnlinkBrandDomain) | **DELETE** /api/v1/brands/{brandId}/domains/{domainId} | Unlink a Brand from a Domain
[**Update-OktaBrand**](OktaCustomizationApi.md#Update-OktaBrand) | **PUT** /api/v1/brands/{brandId} | Replace a Brand
[**Update-OktaBrandTheme**](OktaCustomizationApi.md#Update-OktaBrandTheme) | **PUT** /api/v1/brands/{brandId}/themes/{themeId} | Replace a Theme
[**Update-OktaEmailCustomization**](OktaCustomizationApi.md#Update-OktaEmailCustomization) | **PUT** /api/v1/brands/{brandId}/templates/email/{templateName}/customizations/{customizationId} | Replace an Email Customization
[**Update-OktaEmailSettings**](OktaCustomizationApi.md#Update-OktaEmailSettings) | **PUT** /api/v1/brands/{brandId}/templates/email/{templateName}/settings | Replace the Email Template Settings
[**Invoke-OktaUploadBrandThemeBackgroundImage**](OktaCustomizationApi.md#Invoke-OktaUploadBrandThemeBackgroundImage) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/background-image | Upload the Background Image
[**Invoke-OktaUploadBrandThemeFavicon**](OktaCustomizationApi.md#Invoke-OktaUploadBrandThemeFavicon) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/favicon | Upload the Favicon
[**Invoke-OktaUploadBrandThemeLogo**](OktaCustomizationApi.md#Invoke-OktaUploadBrandThemeLogo) | **POST** /api/v1/brands/{brandId}/themes/{themeId}/logo | Upload the Logo


<a id="New-OktaBrand"></a>
# **New-OktaBrand**
> Brand New-OktaBrand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateBrandRequest] <PSCustomObject><br>

Create a Brand

Create new brand in your org

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$CreateBrandRequest = Initialize-OktaCreateBrandRequest -Name "MyName" # CreateBrandRequest |  (optional)

# Create a Brand
try {
    $Result = New-OktaBrand -CreateBrandRequest $CreateBrandRequest
} catch {
    Write-Host ("Exception occurred when calling New-OktaBrand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaEmailCustomization"></a>
# **New-OktaEmailCustomization**
> EmailCustomization New-OktaEmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create an Email Customization

Creates a new email customization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$HrefObjectHints = Initialize-OktaHrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-OktaHrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$EmailCustomizationAllOfLinks = Initialize-OktaEmailCustomizationAllOfLinks -Self $HrefObject -Template $HrefObject -Preview $HrefObject -Test $HrefObject

$EmailCustomization = Initialize-OktaEmailCustomization -Body "MyBody" -Subject "MySubject" -Created (Get-Date) -Id "MyId" -IsDefault $false -Language "MyLanguage" -LastUpdated (Get-Date) -Links $EmailCustomizationAllOfLinks # EmailCustomization |  (optional)

# Create an Email Customization
try {
    $Result = New-OktaEmailCustomization -BrandId $BrandId -TemplateName $TemplateName -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-OktaEmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteAllCustomizations"></a>
# **Invoke-OktaDeleteAllCustomizations**
> void Invoke-OktaDeleteAllCustomizations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>

Delete all Email Customizations

Deletes all customizations for an email template.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.

# Delete all Email Customizations
try {
    $Result = Invoke-OktaDeleteAllCustomizations -BrandId $BrandId -TemplateName $TemplateName
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteAllCustomizations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteBrand"></a>
# **Invoke-OktaDeleteBrand**
> void Invoke-OktaDeleteBrand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Delete a brand

Deletes a brand by its unique identifier.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Delete a brand
try {
    $Result = Invoke-OktaDeleteBrand -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteBrand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteBrandThemeBackgroundImage"></a>
# **Invoke-OktaDeleteBrandThemeBackgroundImage**
> void Invoke-OktaDeleteBrandThemeBackgroundImage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Delete the Background Image

Deletes a Theme background image.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Delete the Background Image
try {
    $Result = Invoke-OktaDeleteBrandThemeBackgroundImage -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteBrandThemeBackgroundImage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteBrandThemeFavicon"></a>
# **Invoke-OktaDeleteBrandThemeFavicon**
> void Invoke-OktaDeleteBrandThemeFavicon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Delete the Favicon

Deletes a Theme favicon. The theme will use the default Okta favicon.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Delete the Favicon
try {
    $Result = Invoke-OktaDeleteBrandThemeFavicon -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteBrandThemeFavicon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteBrandThemeLogo"></a>
# **Invoke-OktaDeleteBrandThemeLogo**
> void Invoke-OktaDeleteBrandThemeLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Delete the Logo

Deletes a Theme logo. The theme will use the default Okta logo.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Delete the Logo
try {
    $Result = Invoke-OktaDeleteBrandThemeLogo -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteBrandThemeLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteEmailCustomization"></a>
# **Invoke-OktaDeleteEmailCustomization**
> void Invoke-OktaDeleteEmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>

Delete an Email Customization

Deletes an email customization by its unique identifier.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.

# Delete an Email Customization
try {
    $Result = Invoke-OktaDeleteEmailCustomization -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteEmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaBrand"></a>
# **Get-OktaBrand**
> Brand Get-OktaBrand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve a Brand

Fetches a brand by `brandId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve a Brand
try {
    $Result = Get-OktaBrand -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaBrand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaBrandDomains"></a>
# **Get-OktaBrandDomains**
> DomainResponse[] Get-OktaBrandDomains<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

List all Domains associated with a Brand

List all domains associated with a brand by `brandId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# List all Domains associated with a Brand
try {
    $Result = Get-OktaBrandDomains -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaBrandDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaBrandTheme"></a>
# **Get-OktaBrandTheme**
> ThemeResponse Get-OktaBrandTheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>

Retrieve a Theme

Fetches a theme for a brand

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.

# Retrieve a Theme
try {
    $Result = Get-OktaBrandTheme -BrandId $BrandId -ThemeId $ThemeId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaBrandTheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaCustomizationPreview"></a>
# **Get-OktaCustomizationPreview**
> EmailPreview Get-OktaCustomizationPreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>

Preview an Email Customization

Generates a preview of an email customization. All variable references (e.g., `${user.profile.firstName}`) are populated using the current user's context.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.

# Preview an Email Customization
try {
    $Result = Get-OktaCustomizationPreview -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaCustomizationPreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaEmailCustomization"></a>
# **Get-OktaEmailCustomization**
> EmailCustomization Get-OktaEmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>

Retrieve an Email Customization

Gets an email customization by its unique identifier.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.

# Retrieve an Email Customization
try {
    $Result = Get-OktaEmailCustomization -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaEmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaEmailDefaultContent"></a>
# **Get-OktaEmailDefaultContent**
> EmailDefaultContent Get-OktaEmailDefaultContent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Language] <String><br>

Retrieve an Email Template Default Content

Gets an email template's default content.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Language = "MyLanguage" # String | The language to use for the email. Defaults to the current user's language if unspecified. (optional)

# Retrieve an Email Template Default Content
try {
    $Result = Get-OktaEmailDefaultContent -BrandId $BrandId -TemplateName $TemplateName -Language $Language
} catch {
    Write-Host ("Exception occurred when calling Get-OktaEmailDefaultContent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaEmailDefaultPreview"></a>
# **Get-OktaEmailDefaultPreview**
> EmailPreview Get-OktaEmailDefaultPreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Language] <String><br>

Preview the Email Template Default Content

Generates a preview of an email template's default content. All variable references (e.g., `${user.profile.firstName}`) are populated using the current user's context.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Language = "MyLanguage" # String | The language to use for the email. Defaults to the current user's language if unspecified. (optional)

# Preview the Email Template Default Content
try {
    $Result = Get-OktaEmailDefaultPreview -BrandId $BrandId -TemplateName $TemplateName -Language $Language
} catch {
    Write-Host ("Exception occurred when calling Get-OktaEmailDefaultPreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaEmailSettings"></a>
# **Get-OktaEmailSettings**
> EmailSettings Get-OktaEmailSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>

Retrieve the Email Template Settings

Gets an email template's settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.

# Retrieve the Email Template Settings
try {
    $Result = Get-OktaEmailSettings -BrandId $BrandId -TemplateName $TemplateName
} catch {
    Write-Host ("Exception occurred when calling Get-OktaEmailSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaEmailTemplate"></a>
# **Get-OktaEmailTemplate**
> EmailTemplate Get-OktaEmailTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

Retrieve an Email Template

Gets the details of an email template by name.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Expand = "settings" # String[] | Specifies additional metadata to be included in the response. (optional)

# Retrieve an Email Template
try {
    $Result = Get-OktaEmailTemplate -BrandId $BrandId -TemplateName $TemplateName -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaEmailTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaLinkBrandDomain"></a>
# **Invoke-OktaLinkBrandDomain**
> BrandDomain Invoke-OktaLinkBrandDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateBrandDomainRequest] <PSCustomObject><br>

Link a Brand to a Domain

Link a Brand to a Domain by `domainId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$CreateBrandDomainRequest = Initialize-OktaCreateBrandDomainRequest -DomainId "MyDomainId" # CreateBrandDomainRequest |  (optional)

# Link a Brand to a Domain
try {
    $Result = Invoke-OktaLinkBrandDomain -BrandId $BrandId -CreateBrandDomainRequest $CreateBrandDomainRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaLinkBrandDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAllSignInWidgetVersions"></a>
# **Invoke-OktaListAllSignInWidgetVersions**
> String[] Invoke-OktaListAllSignInWidgetVersions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

List all Sign-in Widget Versions

List all sign-in widget versions.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# List all Sign-in Widget Versions
try {
    $Result = Invoke-OktaListAllSignInWidgetVersions -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAllSignInWidgetVersions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListBrandThemes"></a>
# **Invoke-OktaListBrandThemes**
> ThemeResponse[] Invoke-OktaListBrandThemes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

List all Themes

List all the themes in your brand

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# List all Themes
try {
    $Result = Invoke-OktaListBrandThemes -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListBrandThemes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListBrands"></a>
# **Invoke-OktaListBrands**
> Brand[] Invoke-OktaListBrands<br>

List all Brands

List all the brands in your org.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all Brands
try {
    $Result = Invoke-OktaListBrands
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListBrands: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListEmailCustomizations"></a>
# **Invoke-OktaListEmailCustomizations**
> EmailCustomization[] Invoke-OktaListEmailCustomizations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Email Customizations

Lists all customizations of an email template.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)

# List all Email Customizations
try {
    $Result = Invoke-OktaListEmailCustomizations -BrandId $BrandId -TemplateName $TemplateName -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListEmailCustomizations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListEmailTemplates"></a>
# **Invoke-OktaListEmailTemplates**
> EmailTemplate[] Invoke-OktaListEmailTemplates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

List all Email Templates

Lists all email templates.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)
$Expand = "settings" # String[] | Specifies additional metadata to be included in the response. (optional)

# List all Email Templates
try {
    $Result = Invoke-OktaListEmailTemplates -BrandId $BrandId -After $After -Limit $Limit -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListEmailTemplates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceCustomizedErrorPage"></a>
# **Invoke-OktaReplaceCustomizedErrorPage**
> CustomizablePage Invoke-OktaReplaceCustomizedErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizablePage] <PSCustomObject><br>

Replace the Customized Error Page

Replaces the customized error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$CustomizablePage = Initialize-OktaCustomizablePage -PageContent "MyPageContent" # CustomizablePage | 

# Replace the Customized Error Page
try {
    $Result = Invoke-OktaReplaceCustomizedErrorPage -BrandId $BrandId -CustomizablePage $CustomizablePage
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceCustomizedErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceCustomizedSignInPage"></a>
# **Invoke-OktaReplaceCustomizedSignInPage**
> SignInPage Invoke-OktaReplaceCustomizedSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SignInPage] <PSCustomObject><br>

Replace the Customized Sign-in Page

Replaces the customized sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$SignInPageAllOfWidgetCustomizations = Initialize-OktaSignInPageAllOfWidgetCustomizations -SignInLabel "MySignInLabel" -UsernameLabel "MyUsernameLabel" -UsernameInfoTip "MyUsernameInfoTip" -PasswordLabel "MyPasswordLabel" -PasswordInfoTip "MyPasswordInfoTip" -ShowPasswordVisibilityToggle $false -ShowUserIdentifier $false -ForgotPasswordLabel "MyForgotPasswordLabel" -ForgotPasswordUrl "MyForgotPasswordUrl" -UnlockAccountLabel "MyUnlockAccountLabel" -UnlockAccountUrl "MyUnlockAccountUrl" -HelpLabel "MyHelpLabel" -HelpUrl "MyHelpUrl" -CustomLink1Label "MyCustomLink1Label" -CustomLink1Url "MyCustomLink1Url" -CustomLink2Label "MyCustomLink2Label" -CustomLink2Url "MyCustomLink2Url" -AuthenticatorPageCustomLinkLabel "MyAuthenticatorPageCustomLinkLabel" -AuthenticatorPageCustomLinkUrl "MyAuthenticatorPageCustomLinkUrl" -ClassicRecoveryFlowEmailOrUsernameLabel "MyClassicRecoveryFlowEmailOrUsernameLabel"
$SignInPage = Initialize-OktaSignInPage -PageContent "MyPageContent" -WidgetCustomizations $SignInPageAllOfWidgetCustomizations -WidgetVersion "MyWidgetVersion" # SignInPage | 

# Replace the Customized Sign-in Page
try {
    $Result = Invoke-OktaReplaceCustomizedSignInPage -BrandId $BrandId -SignInPage $SignInPage
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceCustomizedSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplacePreviewErrorPage"></a>
# **Invoke-OktaReplacePreviewErrorPage**
> CustomizablePage Invoke-OktaReplacePreviewErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizablePage] <PSCustomObject><br>

Replace the Preview Error Page

Replace the preview error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$CustomizablePage = Initialize-OktaCustomizablePage -PageContent "MyPageContent" # CustomizablePage | 

# Replace the Preview Error Page
try {
    $Result = Invoke-OktaReplacePreviewErrorPage -BrandId $BrandId -CustomizablePage $CustomizablePage
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplacePreviewErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplacePreviewSignInPage"></a>
# **Invoke-OktaReplacePreviewSignInPage**
> SignInPage Invoke-OktaReplacePreviewSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SignInPage] <PSCustomObject><br>

Replace the Preview Sign-in Page

Replace the preview sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$SignInPageAllOfWidgetCustomizations = Initialize-OktaSignInPageAllOfWidgetCustomizations -SignInLabel "MySignInLabel" -UsernameLabel "MyUsernameLabel" -UsernameInfoTip "MyUsernameInfoTip" -PasswordLabel "MyPasswordLabel" -PasswordInfoTip "MyPasswordInfoTip" -ShowPasswordVisibilityToggle $false -ShowUserIdentifier $false -ForgotPasswordLabel "MyForgotPasswordLabel" -ForgotPasswordUrl "MyForgotPasswordUrl" -UnlockAccountLabel "MyUnlockAccountLabel" -UnlockAccountUrl "MyUnlockAccountUrl" -HelpLabel "MyHelpLabel" -HelpUrl "MyHelpUrl" -CustomLink1Label "MyCustomLink1Label" -CustomLink1Url "MyCustomLink1Url" -CustomLink2Label "MyCustomLink2Label" -CustomLink2Url "MyCustomLink2Url" -AuthenticatorPageCustomLinkLabel "MyAuthenticatorPageCustomLinkLabel" -AuthenticatorPageCustomLinkUrl "MyAuthenticatorPageCustomLinkUrl" -ClassicRecoveryFlowEmailOrUsernameLabel "MyClassicRecoveryFlowEmailOrUsernameLabel"
$SignInPage = Initialize-OktaSignInPage -PageContent "MyPageContent" -WidgetCustomizations $SignInPageAllOfWidgetCustomizations -WidgetVersion "MyWidgetVersion" # SignInPage | 

# Replace the Preview Sign-in Page
try {
    $Result = Invoke-OktaReplacePreviewSignInPage -BrandId $BrandId -SignInPage $SignInPage
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplacePreviewSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceSignOutPageSettings"></a>
# **Invoke-OktaReplaceSignOutPageSettings**
> HostedPage Invoke-OktaReplaceSignOutPageSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostedPage] <PSCustomObject><br>

Replace the Sign-out Page Settings

Replaces the sign-out page settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$HostedPage = Initialize-OktaHostedPage -Type "EXTERNALLY_HOSTED" -Url "MyUrl" # HostedPage | 

# Replace the Sign-out Page Settings
try {
    $Result = Invoke-OktaReplaceSignOutPageSettings -BrandId $BrandId -HostedPage $HostedPage
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceSignOutPageSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Reset-OktaCustomizedErrorPage"></a>
# **Reset-OktaCustomizedErrorPage**
> void Reset-OktaCustomizedErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Customized Error Page

Resets the customized error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Customized Error Page
try {
    $Result = Reset-OktaCustomizedErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-OktaCustomizedErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Reset-OktaCustomizedSignInPage"></a>
# **Reset-OktaCustomizedSignInPage**
> void Reset-OktaCustomizedSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Customized Sign-in Page

Reset the customized sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Customized Sign-in Page
try {
    $Result = Reset-OktaCustomizedSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-OktaCustomizedSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Reset-OktaPreviewErrorPage"></a>
# **Reset-OktaPreviewErrorPage**
> void Reset-OktaPreviewErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Preview Error Page

Reset the preview error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Preview Error Page
try {
    $Result = Reset-OktaPreviewErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-OktaPreviewErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Reset-OktaPreviewSignInPage"></a>
# **Reset-OktaPreviewSignInPage**
> void Reset-OktaPreviewSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Reset the Preview Sign-in Page

Reset the preview sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Reset the Preview Sign-in Page
try {
    $Result = Reset-OktaPreviewSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Reset-OktaPreviewSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrieveCustomizedErrorPage"></a>
# **Invoke-OktaRetrieveCustomizedErrorPage**
> CustomizablePage Invoke-OktaRetrieveCustomizedErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Customized Error Page

Retrieves the customized error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Customized Error Page
try {
    $Result = Invoke-OktaRetrieveCustomizedErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrieveCustomizedErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrieveCustomizedSignInPage"></a>
# **Invoke-OktaRetrieveCustomizedSignInPage**
> SignInPage Invoke-OktaRetrieveCustomizedSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Customized Sign-in Page

Retrieves the customized sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Customized Sign-in Page
try {
    $Result = Invoke-OktaRetrieveCustomizedSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrieveCustomizedSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrieveDefaultErrorPage"></a>
# **Invoke-OktaRetrieveDefaultErrorPage**
> CustomizablePage Invoke-OktaRetrieveDefaultErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Default Error Page

Retrieves the default error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Default Error Page
try {
    $Result = Invoke-OktaRetrieveDefaultErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrieveDefaultErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrieveDefaultSignInPage"></a>
# **Invoke-OktaRetrieveDefaultSignInPage**
> SignInPage Invoke-OktaRetrieveDefaultSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Default Sign-in Page

Retrieves the default sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Default Sign-in Page
try {
    $Result = Invoke-OktaRetrieveDefaultSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrieveDefaultSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrieveErrorPage"></a>
# **Invoke-OktaRetrieveErrorPage**
> PageRoot Invoke-OktaRetrieveErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

Retrieve the Error Page

Retrieves the error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$Expand = "default" # String[] | Specifies additional metadata to be included in the response. (optional)

# Retrieve the Error Page
try {
    $Result = Invoke-OktaRetrieveErrorPage -BrandId $BrandId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrieveErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrievePreviewErrorPage"></a>
# **Invoke-OktaRetrievePreviewErrorPage**
> CustomizablePage Invoke-OktaRetrievePreviewErrorPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Preview Error Page Preview

Retrieves the preview error page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Preview Error Page Preview
try {
    $Result = Invoke-OktaRetrievePreviewErrorPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrievePreviewErrorPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrievePreviewSignInPage"></a>
# **Invoke-OktaRetrievePreviewSignInPage**
> SignInPage Invoke-OktaRetrievePreviewSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Preview Sign-in Page Preview

Retrieves the preview sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Preview Sign-in Page Preview
try {
    $Result = Invoke-OktaRetrievePreviewSignInPage -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrievePreviewSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrieveSignInPage"></a>
# **Invoke-OktaRetrieveSignInPage**
> PageRoot Invoke-OktaRetrieveSignInPage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String[]><br>

Retrieve the Sign-in Page

Retrieves the sign-in page.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$Expand = "default" # String[] | Specifies additional metadata to be included in the response. (optional)

# Retrieve the Sign-in Page
try {
    $Result = Invoke-OktaRetrieveSignInPage -BrandId $BrandId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrieveSignInPage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetrieveSignOutPageSettings"></a>
# **Invoke-OktaRetrieveSignOutPageSettings**
> HostedPage Invoke-OktaRetrieveSignOutPageSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>

Retrieve the Sign-out Page Settings

Retrieves the sign-out page settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.

# Retrieve the Sign-out Page Settings
try {
    $Result = Invoke-OktaRetrieveSignOutPageSettings -BrandId $BrandId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetrieveSignOutPageSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Send-OktaTestEmail"></a>
# **Send-OktaTestEmail**
> void Send-OktaTestEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Language] <String><br>

Send a Test Email

Sends a test email to the current user’s primary and secondary email addresses. The email content is selected based on the following priority: 1. The email customization for the language specified in the `language` query parameter. 2. The email template's default customization. 3. The email template’s default content, translated to the current user's language.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$Language = "MyLanguage" # String | The language to use for the email. Defaults to the current user's language if unspecified. (optional)

# Send a Test Email
try {
    $Result = Send-OktaTestEmail -BrandId $BrandId -TemplateName $TemplateName -Language $Language
} catch {
    Write-Host ("Exception occurred when calling Send-OktaTestEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnlinkBrandDomain"></a>
# **Invoke-OktaUnlinkBrandDomain**
> void Invoke-OktaUnlinkBrandDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Unlink a Brand from a Domain

Unlink brand and domain by its unique identifier

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$DomainId = "MyDomainId" # String | The ID of the domain.

# Unlink a Brand from a Domain
try {
    $Result = Invoke-OktaUnlinkBrandDomain -BrandId $BrandId -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnlinkBrandDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaBrand"></a>
# **Update-OktaBrand**
> Brand Update-OktaBrand<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Brand] <PSCustomObject><br>

Replace a Brand

Updates a brand by `brandId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$BrandRequest = Initialize-OktaBrandRequest -AgreeToCustomPrivacyPolicy $false -CustomPrivacyPolicyUrl "MyCustomPrivacyPolicyUrl" -Name "MyName" -RemovePoweredByOkta $false # BrandRequest | 

# Replace a Brand
try {
    $Result = Update-OktaBrand -BrandId $BrandId -Brand $Brand
} catch {
    Write-Host ("Exception occurred when calling Update-OktaBrand: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaBrandTheme"></a>
# **Update-OktaBrandTheme**
> ThemeResponse Update-OktaBrandTheme<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Theme] <PSCustomObject><br>

Replace a Theme

Updates a theme for a brand

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$Theme = Initialize-OktaTheme -BackgroundImage "MyBackgroundImage" -EmailTemplateTouchPointVariant "FULL_THEME" -EndUserDashboardTouchPointVariant "FULL_THEME" -ErrorPageTouchPointVariant "BACKGROUND_IMAGE" -LoadingPageTouchPointVariant "NONE" -PrimaryColorContrastHex "MyPrimaryColorContrastHex" -PrimaryColorHex "MyPrimaryColorHex" -SecondaryColorContrastHex "MySecondaryColorContrastHex" -SecondaryColorHex "MySecondaryColorHex" -SignInPageTouchPointVariant "BACKGROUND_IMAGE" -Links @{ key_example =  } # Theme | 

# Replace a Theme
try {
    $Result = Update-OktaBrandTheme -BrandId $BrandId -ThemeId $ThemeId -Theme $Theme
} catch {
    Write-Host ("Exception occurred when calling Update-OktaBrandTheme: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaEmailCustomization"></a>
# **Update-OktaEmailCustomization**
> EmailCustomization Update-OktaEmailCustomization<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomizationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace an Email Customization

Updates an existing email customization using the property values provided.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$CustomizationId = "MyCustomizationId" # String | The ID of the email customization.
$HrefObjectHints = Initialize-OktaHrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-OktaHrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$EmailCustomizationAllOfLinks = Initialize-OktaEmailCustomizationAllOfLinks -Self $HrefObject -Template $HrefObject -Preview $HrefObject -Test $HrefObject

$EmailCustomization = Initialize-OktaEmailCustomization -Body "MyBody" -Subject "MySubject" -Created (Get-Date) -Id "MyId" -IsDefault $false -Language "MyLanguage" -LastUpdated (Get-Date) -Links $EmailCustomizationAllOfLinks # EmailCustomization | Request (optional)

# Replace an Email Customization
try {
    $Result = Update-OktaEmailCustomization -BrandId $BrandId -TemplateName $TemplateName -CustomizationId $CustomizationId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Update-OktaEmailCustomization: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaEmailSettings"></a>
# **Update-OktaEmailSettings**
> void Update-OktaEmailSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailSettings] <PSCustomObject><br>

Replace the Email Template Settings

Updates an email template's settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$TemplateName = "MyTemplateName" # String | The name of the email template.
$EmailSettings = Initialize-OktaEmailSettings -Recipients "ALL_USERS" # EmailSettings |  (optional)

# Replace the Email Template Settings
try {
    $Result = Update-OktaEmailSettings -BrandId $BrandId -TemplateName $TemplateName -EmailSettings $EmailSettings
} catch {
    Write-Host ("Exception occurred when calling Update-OktaEmailSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUploadBrandThemeBackgroundImage"></a>
# **Invoke-OktaUploadBrandThemeBackgroundImage**
> ImageUploadResponse Invoke-OktaUploadBrandThemeBackgroundImage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Background Image

Updates the background image for your Theme

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$File =  # System.IO.FileInfo | 

# Upload the Background Image
try {
    $Result = Invoke-OktaUploadBrandThemeBackgroundImage -BrandId $BrandId -ThemeId $ThemeId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUploadBrandThemeBackgroundImage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUploadBrandThemeFavicon"></a>
# **Invoke-OktaUploadBrandThemeFavicon**
> ImageUploadResponse Invoke-OktaUploadBrandThemeFavicon<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Favicon

Updates the favicon for your theme

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$File =  # System.IO.FileInfo | 

# Upload the Favicon
try {
    $Result = Invoke-OktaUploadBrandThemeFavicon -BrandId $BrandId -ThemeId $ThemeId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUploadBrandThemeFavicon: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUploadBrandThemeLogo"></a>
# **Invoke-OktaUploadBrandThemeLogo**
> ImageUploadResponse Invoke-OktaUploadBrandThemeLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BrandId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThemeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Logo

Updates the logo for your Theme

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BrandId = "MyBrandId" # String | The ID of the brand.
$ThemeId = "MyThemeId" # String | The ID of the theme.
$File =  # System.IO.FileInfo | 

# Upload the Logo
try {
    $Result = Invoke-OktaUploadBrandThemeLogo -BrandId $BrandId -ThemeId $ThemeId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUploadBrandThemeLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

