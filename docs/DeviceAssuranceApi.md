# PSOpenAPITools.PSOpenAPITools\Api.DeviceAssuranceApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-DeviceAssurancePolicy**](DeviceAssuranceApi.md#New-DeviceAssurancePolicy) | **POST** /api/v1/device-assurances | Create a Device Assurance Policy
[**Invoke-DeleteDeviceAssurancePolicy**](DeviceAssuranceApi.md#Invoke-DeleteDeviceAssurancePolicy) | **DELETE** /api/v1/device-assurances/{deviceAssuranceId} | Delete a Device Assurance Policy
[**Get-DeviceAssurancePolicy**](DeviceAssuranceApi.md#Get-DeviceAssurancePolicy) | **GET** /api/v1/device-assurances/{deviceAssuranceId} | Retrieve a Device Assurance Policy
[**Invoke-ListDeviceAssurancePolicies**](DeviceAssuranceApi.md#Invoke-ListDeviceAssurancePolicies) | **GET** /api/v1/device-assurances | List all Device Assurance Policies
[**Update-DeviceAssurancePolicy**](DeviceAssuranceApi.md#Update-DeviceAssurancePolicy) | **PUT** /api/v1/device-assurances/{deviceAssuranceId} | Replace a Device Assurance Policy


<a name="New-DeviceAssurancePolicy"></a>
# **New-DeviceAssurancePolicy**
> DeviceAssurance New-DeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssurance] <PSCustomObject><br>

Create a Device Assurance Policy

Adds a new Device Assurance Policy.

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

$DeviceAssuranceDiskEncryptionType = Initialize-DeviceAssuranceDiskEncryptionType -Include "ALL_INTERNAL_VOLUMES"
$VersionObject = Initialize-VersionObject -Minimum "MyMinimum"
$DeviceAssuranceScreenLockType = Initialize-DeviceAssuranceScreenLockType -Include "BIOMETRIC"

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$DeviceAssurance = Initialize-DeviceAssurance -CreatedBy "MyCreatedBy" -CreatedDate "MyCreatedDate" -DiskEncryptionType $DeviceAssuranceDiskEncryptionType -Id "MyId" -Jailbreak $false -LastUpdatedBy "MyLastUpdatedBy" -LastUpdatedDate "MyLastUpdatedDate" -Name "MyName" -OsVersion $VersionObject -Platform "ANDROID" -ScreenLockType $DeviceAssuranceScreenLockType -SecureHardwarePresent $false -Links $ApiTokenLink # DeviceAssurance | 

# Create a Device Assurance Policy
try {
    $Result = New-DeviceAssurancePolicy -DeviceAssurance $DeviceAssurance
} catch {
    Write-Host ("Exception occurred when calling New-DeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceAssurance** | [**DeviceAssurance**](DeviceAssurance.md)|  | 

### Return type

[**DeviceAssurance**](DeviceAssurance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteDeviceAssurancePolicy"></a>
# **Invoke-DeleteDeviceAssurancePolicy**
> void Invoke-DeleteDeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssuranceId] <String><br>

Delete a Device Assurance Policy

Delete a Device Assurance Policy by `deviceAssuranceId`. If the Device Assurance Policy is currently being used in the org Authentication Policies, the delete will not be allowed.

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

$DeviceAssuranceId = "MyDeviceAssuranceId" # String | Id of the Device Assurance Policy

# Delete a Device Assurance Policy
try {
    $Result = Invoke-DeleteDeviceAssurancePolicy -DeviceAssuranceId $DeviceAssuranceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteDeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceAssuranceId** | **String**| Id of the Device Assurance Policy | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-DeviceAssurancePolicy"></a>
# **Get-DeviceAssurancePolicy**
> DeviceAssurance Get-DeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssuranceId] <String><br>

Retrieve a Device Assurance Policy

Fetches a Device Assurance Policy by `deviceAssuranceId`.

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

$DeviceAssuranceId = "MyDeviceAssuranceId" # String | Id of the Device Assurance Policy

# Retrieve a Device Assurance Policy
try {
    $Result = Get-DeviceAssurancePolicy -DeviceAssuranceId $DeviceAssuranceId
} catch {
    Write-Host ("Exception occurred when calling Get-DeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceAssuranceId** | **String**| Id of the Device Assurance Policy | 

### Return type

[**DeviceAssurance**](DeviceAssurance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListDeviceAssurancePolicies"></a>
# **Invoke-ListDeviceAssurancePolicies**
> DeviceAssurance[] Invoke-ListDeviceAssurancePolicies<br>

List all Device Assurance Policies

Enumerates Device Assurance Policies in your organization.

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


# List all Device Assurance Policies
try {
    $Result = Invoke-ListDeviceAssurancePolicies
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListDeviceAssurancePolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeviceAssurance[]**](DeviceAssurance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-DeviceAssurancePolicy"></a>
# **Update-DeviceAssurancePolicy**
> DeviceAssurance Update-DeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssuranceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssurance] <PSCustomObject><br>

Replace a Device Assurance Policy

Updates a Device Assurance Policy by `deviceAssuranceId`.

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

$DeviceAssuranceId = "MyDeviceAssuranceId" # String | Id of the Device Assurance Policy
$DeviceAssuranceDiskEncryptionType = Initialize-DeviceAssuranceDiskEncryptionType -Include "ALL_INTERNAL_VOLUMES"
$VersionObject = Initialize-VersionObject -Minimum "MyMinimum"
$DeviceAssuranceScreenLockType = Initialize-DeviceAssuranceScreenLockType -Include "BIOMETRIC"

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$DeviceAssurance = Initialize-DeviceAssurance -CreatedBy "MyCreatedBy" -CreatedDate "MyCreatedDate" -DiskEncryptionType $DeviceAssuranceDiskEncryptionType -Id "MyId" -Jailbreak $false -LastUpdatedBy "MyLastUpdatedBy" -LastUpdatedDate "MyLastUpdatedDate" -Name "MyName" -OsVersion $VersionObject -Platform "ANDROID" -ScreenLockType $DeviceAssuranceScreenLockType -SecureHardwarePresent $false -Links $ApiTokenLink # DeviceAssurance | 

# Replace a Device Assurance Policy
try {
    $Result = Update-DeviceAssurancePolicy -DeviceAssuranceId $DeviceAssuranceId -DeviceAssurance $DeviceAssurance
} catch {
    Write-Host ("Exception occurred when calling Update-DeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeviceAssuranceId** | **String**| Id of the Device Assurance Policy | 
 **DeviceAssurance** | [**DeviceAssurance**](DeviceAssurance.md)|  | 

### Return type

[**DeviceAssurance**](DeviceAssurance.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

