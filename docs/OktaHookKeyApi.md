# Okta.PowerShell.Okta.PowerShell/Api.OktaHookKeyApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-OktaHookKey**](OktaHookKeyApi.md#Add-OktaHookKey) | **POST** /api/v1/hook-keys | Create a key
[**Invoke-OktaDeleteHookKey**](OktaHookKeyApi.md#Invoke-OktaDeleteHookKey) | **DELETE** /api/v1/hook-keys/{hookKeyId} | Delete a key
[**Get-OktaHookKey**](OktaHookKeyApi.md#Get-OktaHookKey) | **GET** /api/v1/hook-keys/{hookKeyId} | Retrieve a key
[**Get-OktaPublicKey**](OktaHookKeyApi.md#Get-OktaPublicKey) | **GET** /api/v1/hook-keys/public/{keyId} | Retrieve a public key
[**Invoke-OktaListHookKeys**](OktaHookKeyApi.md#Invoke-OktaListHookKeys) | **GET** /api/v1/hook-keys | List all keys
[**Invoke-OktaReplaceHookKey**](OktaHookKeyApi.md#Invoke-OktaReplaceHookKey) | **PUT** /api/v1/hook-keys/{hookKeyId} | Replace a key


<a id="Add-OktaHookKey"></a>
# **Add-OktaHookKey**
> HookKey Add-OktaHookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyRequest] <PSCustomObject><br>

Create a key

Creates a key

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$KeyRequest = Initialize-KeyRequest -Name "MyName" # KeyRequest | 

# Create a key
try {
    $Result = Add-OktaHookKey -KeyRequest $KeyRequest
} catch {
    Write-Host ("Exception occurred when calling Add-OktaHookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KeyRequest** | [**KeyRequest**](KeyRequest.md)|  | 

### Return type

[**HookKey**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteHookKey"></a>
# **Invoke-OktaDeleteHookKey**
> void Invoke-OktaDeleteHookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HookKeyId] <String><br>

Delete a key

Deletes a key by `hookKeyId`. Once deleted, the Hook Key is unrecoverable. As a safety precaution, unused keys are eligible for deletion.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$HookKeyId = "MyHookKeyId" # String | 

# Delete a key
try {
    $Result = Invoke-OktaDeleteHookKey -HookKeyId $HookKeyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteHookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HookKeyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaHookKey"></a>
# **Get-OktaHookKey**
> HookKey Get-OktaHookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HookKeyId] <String><br>

Retrieve a key

Retrieves a key by `hookKeyId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$HookKeyId = "MyHookKeyId" # String | 

# Retrieve a key
try {
    $Result = Get-OktaHookKey -HookKeyId $HookKeyId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaHookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HookKeyId** | **String**|  | 

### Return type

[**HookKey**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaPublicKey"></a>
# **Get-OktaPublicKey**
> JsonWebKey Get-OktaPublicKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve a public key

Retrieves a public key by `keyId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$KeyId = "MyKeyId" # String | 

# Retrieve a public key
try {
    $Result = Get-OktaPublicKey -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaPublicKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KeyId** | **String**|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListHookKeys"></a>
# **Invoke-OktaListHookKeys**
> HookKey[] Invoke-OktaListHookKeys<br>

List all keys

Lists all keys

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all keys
try {
    $Result = Invoke-OktaListHookKeys
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListHookKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HookKey[]**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaReplaceHookKey"></a>
# **Invoke-OktaReplaceHookKey**
> HookKey Invoke-OktaReplaceHookKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HookKeyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyRequest] <PSCustomObject><br>

Replace a key

Replace a key by `hookKeyId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$HookKeyId = "MyHookKeyId" # String | 
$KeyRequest = Initialize-KeyRequest -Name "MyName" # KeyRequest | 

# Replace a key
try {
    $Result = Invoke-OktaReplaceHookKey -HookKeyId $HookKeyId -KeyRequest $KeyRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceHookKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **HookKeyId** | **String**|  | 
 **KeyRequest** | [**KeyRequest**](KeyRequest.md)|  | 

### Return type

[**HookKey**](HookKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

