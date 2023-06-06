# PSOpenAPITools.PSOpenAPITools\Api.AuthenticatorApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateAuthenticator**](AuthenticatorApi.md#Invoke-ActivateAuthenticator) | **POST** /api/v1/authenticators/{authenticatorId}/lifecycle/activate | Activate an Authenticator
[**New-Authenticator**](AuthenticatorApi.md#New-Authenticator) | **POST** /api/v1/authenticators | Create an Authenticator
[**Invoke-DeactivateAuthenticator**](AuthenticatorApi.md#Invoke-DeactivateAuthenticator) | **POST** /api/v1/authenticators/{authenticatorId}/lifecycle/deactivate | Deactivate an Authenticator
[**Get-Authenticator**](AuthenticatorApi.md#Get-Authenticator) | **GET** /api/v1/authenticators/{authenticatorId} | Retrieve an Authenticator
[**Invoke-ListAuthenticators**](AuthenticatorApi.md#Invoke-ListAuthenticators) | **GET** /api/v1/authenticators | List all Authenticators
[**Update-Authenticator**](AuthenticatorApi.md#Update-Authenticator) | **PUT** /api/v1/authenticators/{authenticatorId} | Replace an Authenticator


<a name="Invoke-ActivateAuthenticator"></a>
# **Invoke-ActivateAuthenticator**
> Authenticator Invoke-ActivateAuthenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>

Activate an Authenticator

Activates an authenticator by `authenticatorId`.

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

$AuthenticatorId = "MyAuthenticatorId" # String | 

# Activate an Authenticator
try {
    $Result = Invoke-ActivateAuthenticator -AuthenticatorId $AuthenticatorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateAuthenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthenticatorId** | **String**|  | 

### Return type

[**Authenticator**](Authenticator.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Authenticator"></a>
# **New-Authenticator**
> Authenticator New-Authenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authenticator] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>

Create an Authenticator

Creates an authenticator. You can use this operation as part of the ""Create a custom authenticator"" flow. See the [Custom authenticator integration guide](https://developer.okta.com/docs/guides/authenticators-custom-authenticator/android/main/).

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

$AuthenticatorProviderConfigurationUserNameTemplate = Initialize-AuthenticatorProviderConfigurationUserNameTemplate -Template "MyTemplate"
$AuthenticatorProviderConfiguration = Initialize-AuthenticatorProviderConfiguration -AuthPort 0 -HostName "MyHostName" -InstanceId "MyInstanceId" -SharedSecret "MySharedSecret" -UserNameTemplate $AuthenticatorProviderConfigurationUserNameTemplate

$AuthenticatorProvider = Initialize-AuthenticatorProvider -Configuration $AuthenticatorProviderConfiguration -Type "MyType"

$ChannelBinding = Initialize-ChannelBinding -Required "ALWAYS" -Style "MyStyle"
$Compliance = Initialize-Compliance -Fips "OPTIONAL"
$AuthenticatorSettings = Initialize-AuthenticatorSettings -AllowedFor "any" -AppInstanceId "MyAppInstanceId" -ChannelBinding $ChannelBinding -Compliance $Compliance -TokenLifetimeInMinutes 0 -UserVerification "PREFERRED"

$Authenticator = Initialize-Authenticator -Created (Get-Date) -Id "MyId" -Key "MyKey" -LastUpdated (Get-Date) -Name "MyName" -Provider $AuthenticatorProvider -Settings $AuthenticatorSettings -Status "ACTIVE" -Type "app" -Links @{ key_example =  } # Authenticator | 
$Activate = $true # Boolean | Whether to execute the activation lifecycle operation when Okta creates the authenticator (optional) (default to $false)

# Create an Authenticator
try {
    $Result = New-Authenticator -Authenticator $Authenticator -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling New-Authenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Authenticator** | [**Authenticator**](Authenticator.md)|  | 
 **Activate** | **Boolean**| Whether to execute the activation lifecycle operation when Okta creates the authenticator | [optional] [default to $false]

### Return type

[**Authenticator**](Authenticator.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateAuthenticator"></a>
# **Invoke-DeactivateAuthenticator**
> Authenticator Invoke-DeactivateAuthenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>

Deactivate an Authenticator

Deactivates an authenticator by `authenticatorId`.

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

$AuthenticatorId = "MyAuthenticatorId" # String | 

# Deactivate an Authenticator
try {
    $Result = Invoke-DeactivateAuthenticator -AuthenticatorId $AuthenticatorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateAuthenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthenticatorId** | **String**|  | 

### Return type

[**Authenticator**](Authenticator.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Authenticator"></a>
# **Get-Authenticator**
> Authenticator Get-Authenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>

Retrieve an Authenticator

Fetches an authenticator from your Okta organization by `authenticatorId`.

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

$AuthenticatorId = "MyAuthenticatorId" # String | 

# Retrieve an Authenticator
try {
    $Result = Get-Authenticator -AuthenticatorId $AuthenticatorId
} catch {
    Write-Host ("Exception occurred when calling Get-Authenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthenticatorId** | **String**|  | 

### Return type

[**Authenticator**](Authenticator.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAuthenticators"></a>
# **Invoke-ListAuthenticators**
> Authenticator[] Invoke-ListAuthenticators<br>

List all Authenticators

Enumerates authenticators in your organization.

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


# List all Authenticators
try {
    $Result = Invoke-ListAuthenticators
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAuthenticators: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Authenticator[]**](Authenticator.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Authenticator"></a>
# **Update-Authenticator**
> Authenticator Update-Authenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authenticator] <PSCustomObject><br>

Replace an Authenticator

Updates an authenticator

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

$AuthenticatorId = "MyAuthenticatorId" # String | 
$AuthenticatorProviderConfigurationUserNameTemplate = Initialize-AuthenticatorProviderConfigurationUserNameTemplate -Template "MyTemplate"
$AuthenticatorProviderConfiguration = Initialize-AuthenticatorProviderConfiguration -AuthPort 0 -HostName "MyHostName" -InstanceId "MyInstanceId" -SharedSecret "MySharedSecret" -UserNameTemplate $AuthenticatorProviderConfigurationUserNameTemplate

$AuthenticatorProvider = Initialize-AuthenticatorProvider -Configuration $AuthenticatorProviderConfiguration -Type "MyType"

$ChannelBinding = Initialize-ChannelBinding -Required "ALWAYS" -Style "MyStyle"
$Compliance = Initialize-Compliance -Fips "OPTIONAL"
$AuthenticatorSettings = Initialize-AuthenticatorSettings -AllowedFor "any" -AppInstanceId "MyAppInstanceId" -ChannelBinding $ChannelBinding -Compliance $Compliance -TokenLifetimeInMinutes 0 -UserVerification "PREFERRED"

$Authenticator = Initialize-Authenticator -Created (Get-Date) -Id "MyId" -Key "MyKey" -LastUpdated (Get-Date) -Name "MyName" -Provider $AuthenticatorProvider -Settings $AuthenticatorSettings -Status "ACTIVE" -Type "app" -Links @{ key_example =  } # Authenticator | 

# Replace an Authenticator
try {
    $Result = Update-Authenticator -AuthenticatorId $AuthenticatorId -Authenticator $Authenticator
} catch {
    Write-Host ("Exception occurred when calling Update-Authenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthenticatorId** | **String**|  | 
 **Authenticator** | [**Authenticator**](Authenticator.md)|  | 

### Return type

[**Authenticator**](Authenticator.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

