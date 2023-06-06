# PSOpenAPITools.PSOpenAPITools\Api.DeviceApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateDevice**](DeviceApi.md#Invoke-ActivateDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/activate | Activate a Device
[**Invoke-DeactivateDevice**](DeviceApi.md#Invoke-DeactivateDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/deactivate | Deactivate a Device
[**Invoke-DeleteDevice**](DeviceApi.md#Invoke-DeleteDevice) | **DELETE** /api/v1/devices/{deviceId} | Delete a Device
[**Get-Device**](DeviceApi.md#Get-Device) | **GET** /api/v1/devices/{deviceId} | Retrieve a Device
[**Invoke-ListDevices**](DeviceApi.md#Invoke-ListDevices) | **GET** /api/v1/devices | List all Devices
[**Suspend-Device**](DeviceApi.md#Suspend-Device) | **POST** /api/v1/devices/{deviceId}/lifecycle/suspend | Suspend a Device
[**Invoke-UnsuspendDevice**](DeviceApi.md#Invoke-UnsuspendDevice) | **POST** /api/v1/devices/{deviceId}/lifecycle/unsuspend | Unsuspend a Device


<a name="Invoke-ActivateDevice"></a>
# **Invoke-ActivateDevice**
> void Invoke-ActivateDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Activate a Device

Activates a device by `deviceId`

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

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Activate a Device
try {
    $Result = Invoke-ActivateDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeactivateDevice"></a>
# **Invoke-DeactivateDevice**
> void Invoke-DeactivateDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Deactivate a Device

Deactivates a device by `deviceId`

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

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Deactivate a Device
try {
    $Result = Invoke-DeactivateDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteDevice"></a>
# **Invoke-DeleteDevice**
> void Invoke-DeleteDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Delete a Device

Deletes a device by `deviceId`

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

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Delete a Device
try {
    $Result = Invoke-DeleteDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-Device"></a>
# **Get-Device**
> Device Get-Device<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Retrieve a Device

Retrieve a device by `deviceId`

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

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Retrieve a Device
try {
    $Result = Get-Device -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Get-Device: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListDevices"></a>
# **Invoke-ListDevices**
> Device[] Invoke-ListDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List all Devices

Lists all devices with pagination support.  A subset of Devices can be returned that match a supported search criteria using the `search` query parameter.  Searches for devices based on the properties specified in the `search` parameter conforming SCIM filter specifications (case-insensitive). This data is eventually consistent. The API returns different results depending on specified queries in the request. Empty list is returned if no objects match `search` request.  > **Note:** Listing devices with `search` should not be used as a part of any critical flows—such as authentication or updates—to prevent potential data loss. `search` results may not reflect the latest information, as this endpoint uses a search index which may not be up-to-date with recent updates to the object. <br> Don't use search results directly for record updates, as the data might be stale and therefore overwrite newer data, resulting in data loss. <br> Use an `id` lookup for records that you update to ensure your results contain the latest data.  This operation equires [URL encoding](http://en.wikipedia.org/wiki/Percent-encoding). For example, `search=profile.displayName eq ""Bob""` is encoded as `search=profile.displayName%20eq%20%22Bob%22`.

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

$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)
$Search = "status eq "ACTIVE"" # String | SCIM filter expression that filters the results. Searches include all Device `profile` properties, as well as the Device `id`, `status` and `lastUpdated` properties. (optional)

# List all Devices
try {
    $Result = Invoke-ListDevices -After $After -Limit $Limit -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Suspend-Device"></a>
# **Suspend-Device**
> void Suspend-Device<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Suspend a Device

Suspends a device by `deviceId`

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

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Suspend a Device
try {
    $Result = Suspend-Device -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Suspend-Device: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-UnsuspendDevice"></a>
# **Invoke-UnsuspendDevice**
> void Invoke-UnsuspendDevice<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceId] <String><br>

Unsuspend a Device

Unsuspends a device by `deviceId`

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

$DeviceId = "guo4a5u7JHHhjXrMK0g4" # String | `id` of the device

# Unsuspend a Device
try {
    $Result = Invoke-UnsuspendDevice -DeviceId $DeviceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnsuspendDevice: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

