# Okta.PowerShell.Okta.PowerShell\Api.OktaRiskProviderApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaRiskProvider**](OktaRiskProviderApi.md#New-OktaRiskProvider) | **POST** /api/v1/risk/providers | Create a Risk Provider
[**Invoke-OktaDeleteRiskProvider**](OktaRiskProviderApi.md#Invoke-OktaDeleteRiskProvider) | **DELETE** /api/v1/risk/providers/{riskProviderId} | Delete a Risk Provider
[**Get-OktaRiskProvider**](OktaRiskProviderApi.md#Get-OktaRiskProvider) | **GET** /api/v1/risk/providers/{riskProviderId} | Retrieve a Risk Provider
[**Invoke-OktaListRiskProviders**](OktaRiskProviderApi.md#Invoke-OktaListRiskProviders) | **GET** /api/v1/risk/providers | List all Risk Providers
[**Update-OktaRiskProvider**](OktaRiskProviderApi.md#Update-OktaRiskProvider) | **PUT** /api/v1/risk/providers/{riskProviderId} | Replace a Risk Provider


<a id="New-OktaRiskProvider"></a>
# **New-OktaRiskProvider**
> RiskProvider New-OktaRiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Risk Provider

Creates a risk provider. A maximum of 3 providers can be created. By default, one risk provider is created by Okta.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$RiskProvider = Initialize-RiskProvider -Action "enforce_and_log" -ClientId "MyClientId" -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Links $ApiTokenLink # RiskProvider | 

# Create a Risk Provider
try {
    $Result = New-OktaRiskProvider -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-OktaRiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**RiskProvider**](RiskProvider.md)|  | 

### Return type

[**RiskProvider**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteRiskProvider"></a>
# **Invoke-OktaDeleteRiskProvider**
> void Invoke-OktaDeleteRiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RiskProviderId] <String><br>

Delete a Risk Provider

Delete a CAPTCHA instance by `riskProviderId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$RiskProviderId = "00rp12r4skkjkjgsn" # String | `id` of the risk provider

# Delete a Risk Provider
try {
    $Result = Invoke-OktaDeleteRiskProvider -RiskProviderId $RiskProviderId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteRiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RiskProviderId** | **String**| &#x60;id&#x60; of the risk provider | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaRiskProvider"></a>
# **Get-OktaRiskProvider**
> RiskProvider Get-OktaRiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RiskProviderId] <String><br>

Retrieve a Risk Provider

Retrieves a risk provider by `riskProviderId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$RiskProviderId = "00rp12r4skkjkjgsn" # String | `id` of the risk provider

# Retrieve a Risk Provider
try {
    $Result = Get-OktaRiskProvider -RiskProviderId $RiskProviderId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RiskProviderId** | **String**| &#x60;id&#x60; of the risk provider | 

### Return type

[**RiskProvider**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListRiskProviders"></a>
# **Invoke-OktaListRiskProviders**
> RiskProvider[] Invoke-OktaListRiskProviders<br>

List all Risk Providers

Lists all Risk Providers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read


# List all Risk Providers
try {
    $Result = Invoke-OktaListRiskProviders
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListRiskProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RiskProvider[]**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaRiskProvider"></a>
# **Update-OktaRiskProvider**
> RiskProvider Update-OktaRiskProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RiskProviderId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a Risk Provider

Replaces a risk provider by `riskProviderId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$RiskProviderId = "00rp12r4skkjkjgsn" # String | `id` of the risk provider
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$RiskProvider = Initialize-RiskProvider -Action "enforce_and_log" -ClientId "MyClientId" -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Links $ApiTokenLink # RiskProvider | 

# Replace a Risk Provider
try {
    $Result = Update-OktaRiskProvider -RiskProviderId $RiskProviderId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Update-OktaRiskProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RiskProviderId** | **String**| &#x60;id&#x60; of the risk provider | 
 **Instance** | [**RiskProvider**](RiskProvider.md)|  | 

### Return type

[**RiskProvider**](RiskProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

