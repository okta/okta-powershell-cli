# Okta.PowerShell.Okta.PowerShell/Api.OktaEmailDomainApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaEmailDomain**](OktaEmailDomainApi.md#New-OktaEmailDomain) | **POST** /api/v1/email-domains | Create an Email Domain
[**Invoke-OktaDeleteEmailDomain**](OktaEmailDomainApi.md#Invoke-OktaDeleteEmailDomain) | **DELETE** /api/v1/email-domains/{emailDomainId} | Delete an Email Domain
[**Get-OktaEmailDomain**](OktaEmailDomainApi.md#Get-OktaEmailDomain) | **GET** /api/v1/email-domains/{emailDomainId} | Retrieve a Email Domain
[**Invoke-OktaListEmailDomainBrands**](OktaEmailDomainApi.md#Invoke-OktaListEmailDomainBrands) | **GET** /api/v1/email-domains/{emailDomainId}/brands | List all brands linked to an email domain
[**Invoke-OktaListEmailDomains**](OktaEmailDomainApi.md#Invoke-OktaListEmailDomains) | **GET** /api/v1/email-domains | List all email domains
[**Update-OktaEmailDomain**](OktaEmailDomainApi.md#Update-OktaEmailDomain) | **PUT** /api/v1/email-domains/{emailDomainId} | Replace an Email Domain
[**Test-OktaEmailDomain**](OktaEmailDomainApi.md#Test-OktaEmailDomain) | **POST** /api/v1/email-domains/{emailDomainId}/verify | Verify an Email Domain


<a id="New-OktaEmailDomain"></a>
# **New-OktaEmailDomain**
> EmailDomainResponse New-OktaEmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomain] <PSCustomObject><br>

Create an Email Domain

Creates a custom email domain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EmailDomain = Initialize-EmailDomain -Domain "MyDomain" -DisplayName "MyDisplayName" -UserName "MyUserName" # EmailDomain | 

# Create an Email Domain
try {
    $Result = New-OktaEmailDomain -EmailDomain $EmailDomain
} catch {
    Write-Host ("Exception occurred when calling New-OktaEmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteEmailDomain"></a>
# **Invoke-OktaDeleteEmailDomain**
> void Invoke-OktaDeleteEmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

Delete an Email Domain

Deletes an Email Domain by `emailDomainId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EmailDomainId = "MyEmailDomainId" # String | 

# Delete an Email Domain
try {
    $Result = Invoke-OktaDeleteEmailDomain -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteEmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaEmailDomain"></a>
# **Get-OktaEmailDomain**
> EmailDomainResponse Get-OktaEmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

Retrieve a Email Domain

Fetches an Email Domain by `emailDomainId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EmailDomainId = "MyEmailDomainId" # String | 

# Retrieve a Email Domain
try {
    $Result = Get-OktaEmailDomain -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaEmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListEmailDomainBrands"></a>
# **Invoke-OktaListEmailDomainBrands**
> Brand[] Invoke-OktaListEmailDomainBrands<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

List all brands linked to an email domain

List all brands linked to an email domain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EmailDomainId = "MyEmailDomainId" # String | 

# List all brands linked to an email domain
try {
    $Result = Invoke-OktaListEmailDomainBrands -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListEmailDomainBrands: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListEmailDomains"></a>
# **Invoke-OktaListEmailDomains**
> EmailDomainListResponse Invoke-OktaListEmailDomains<br>

List all email domains

List all the email domains in your org.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all email domains
try {
    $Result = Invoke-OktaListEmailDomains
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListEmailDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaEmailDomain"></a>
# **Update-OktaEmailDomain**
> EmailDomainResponse Update-OktaEmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateEmailDomain] <PSCustomObject><br>

Replace an Email Domain

Replaces an email domain by `emailDomainId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EmailDomainId = "MyEmailDomainId" # String | 
$UpdateEmailDomain = Initialize-UpdateEmailDomain -DisplayName "MyDisplayName" -UserName "MyUserName" # UpdateEmailDomain | 

# Replace an Email Domain
try {
    $Result = Update-OktaEmailDomain -EmailDomainId $EmailDomainId -UpdateEmailDomain $UpdateEmailDomain
} catch {
    Write-Host ("Exception occurred when calling Update-OktaEmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Test-OktaEmailDomain"></a>
# **Test-OktaEmailDomain**
> EmailDomainResponse Test-OktaEmailDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailDomainId] <String><br>

Verify an Email Domain

Verifies an Email Domain by `emailDomainId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EmailDomainId = "MyEmailDomainId" # String | 

# Verify an Email Domain
try {
    $Result = Test-OktaEmailDomain -EmailDomainId $EmailDomainId
} catch {
    Write-Host ("Exception occurred when calling Test-OktaEmailDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

