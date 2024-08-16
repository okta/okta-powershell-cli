# Okta.PowerShell.Okta.PowerShell\Api.OktaDomainApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaCertificate**](OktaDomainApi.md#New-OktaCertificate) | **PUT** /api/v1/domains/{domainId}/certificate | Replace the Certificate
[**New-OktaDomain**](OktaDomainApi.md#New-OktaDomain) | **POST** /api/v1/domains | Create a Domain
[**Invoke-OktaDeleteDomain**](OktaDomainApi.md#Invoke-OktaDeleteDomain) | **DELETE** /api/v1/domains/{domainId} | Delete a Domain
[**Get-OktaDomain**](OktaDomainApi.md#Get-OktaDomain) | **GET** /api/v1/domains/{domainId} | Retrieve a Domain
[**Invoke-OktaListDomains**](OktaDomainApi.md#Invoke-OktaListDomains) | **GET** /api/v1/domains | List all Domains
[**Update-OktaDomain**](OktaDomainApi.md#Update-OktaDomain) | **PUT** /api/v1/domains/{domainId} | Replace a Domain&#39;s brandId
[**Test-OktaDomain**](OktaDomainApi.md#Test-OktaDomain) | **POST** /api/v1/domains/{domainId}/verify | Verify a Domain


<a id="New-OktaCertificate"></a>
# **New-OktaCertificate**
> void New-OktaCertificate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Certificate] <PSCustomObject><br>

Replace the Certificate

Creates the Certificate for the Domain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DomainId = "MyDomainId" # String | 
$DomainCertificate = Initialize-DomainCertificate -Certificate "MyCertificate" -CertificateChain "MyCertificateChain" -PrivateKey "MyPrivateKey" -Type "PEM" # DomainCertificate | 

# Replace the Certificate
try {
    $Result = New-OktaCertificate -DomainId $DomainId -Certificate $Certificate
} catch {
    Write-Host ("Exception occurred when calling New-OktaCertificate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaDomain"></a>
# **New-OktaDomain**
> DomainResponse New-OktaDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <PSCustomObject><br>

Create a Domain

Creates your domain.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DNSRecord = Initialize-DNSRecord -Expiration "MyExpiration" -Fqdn "MyFqdn" -RecordType "CNAME" -Values "MyValues"
$DomainCertificateMetadata = Initialize-DomainCertificateMetadata -Expiration "MyExpiration" -Fingerprint "MyFingerprint" -Subject "MySubject"
$Domain = Initialize-Domain -BrandId "MyBrandId" -CertificateSourceType "MANUAL" -DnsRecords $DNSRecord -Domain "MyDomain" -Id "MyId" -PublicCertificate $DomainCertificateMetadata -ValidationStatus "COMPLETED" # Domain | 

# Create a Domain
try {
    $Result = New-OktaDomain -Domain $Domain
} catch {
    Write-Host ("Exception occurred when calling New-OktaDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteDomain"></a>
# **Invoke-OktaDeleteDomain**
> void Invoke-OktaDeleteDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Delete a Domain

Deletes a Domain by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DomainId = "MyDomainId" # String | 

# Delete a Domain
try {
    $Result = Invoke-OktaDeleteDomain -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaDomain"></a>
# **Get-OktaDomain**
> DomainResponse Get-OktaDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Retrieve a Domain

Fetches a Domain by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DomainId = "MyDomainId" # String | 

# Retrieve a Domain
try {
    $Result = Get-OktaDomain -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListDomains"></a>
# **Invoke-OktaListDomains**
> DomainListResponse Invoke-OktaListDomains<br>

List all Domains

List all verified custom Domains for the org.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all Domains
try {
    $Result = Invoke-OktaListDomains
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaDomain"></a>
# **Update-OktaDomain**
> DomainResponse Update-OktaDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateDomain] <PSCustomObject><br>

Replace a Domain's brandId

Updates a Domain by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DomainId = "MyDomainId" # String | 
$UpdateDomain = Initialize-UpdateDomain -BrandId "MyBrandId" # UpdateDomain | 

# Replace a Domain's brandId
try {
    $Result = Update-OktaDomain -DomainId $DomainId -UpdateDomain $UpdateDomain
} catch {
    Write-Host ("Exception occurred when calling Update-OktaDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Test-OktaDomain"></a>
# **Test-OktaDomain**
> DomainResponse Test-OktaDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainId] <String><br>

Verify a Domain

Verifies the Domain by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DomainId = "MyDomainId" # String | 

# Verify a Domain
try {
    $Result = Test-OktaDomain -DomainId $DomainId
} catch {
    Write-Host ("Exception occurred when calling Test-OktaDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

