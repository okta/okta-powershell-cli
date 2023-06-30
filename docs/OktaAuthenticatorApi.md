# Okta.PowerShell.Okta.PowerShell\Api.OktaAuthenticatorApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateAuthenticator**](OktaAuthenticatorApi.md#Invoke-OktaActivateAuthenticator) | **POST** /api/v1/authenticators/{authenticatorId}/lifecycle/activate | Activate an Authenticator
[**New-OktaAuthenticator**](OktaAuthenticatorApi.md#New-OktaAuthenticator) | **POST** /api/v1/authenticators | Create an Authenticator
[**Invoke-OktaDeactivateAuthenticator**](OktaAuthenticatorApi.md#Invoke-OktaDeactivateAuthenticator) | **POST** /api/v1/authenticators/{authenticatorId}/lifecycle/deactivate | Deactivate an Authenticator
[**Get-OktaAuthenticator**](OktaAuthenticatorApi.md#Get-OktaAuthenticator) | **GET** /api/v1/authenticators/{authenticatorId} | Retrieve an Authenticator
[**Invoke-OktaListAuthenticators**](OktaAuthenticatorApi.md#Invoke-OktaListAuthenticators) | **GET** /api/v1/authenticators | List all Authenticators
[**Update-OktaAuthenticator**](OktaAuthenticatorApi.md#Update-OktaAuthenticator) | **PUT** /api/v1/authenticators/{authenticatorId} | Replace an Authenticator


<a id="Invoke-OktaActivateAuthenticator"></a>
# **Invoke-OktaActivateAuthenticator**
> Authenticator Invoke-OktaActivateAuthenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>

Activate an Authenticator

Activates an authenticator by `authenticatorId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthenticatorId = "MyAuthenticatorId" # String | 

# Activate an Authenticator
try {
    $Result = Invoke-OktaActivateAuthenticator -AuthenticatorId $AuthenticatorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateAuthenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaAuthenticator"></a>
# **New-OktaAuthenticator**
> Authenticator New-OktaAuthenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authenticator] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>

Create an Authenticator

Creates an authenticator. You can use this operation as part of the ""Create a custom authenticator"" flow. See the [Custom authenticator integration guide](https://developer.okta.com/docs/guides/authenticators-custom-authenticator/android/main/).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

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
    $Result = New-OktaAuthenticator -Authenticator $Authenticator -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling New-OktaAuthenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateAuthenticator"></a>
# **Invoke-OktaDeactivateAuthenticator**
> Authenticator Invoke-OktaDeactivateAuthenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>

Deactivate an Authenticator

Deactivates an authenticator by `authenticatorId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthenticatorId = "MyAuthenticatorId" # String | 

# Deactivate an Authenticator
try {
    $Result = Invoke-OktaDeactivateAuthenticator -AuthenticatorId $AuthenticatorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateAuthenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAuthenticator"></a>
# **Get-OktaAuthenticator**
> Authenticator Get-OktaAuthenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>

Retrieve an Authenticator

Fetches an authenticator from your Okta organization by `authenticatorId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthenticatorId = "MyAuthenticatorId" # String | 

# Retrieve an Authenticator
try {
    $Result = Get-OktaAuthenticator -AuthenticatorId $AuthenticatorId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAuthenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAuthenticators"></a>
# **Invoke-OktaListAuthenticators**
> Authenticator[] Invoke-OktaListAuthenticators<br>

List all Authenticators

Enumerates authenticators in your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read


# List all Authenticators
try {
    $Result = Invoke-OktaListAuthenticators
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAuthenticators: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaAuthenticator"></a>
# **Update-OktaAuthenticator**
> Authenticator Update-OktaAuthenticator<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthenticatorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authenticator] <PSCustomObject><br>

Replace an Authenticator

Updates an authenticator

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

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
    $Result = Update-OktaAuthenticator -AuthenticatorId $AuthenticatorId -Authenticator $Authenticator
} catch {
    Write-Host ("Exception occurred when calling Update-OktaAuthenticator: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

