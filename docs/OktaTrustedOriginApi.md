# Okta.PowerShell.Okta.PowerShell/Api.OktaTrustedOriginApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateOrigin**](OktaTrustedOriginApi.md#Invoke-OktaActivateOrigin) | **POST** /api/v1/trustedOrigins/{trustedOriginId}/lifecycle/activate | Activate a Trusted Origin
[**New-OktaOrigin**](OktaTrustedOriginApi.md#New-OktaOrigin) | **POST** /api/v1/trustedOrigins | Create a Trusted Origin
[**Invoke-OktaDeactivateOrigin**](OktaTrustedOriginApi.md#Invoke-OktaDeactivateOrigin) | **POST** /api/v1/trustedOrigins/{trustedOriginId}/lifecycle/deactivate | Deactivate a Trusted Origin
[**Invoke-OktaDeleteOrigin**](OktaTrustedOriginApi.md#Invoke-OktaDeleteOrigin) | **DELETE** /api/v1/trustedOrigins/{trustedOriginId} | Delete a Trusted Origin
[**Get-OktaOrigin**](OktaTrustedOriginApi.md#Get-OktaOrigin) | **GET** /api/v1/trustedOrigins/{trustedOriginId} | Retrieve a Trusted Origin
[**Invoke-OktaListOrigins**](OktaTrustedOriginApi.md#Invoke-OktaListOrigins) | **GET** /api/v1/trustedOrigins | List all Trusted Origins
[**Update-OktaOrigin**](OktaTrustedOriginApi.md#Update-OktaOrigin) | **PUT** /api/v1/trustedOrigins/{trustedOriginId} | Replace a Trusted Origin


<a id="Invoke-OktaActivateOrigin"></a>
# **Invoke-OktaActivateOrigin**
> TrustedOrigin Invoke-OktaActivateOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Activate a Trusted Origin

Activate a trusted origin

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Activate a Trusted Origin
try {
    $Result = Invoke-OktaActivateOrigin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaOrigin"></a>
# **New-OktaOrigin**
> TrustedOrigin New-OktaOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOrigin] <PSCustomObject><br>

Create a Trusted Origin

Create a trusted origin

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TrustedOriginScope = Initialize-TrustedOriginScope -AllowedOktaApps "OKTA_ENDUSER" -Type "CORS"
$TrustedOrigin = Initialize-TrustedOrigin -Created (Get-Date) -CreatedBy "MyCreatedBy" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Origin "MyOrigin" -Scopes $TrustedOriginScope -Status "MyStatus" -Links @{ key_example =  } # TrustedOrigin | 

# Create a Trusted Origin
try {
    $Result = New-OktaOrigin -TrustedOrigin $TrustedOrigin
} catch {
    Write-Host ("Exception occurred when calling New-OktaOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOrigin** | [**TrustedOrigin**](TrustedOrigin.md)|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateOrigin"></a>
# **Invoke-OktaDeactivateOrigin**
> TrustedOrigin Invoke-OktaDeactivateOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Deactivate a Trusted Origin

Deactivate a trusted origin

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Deactivate a Trusted Origin
try {
    $Result = Invoke-OktaDeactivateOrigin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteOrigin"></a>
# **Invoke-OktaDeleteOrigin**
> void Invoke-OktaDeleteOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Delete a Trusted Origin

Delete a trusted origin

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Delete a Trusted Origin
try {
    $Result = Invoke-OktaDeleteOrigin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOrigin"></a>
# **Get-OktaOrigin**
> TrustedOrigin Get-OktaOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>

Retrieve a Trusted Origin

Retrieve a trusted origin

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TrustedOriginId = "MyTrustedOriginId" # String | 

# Retrieve a Trusted Origin
try {
    $Result = Get-OktaOrigin -TrustedOriginId $TrustedOriginId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListOrigins"></a>
# **Invoke-OktaListOrigins**
> TrustedOrigin[] Invoke-OktaListOrigins<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Trusted Origins

List all trusted origins

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Q = "MyQ" # String |  (optional)
$Filter = "MyFilter" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Trusted Origins
try {
    $Result = Invoke-OktaListOrigins -Q $Q -Filter $Filter -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListOrigins: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**|  | [optional] 
 **Filter** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to -1]

### Return type

[**TrustedOrigin[]**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaOrigin"></a>
# **Update-OktaOrigin**
> TrustedOrigin Update-OktaOrigin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOriginId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TrustedOrigin] <PSCustomObject><br>

Replace a Trusted Origin

Replace a trusted origin

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TrustedOriginId = "MyTrustedOriginId" # String | 
$TrustedOriginScope = Initialize-TrustedOriginScope -AllowedOktaApps "OKTA_ENDUSER" -Type "CORS"
$TrustedOrigin = Initialize-TrustedOrigin -Created (Get-Date) -CreatedBy "MyCreatedBy" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Origin "MyOrigin" -Scopes $TrustedOriginScope -Status "MyStatus" -Links @{ key_example =  } # TrustedOrigin | 

# Replace a Trusted Origin
try {
    $Result = Update-OktaOrigin -TrustedOriginId $TrustedOriginId -TrustedOrigin $TrustedOrigin
} catch {
    Write-Host ("Exception occurred when calling Update-OktaOrigin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TrustedOriginId** | **String**|  | 
 **TrustedOrigin** | [**TrustedOrigin**](TrustedOrigin.md)|  | 

### Return type

[**TrustedOrigin**](TrustedOrigin.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

