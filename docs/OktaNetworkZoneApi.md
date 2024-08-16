# Okta.PowerShell.Okta.PowerShell\Api.OktaNetworkZoneApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateNetworkZone**](OktaNetworkZoneApi.md#Invoke-OktaActivateNetworkZone) | **POST** /api/v1/zones/{zoneId}/lifecycle/activate | Activate a Network Zone
[**New-OktaNetworkZone**](OktaNetworkZoneApi.md#New-OktaNetworkZone) | **POST** /api/v1/zones | Create a Network Zone
[**Invoke-OktaDeactivateNetworkZone**](OktaNetworkZoneApi.md#Invoke-OktaDeactivateNetworkZone) | **POST** /api/v1/zones/{zoneId}/lifecycle/deactivate | Deactivate a Network Zone
[**Invoke-OktaDeleteNetworkZone**](OktaNetworkZoneApi.md#Invoke-OktaDeleteNetworkZone) | **DELETE** /api/v1/zones/{zoneId} | Delete a Network Zone
[**Get-OktaNetworkZone**](OktaNetworkZoneApi.md#Get-OktaNetworkZone) | **GET** /api/v1/zones/{zoneId} | Retrieve a Network Zone
[**Invoke-OktaListNetworkZones**](OktaNetworkZoneApi.md#Invoke-OktaListNetworkZones) | **GET** /api/v1/zones | List all Network Zones
[**Update-OktaNetworkZone**](OktaNetworkZoneApi.md#Update-OktaNetworkZone) | **PUT** /api/v1/zones/{zoneId} | Replace a Network Zone


<a id="Invoke-OktaActivateNetworkZone"></a>
# **Invoke-OktaActivateNetworkZone**
> NetworkZone Invoke-OktaActivateNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Activate a Network Zone

Activate Network Zone

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ZoneId = "MyZoneId" # String | 

# Activate a Network Zone
try {
    $Result = Invoke-OktaActivateNetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaNetworkZone"></a>
# **New-OktaNetworkZone**
> NetworkZone New-OktaNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Zone] <PSCustomObject><br>

Create a Network Zone

Adds a new network zone to your Okta organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$NetworkZoneAddress = Initialize-NetworkZoneAddress -Type "CIDR" -Value "MyValue"
$NetworkZoneLocation = Initialize-NetworkZoneLocation -Country "MyCountry" -Region "MyRegion"
$NetworkZone = Initialize-NetworkZone -Asns "MyAsns" -Created (Get-Date) -Gateways $NetworkZoneAddress -Id "MyId" -LastUpdated (Get-Date) -Locations $NetworkZoneLocation -Name "MyName" -Proxies $NetworkZoneAddress -ProxyType "MyProxyType" -Status "ACTIVE" -System $false -Type "DYNAMIC" -Usage "BLOCKLIST" -Links @{ key_example =  } # NetworkZone | 

# Create a Network Zone
try {
    $Result = New-OktaNetworkZone -Zone $Zone
} catch {
    Write-Host ("Exception occurred when calling New-OktaNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateNetworkZone"></a>
# **Invoke-OktaDeactivateNetworkZone**
> NetworkZone Invoke-OktaDeactivateNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Deactivate a Network Zone

Deactivates a network zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ZoneId = "MyZoneId" # String | 

# Deactivate a Network Zone
try {
    $Result = Invoke-OktaDeactivateNetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteNetworkZone"></a>
# **Invoke-OktaDeleteNetworkZone**
> void Invoke-OktaDeleteNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Delete a Network Zone

Removes network zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ZoneId = "MyZoneId" # String | 

# Delete a Network Zone
try {
    $Result = Invoke-OktaDeleteNetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaNetworkZone"></a>
# **Get-OktaNetworkZone**
> NetworkZone Get-OktaNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>

Retrieve a Network Zone

Fetches a network zone from your Okta organization by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ZoneId = "MyZoneId" # String | 

# Retrieve a Network Zone
try {
    $Result = Get-OktaNetworkZone -ZoneId $ZoneId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListNetworkZones"></a>
# **Invoke-OktaListNetworkZones**
> NetworkZone[] Invoke-OktaListNetworkZones<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

List all Network Zones

Enumerates network zones added to your organization with pagination. A subset of zones can be returned that match a supported filter expression or query.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String | Specifies the pagination cursor for the next page of network zones (optional)
$Limit = 56 # Int32 | Specifies the number of results for a page (optional) (default to -1)
$Filter = "MyFilter" # String | Filters zones by usage or id expression (optional)

# List all Network Zones
try {
    $Result = Invoke-OktaListNetworkZones -After $After -Limit $Limit -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListNetworkZones: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaNetworkZone"></a>
# **Update-OktaNetworkZone**
> NetworkZone Update-OktaNetworkZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ZoneId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Zone] <PSCustomObject><br>

Replace a Network Zone

Updates a network zone in your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ZoneId = "MyZoneId" # String | 
$NetworkZoneAddress = Initialize-NetworkZoneAddress -Type "CIDR" -Value "MyValue"
$NetworkZoneLocation = Initialize-NetworkZoneLocation -Country "MyCountry" -Region "MyRegion"
$NetworkZone = Initialize-NetworkZone -Asns "MyAsns" -Created (Get-Date) -Gateways $NetworkZoneAddress -Id "MyId" -LastUpdated (Get-Date) -Locations $NetworkZoneLocation -Name "MyName" -Proxies $NetworkZoneAddress -ProxyType "MyProxyType" -Status "ACTIVE" -System $false -Type "DYNAMIC" -Usage "BLOCKLIST" -Links @{ key_example =  } # NetworkZone | 

# Replace a Network Zone
try {
    $Result = Update-OktaNetworkZone -ZoneId $ZoneId -Zone $Zone
} catch {
    Write-Host ("Exception occurred when calling Update-OktaNetworkZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

