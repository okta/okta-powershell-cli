# PSOpenAPITools.PSOpenAPITools\Api.NetworkZoneApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateNetworkZone**](NetworkZoneApi.md#Invoke-ActivateNetworkZone) | **POST** /api/v1/zones/{zoneId}/lifecycle/activate | Activate a Network Zone
[**New-NetworkZone**](NetworkZoneApi.md#New-NetworkZone) | **POST** /api/v1/zones | Create a Network Zone
[**Invoke-DeactivateNetworkZone**](NetworkZoneApi.md#Invoke-DeactivateNetworkZone) | **POST** /api/v1/zones/{zoneId}/lifecycle/deactivate | Deactivate a Network Zone
[**Invoke-DeleteNetworkZone**](NetworkZoneApi.md#Invoke-DeleteNetworkZone) | **DELETE** /api/v1/zones/{zoneId} | Delete a Network Zone
[**Get-NetworkZone**](NetworkZoneApi.md#Get-NetworkZone) | **GET** /api/v1/zones/{zoneId} | Retrieve a Network Zone
[**Invoke-ListNetworkZones**](NetworkZoneApi.md#Invoke-ListNetworkZones) | **GET** /api/v1/zones | List all Network Zones
[**Update-NetworkZone**](NetworkZoneApi.md#Update-NetworkZone) | **PUT** /api/v1/zones/{zoneId} | Replace a Network Zone


<a name="Invoke-ActivateNetworkZone"></a>
# **Invoke-ActivateNetworkZone**
> NetworkZone Invoke-ActivateNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Activate a Network Zone

Activate Network Zone

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

$ZoneId = "MyZoneId" # String | 

# Activate a Network Zone
try {
    $Result = Invoke-ActivateNetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ZoneId** | **String**|  | 

### Return type

[**NetworkZone**](NetworkZone.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-NetworkZone"></a>
# **New-NetworkZone**
> NetworkZone New-NetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Zone] <PSCustomObject><br>

Create a Network Zone

Adds a new network zone to your Okta organization.

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

$NetworkZoneAddress = Initialize-NetworkZoneAddress -Type "CIDR" -Value "MyValue"
$NetworkZoneLocation = Initialize-NetworkZoneLocation -Country "MyCountry" -Region "MyRegion"
$NetworkZone = Initialize-NetworkZone -Asns "MyAsns" -Created (Get-Date) -Gateways $NetworkZoneAddress -Id "MyId" -LastUpdated (Get-Date) -Locations $NetworkZoneLocation -Name "MyName" -Proxies $NetworkZoneAddress -ProxyType "MyProxyType" -Status "ACTIVE" -System $false -Type "DYNAMIC" -Usage "BLOCKLIST" -Links @{ key_example =  } # NetworkZone | 

# Create a Network Zone
try {
    $Result = New-NetworkZone -Zone $Zone
} catch {
    Write-Host ("Exception occurred when calling New-NetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Zone** | [**NetworkZone**](NetworkZone.md)|  | 

### Return type

[**NetworkZone**](NetworkZone.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateNetworkZone"></a>
# **Invoke-DeactivateNetworkZone**
> NetworkZone Invoke-DeactivateNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Deactivate a Network Zone

Deactivates a network zone.

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

$ZoneId = "MyZoneId" # String | 

# Deactivate a Network Zone
try {
    $Result = Invoke-DeactivateNetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ZoneId** | **String**|  | 

### Return type

[**NetworkZone**](NetworkZone.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteNetworkZone"></a>
# **Invoke-DeleteNetworkZone**
> void Invoke-DeleteNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Delete a Network Zone

Removes network zone.

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

$ZoneId = "MyZoneId" # String | 

# Delete a Network Zone
try {
    $Result = Invoke-DeleteNetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ZoneId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-NetworkZone"></a>
# **Get-NetworkZone**
> NetworkZone Get-NetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Retrieve a Network Zone

Fetches a network zone from your Okta organization by `id`.

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

$ZoneId = "MyZoneId" # String | 

# Retrieve a Network Zone
try {
    $Result = Get-NetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Get-NetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ZoneId** | **String**|  | 

### Return type

[**NetworkZone**](NetworkZone.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListNetworkZones"></a>
# **Invoke-ListNetworkZones**
> NetworkZone[] Invoke-ListNetworkZones<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

List all Network Zones

Enumerates network zones added to your organization with pagination. A subset of zones can be returned that match a supported filter expression or query.

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

$After = "MyAfter" # String | Specifies the pagination cursor for the next page of network zones (optional)
$Limit = 56 # Int32 | Specifies the number of results for a page (optional) (default to -1)
$Filter = "MyFilter" # String | Filters zones by usage or id expression (optional)

# List all Network Zones
try {
    $Result = Invoke-ListNetworkZones -After $After -Limit $Limit -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListNetworkZones: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**| Specifies the pagination cursor for the next page of network zones | [optional] 
 **Limit** | **Int32**| Specifies the number of results for a page | [optional] [default to -1]
 **Filter** | **String**| Filters zones by usage or id expression | [optional] 

### Return type

[**NetworkZone[]**](NetworkZone.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-NetworkZone"></a>
# **Update-NetworkZone**
> NetworkZone Update-NetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Zone] <PSCustomObject><br>

Replace a Network Zone

Updates a network zone in your organization.

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

$ZoneId = "MyZoneId" # String | 
$NetworkZoneAddress = Initialize-NetworkZoneAddress -Type "CIDR" -Value "MyValue"
$NetworkZoneLocation = Initialize-NetworkZoneLocation -Country "MyCountry" -Region "MyRegion"
$NetworkZone = Initialize-NetworkZone -Asns "MyAsns" -Created (Get-Date) -Gateways $NetworkZoneAddress -Id "MyId" -LastUpdated (Get-Date) -Locations $NetworkZoneLocation -Name "MyName" -Proxies $NetworkZoneAddress -ProxyType "MyProxyType" -Status "ACTIVE" -System $false -Type "DYNAMIC" -Usage "BLOCKLIST" -Links @{ key_example =  } # NetworkZone | 

# Replace a Network Zone
try {
    $Result = Update-NetworkZone -ZoneId $ZoneId -Zone $Zone
} catch {
    Write-Host ("Exception occurred when calling Update-NetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ZoneId** | **String**|  | 
 **Zone** | [**NetworkZone**](NetworkZone.md)|  | 

### Return type

[**NetworkZone**](NetworkZone.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

