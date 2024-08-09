# Okta.PowerShell.Okta.PowerShell/Api.OktaDeviceAssuranceApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaDeviceAssurancePolicy**](OktaDeviceAssuranceApi.md#New-OktaDeviceAssurancePolicy) | **POST** /api/v1/device-assurances | Create a Device Assurance Policy
[**Invoke-OktaDeleteDeviceAssurancePolicy**](OktaDeviceAssuranceApi.md#Invoke-OktaDeleteDeviceAssurancePolicy) | **DELETE** /api/v1/device-assurances/{deviceAssuranceId} | Delete a Device Assurance Policy
[**Get-OktaDeviceAssurancePolicy**](OktaDeviceAssuranceApi.md#Get-OktaDeviceAssurancePolicy) | **GET** /api/v1/device-assurances/{deviceAssuranceId} | Retrieve a Device Assurance Policy
[**Invoke-OktaListDeviceAssurancePolicies**](OktaDeviceAssuranceApi.md#Invoke-OktaListDeviceAssurancePolicies) | **GET** /api/v1/device-assurances | List all Device Assurance Policies
[**Update-OktaDeviceAssurancePolicy**](OktaDeviceAssuranceApi.md#Update-OktaDeviceAssurancePolicy) | **PUT** /api/v1/device-assurances/{deviceAssuranceId} | Replace a Device Assurance Policy


<a id="New-OktaDeviceAssurancePolicy"></a>
# **New-OktaDeviceAssurancePolicy**
> DeviceAssurance New-OktaDeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssurance] <PSCustomObject><br>

Create a Device Assurance Policy

Adds a new Device Assurance Policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceAssuranceDiskEncryptionType = Initialize-DeviceAssuranceDiskEncryptionType -Include "ALL_INTERNAL_VOLUMES"
$VersionObject = Initialize-VersionObject -Minimum "MyMinimum"
$DeviceAssuranceScreenLockType = Initialize-DeviceAssuranceScreenLockType -Include "BIOMETRIC"

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$DeviceAssurance = Initialize-DeviceAssurance -CreatedBy "MyCreatedBy" -CreatedDate "MyCreatedDate" -DiskEncryptionType $DeviceAssuranceDiskEncryptionType -Id "MyId" -Jailbreak $false -LastUpdatedBy "MyLastUpdatedBy" -LastUpdatedDate "MyLastUpdatedDate" -Name "MyName" -OsVersion $VersionObject -Platform "ANDROID" -ScreenLockType $DeviceAssuranceScreenLockType -SecureHardwarePresent $false -Links $ApiTokenLink # DeviceAssurance | 

# Create a Device Assurance Policy
try {
    $Result = New-OktaDeviceAssurancePolicy -DeviceAssurance $DeviceAssurance
} catch {
    Write-Host ("Exception occurred when calling New-OktaDeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteDeviceAssurancePolicy"></a>
# **Invoke-OktaDeleteDeviceAssurancePolicy**
> void Invoke-OktaDeleteDeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssuranceId] <String><br>

Delete a Device Assurance Policy

Delete a Device Assurance Policy by `deviceAssuranceId`. If the Device Assurance Policy is currently being used in the org Authentication Policies, the delete will not be allowed.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceAssuranceId = "MyDeviceAssuranceId" # String | Id of the Device Assurance Policy

# Delete a Device Assurance Policy
try {
    $Result = Invoke-OktaDeleteDeviceAssurancePolicy -DeviceAssuranceId $DeviceAssuranceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteDeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaDeviceAssurancePolicy"></a>
# **Get-OktaDeviceAssurancePolicy**
> DeviceAssurance Get-OktaDeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssuranceId] <String><br>

Retrieve a Device Assurance Policy

Fetches a Device Assurance Policy by `deviceAssuranceId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$DeviceAssuranceId = "MyDeviceAssuranceId" # String | Id of the Device Assurance Policy

# Retrieve a Device Assurance Policy
try {
    $Result = Get-OktaDeviceAssurancePolicy -DeviceAssuranceId $DeviceAssuranceId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaDeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListDeviceAssurancePolicies"></a>
# **Invoke-OktaListDeviceAssurancePolicies**
> DeviceAssurance[] Invoke-OktaListDeviceAssurancePolicies<br>

List all Device Assurance Policies

Enumerates Device Assurance Policies in your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all Device Assurance Policies
try {
    $Result = Invoke-OktaListDeviceAssurancePolicies
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListDeviceAssurancePolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaDeviceAssurancePolicy"></a>
# **Update-OktaDeviceAssurancePolicy**
> DeviceAssurance Update-OktaDeviceAssurancePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssuranceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceAssurance] <PSCustomObject><br>

Replace a Device Assurance Policy

Updates a Device Assurance Policy by `deviceAssuranceId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

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
    $Result = Update-OktaDeviceAssurancePolicy -DeviceAssuranceId $DeviceAssuranceId -DeviceAssurance $DeviceAssurance
} catch {
    Write-Host ("Exception occurred when calling Update-OktaDeviceAssurancePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

