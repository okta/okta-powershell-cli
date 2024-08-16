# Okta.PowerShell.Okta.PowerShell\Api.OktaApiTokenApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaApiToken**](OktaApiTokenApi.md#Get-OktaApiToken) | **GET** /api/v1/api-tokens/{apiTokenId} | Retrieve an API Token&#39;s Metadata
[**Invoke-OktaListApiTokens**](OktaApiTokenApi.md#Invoke-OktaListApiTokens) | **GET** /api/v1/api-tokens | List all API Token Metadata
[**Revoke-OktaApiToken**](OktaApiTokenApi.md#Revoke-OktaApiToken) | **DELETE** /api/v1/api-tokens/{apiTokenId} | Revoke an API Token
[**Revoke-OktaCurrentApiToken**](OktaApiTokenApi.md#Revoke-OktaCurrentApiToken) | **DELETE** /api/v1/api-tokens/current | Revoke the Current API Token


<a id="Get-OktaApiToken"></a>
# **Get-OktaApiToken**
> ApiToken Get-OktaApiToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApiTokenId] <String><br>

Retrieve an API Token's Metadata

Get the metadata for an active API token by id.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ApiTokenId = "00Tabcdefg1234567890" # String | id of the API Token

# Retrieve an API Token's Metadata
try {
    $Result = Get-OktaApiToken -ApiTokenId $ApiTokenId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaApiToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApiTokenId** | **String**| id of the API Token | 

### Return type

[**ApiToken**](ApiToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListApiTokens"></a>
# **Invoke-OktaListApiTokens**
> ApiToken[] Invoke-OktaListApiTokens<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>

List all API Token Metadata

Enumerates the metadata of the active API tokens in your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)
$Q = "MyQ" # String | Finds a token that matches the name or clientName. (optional)

# List all API Token Metadata
try {
    $Result = Invoke-OktaListApiTokens -After $After -Limit $Limit -Q $Q
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListApiTokens: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 
 **Limit** | **Int32**| A limit on the number of objects to return. | [optional] [default to 20]
 **Q** | **String**| Finds a token that matches the name or clientName. | [optional] 

### Return type

[**ApiToken[]**](ApiToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Revoke-OktaApiToken"></a>
# **Revoke-OktaApiToken**
> void Revoke-OktaApiToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApiTokenId] <String><br>

Revoke an API Token

Revoke an API token by id.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ApiTokenId = "00Tabcdefg1234567890" # String | id of the API Token

# Revoke an API Token
try {
    $Result = Revoke-OktaApiToken -ApiTokenId $ApiTokenId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaApiToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApiTokenId** | **String**| id of the API Token | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Revoke-OktaCurrentApiToken"></a>
# **Revoke-OktaCurrentApiToken**
> void Revoke-OktaCurrentApiToken<br>

Revoke the Current API Token

Revokes the API token provided in the Authorization header.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration


# Revoke the Current API Token
try {
    $Result = Revoke-OktaCurrentApiToken
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaCurrentApiToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

