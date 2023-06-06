# PSOpenAPITools.PSOpenAPITools\Api.DomainApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Certificate**](DomainApi.md#New-Certificate) | **PUT** /api/v1/domains/{domainId}/certificate | Replace the Certificate
[**New-Domain**](DomainApi.md#New-Domain) | **POST** /api/v1/domains | Create a Domain
[**Invoke-DeleteDomain**](DomainApi.md#Invoke-DeleteDomain) | **DELETE** /api/v1/domains/{domainId} | Delete a Domain
[**Get-Domain**](DomainApi.md#Get-Domain) | **GET** /api/v1/domains/{domainId} | Retrieve a Domain
[**Invoke-ListDomains**](DomainApi.md#Invoke-ListDomains) | **GET** /api/v1/domains | List all Domains
[**Update-Domain**](DomainApi.md#Update-Domain) | **PUT** /api/v1/domains/{domainId} | Replace a Domain&#39;s brandId
[**Test-Domain**](DomainApi.md#Test-Domain) | **POST** /api/v1/domains/{domainId}/verify | Verify a Domain


<a name="New-Certificate"></a>
# **New-Certificate**
> void New-Certificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Certificate] <PSCustomObject><br>

Replace the Certificate

Creates the Certificate for the Domain.

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

$DomainId = "MyDomainId" # String | 
$DomainCertificate = Initialize-DomainCertificate -Certificate "MyCertificate" -CertificateChain "MyCertificateChain" -PrivateKey "MyPrivateKey" -Type "PEM" # DomainCertificate | 

# Replace the Certificate
try {
    $Result = New-Certificate -DomainId $DomainId -Certificate $Certificate
} catch {
    Write-Host ("Exception occurred when calling New-Certificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainId** | **String**|  | 
 **Certificate** | [**DomainCertificate**](DomainCertificate.md)|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Domain"></a>
# **New-Domain**
> DomainResponse New-Domain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <PSCustomObject><br>

Create a Domain

Creates your domain.

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

$DNSRecord = Initialize-DNSRecord -Expiration "MyExpiration" -Fqdn "MyFqdn" -RecordType "CNAME" -Values "MyValues"
$DomainCertificateMetadata = Initialize-DomainCertificateMetadata -Expiration "MyExpiration" -Fingerprint "MyFingerprint" -Subject "MySubject"
$Domain = Initialize-Domain -BrandId "MyBrandId" -CertificateSourceType "MANUAL" -DnsRecords $DNSRecord -Domain "MyDomain" -Id "MyId" -PublicCertificate $DomainCertificateMetadata -ValidationStatus "COMPLETED" # Domain | 

# Create a Domain
try {
    $Result = New-Domain -Domain $Domain
} catch {
    Write-Host ("Exception occurred when calling New-Domain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Domain** | [**Domain**](Domain.md)|  | 

### Return type

[**DomainResponse**](DomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteDomain"></a>
# **Invoke-DeleteDomain**
> void Invoke-DeleteDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Delete a Domain

Deletes a Domain by `id`.

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

$DomainId = "MyDomainId" # String | 

# Delete a Domain
try {
    $Result = Invoke-DeleteDomain -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Domain"></a>
# **Get-Domain**
> DomainResponse Get-Domain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Retrieve a Domain

Fetches a Domain by `id`.

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

$DomainId = "MyDomainId" # String | 

# Retrieve a Domain
try {
    $Result = Get-Domain -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Get-Domain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainId** | **String**|  | 

### Return type

[**DomainResponse**](DomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListDomains"></a>
# **Invoke-ListDomains**
> DomainListResponse Invoke-ListDomains<br>

List all Domains

List all verified custom Domains for the org.

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


# List all Domains
try {
    $Result = Invoke-ListDomains
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainListResponse**](DomainListResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Domain"></a>
# **Update-Domain**
> DomainResponse Update-Domain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDomain] <PSCustomObject><br>

Replace a Domain's brandId

Updates a Domain by `id`.

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

$DomainId = "MyDomainId" # String | 
$UpdateDomain = Initialize-UpdateDomain -BrandId "MyBrandId" # UpdateDomain | 

# Replace a Domain's brandId
try {
    $Result = Update-Domain -DomainId $DomainId -UpdateDomain $UpdateDomain
} catch {
    Write-Host ("Exception occurred when calling Update-Domain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainId** | **String**|  | 
 **UpdateDomain** | [**UpdateDomain**](UpdateDomain.md)|  | 

### Return type

[**DomainResponse**](DomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-Domain"></a>
# **Test-Domain**
> DomainResponse Test-Domain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Verify a Domain

Verifies the Domain by `id`.

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

$DomainId = "MyDomainId" # String | 

# Verify a Domain
try {
    $Result = Test-Domain -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Test-Domain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainId** | **String**|  | 

### Return type

[**DomainResponse**](DomainResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

