# Okta.PowerShell.Okta.PowerShell\Api.OktaDeviceApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateDevice**](OktaDeviceApi.md#Invoke-OktaActivateDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/activate | Activate a Device
[**Invoke-OktaDeactivateDevice**](OktaDeviceApi.md#Invoke-OktaDeactivateDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/deactivate | Deactivate a Device
[**Invoke-OktaDeleteDevice**](OktaDeviceApi.md#Invoke-OktaDeleteDevice) | **DELETE** /api/v1/devices/{deviceId} | Delete a Device
[**Get-OktaDevice**](OktaDeviceApi.md#Get-OktaDevice) | **GET** /api/v1/devices/{deviceId} | Retrieve a Device
[**Invoke-OktaListDevices**](OktaDeviceApi.md#Invoke-OktaListDevices) | **GET** /api/v1/devices | List all Devices
[**Suspend-OktaDevice**](OktaDeviceApi.md#Suspend-OktaDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/suspend | Suspend a Device
[**Invoke-OktaUnsuspendDevice**](OktaDeviceApi.md#Invoke-OktaUnsuspendDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/unsuspend | Unsuspend a Device


<a id="Invoke-OktaActivateDevice"></a>
# **Invoke-OktaActivateDevice**
> void Invoke-OktaActivateDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Activate a Device

Activates a device by `deviceId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Activate a Device
try {
    $Result = Invoke-OktaActivateDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**| &#x60;id&#x60; of the device | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateDevice"></a>
# **Invoke-OktaDeactivateDevice**
> void Invoke-OktaDeactivateDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Deactivate a Device

Deactivates a device by `deviceId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Deactivate a Device
try {
    $Result = Invoke-OktaDeactivateDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**| &#x60;id&#x60; of the device | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteDevice"></a>
# **Invoke-OktaDeleteDevice**
> void Invoke-OktaDeleteDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Delete a Device

Deletes a device by `deviceId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Delete a Device
try {
    $Result = Invoke-OktaDeleteDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**| &#x60;id&#x60; of the device | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaDevice"></a>
# **Get-OktaDevice**
> Device Get-OktaDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Retrieve a Device

Retrieve a device by `deviceId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Retrieve a Device
try {
    $Result = Get-OktaDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**| &#x60;id&#x60; of the device | 

### Return type

[**Device**](Device.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListDevices"></a>
# **Invoke-OktaListDevices**
> Device[] Invoke-OktaListDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List all Devices

Lists all devices with pagination support.  A subset of Devices can be returned that match a supported search criteria using the `search` query parameter.  Searches for devices based on the properties specified in the `search` parameter conforming SCIM filter specifications (case-insensitive). This data is eventually consistent. The API returns different results depending on specified queries in the request. Empty list is returned if no objects match `search` request.  > **Note:** Listing devices with `search` should not be used as a part of any critical flows—such as authentication or updates—to prevent potential data loss. `search` results may not reflect the latest information, as this endpoint uses a search index which may not be up-to-date with recent updates to the object. <br> Don't use search results directly for record updates, as the data might be stale and therefore overwrite newer data, resulting in data loss. <br> Use an `id` lookup for records that you update to ensure your results contain the latest data.  This operation equires [URL encoding](http://en.wikipedia.org/wiki/Percent-encoding). For example, `search=profile.displayName eq ""Bob""` is encoded as `search=profile.displayName%20eq%20%22Bob%22`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)
$Search = "status eq "ACTIVE"" # String | SCIM filter expression that filters the results. Searches include all Device `profile` properties, as well as the Device `id`, `status` and `lastUpdated` properties. (optional)

# List all Devices
try {
    $Result = Invoke-OktaListDevices -After $After -Limit $Limit -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 
 **Limit** | **Int32**| A limit on the number of objects to return. | [optional] [default to 20]
 **Search** | **String**| SCIM filter expression that filters the results. Searches include all Device &#x60;profile&#x60; properties, as well as the Device &#x60;id&#x60;, &#x60;status&#x60; and &#x60;lastUpdated&#x60; properties. | [optional] 

### Return type

[**Device[]**](Device.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Suspend-OktaDevice"></a>
# **Suspend-OktaDevice**
> void Suspend-OktaDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Suspend a Device

Suspends a device by `deviceId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Suspend a Device
try {
    $Result = Suspend-OktaDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Suspend-OktaDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**| &#x60;id&#x60; of the device | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaUnsuspendDevice"></a>
# **Invoke-OktaUnsuspendDevice**
> void Invoke-OktaUnsuspendDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Unsuspend a Device

Unsuspends a device by `deviceId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Unsuspend a Device
try {
    $Result = Invoke-OktaUnsuspendDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnsuspendDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceId** | **String**| &#x60;id&#x60; of the device | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

