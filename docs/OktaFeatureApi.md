# Okta.PowerShell.Okta.PowerShell\Api.OktaFeatureApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaFeature**](OktaFeatureApi.md#Get-OktaFeature) | **GET** /api/v1/features/{featureId} | Retrieve a Feature
[**Invoke-OktaListFeatureDependencies**](OktaFeatureApi.md#Invoke-OktaListFeatureDependencies) | **GET** /api/v1/features/{featureId}/dependencies | List all Dependencies
[**Invoke-OktaListFeatureDependents**](OktaFeatureApi.md#Invoke-OktaListFeatureDependents) | **GET** /api/v1/features/{featureId}/dependents | List all Dependents
[**Invoke-OktaListFeatures**](OktaFeatureApi.md#Invoke-OktaListFeatures) | **GET** /api/v1/features | List all Features
[**Update-OktaFeatureLifecycle**](OktaFeatureApi.md#Update-OktaFeatureLifecycle) | **POST** /api/v1/features/{featureId}/{lifecycle} | Update a Feature Lifecycle


<a id="Get-OktaFeature"></a>
# **Get-OktaFeature**
> Feature Get-OktaFeature<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>

Retrieve a Feature

Retrieve a feature

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$FeatureId = "MyFeatureId" # String | 

# Retrieve a Feature
try {
    $Result = Get-OktaFeature -FeatureId $FeatureId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaFeature: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FeatureId** | **String**|  | 

### Return type

[**Feature**](Feature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListFeatureDependencies"></a>
# **Invoke-OktaListFeatureDependencies**
> Feature[] Invoke-OktaListFeatureDependencies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>

List all Dependencies

List all dependencies

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$FeatureId = "MyFeatureId" # String | 

# List all Dependencies
try {
    $Result = Invoke-OktaListFeatureDependencies -FeatureId $FeatureId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListFeatureDependencies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FeatureId** | **String**|  | 

### Return type

[**Feature[]**](Feature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListFeatureDependents"></a>
# **Invoke-OktaListFeatureDependents**
> Feature[] Invoke-OktaListFeatureDependents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>

List all Dependents

List all dependents

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$FeatureId = "MyFeatureId" # String | 

# List all Dependents
try {
    $Result = Invoke-OktaListFeatureDependents -FeatureId $FeatureId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListFeatureDependents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FeatureId** | **String**|  | 

### Return type

[**Feature[]**](Feature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListFeatures"></a>
# **Invoke-OktaListFeatures**
> Feature[] Invoke-OktaListFeatures<br>

List all Features

List all features

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all Features
try {
    $Result = Invoke-OktaListFeatures
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListFeatures: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Feature[]**](Feature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaFeatureLifecycle"></a>
# **Update-OktaFeatureLifecycle**
> Feature Update-OktaFeatureLifecycle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lifecycle] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mode] <String><br>

Update a Feature Lifecycle

Update a feature lifecycle

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$FeatureId = "MyFeatureId" # String | 
$Lifecycle = "MyLifecycle" # String | 
$Mode = "MyMode" # String |  (optional)

# Update a Feature Lifecycle
try {
    $Result = Update-OktaFeatureLifecycle -FeatureId $FeatureId -Lifecycle $Lifecycle -Mode $Mode
} catch {
    Write-Host ("Exception occurred when calling Update-OktaFeatureLifecycle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FeatureId** | **String**|  | 
 **Lifecycle** | **String**|  | 
 **Mode** | **String**|  | [optional] 

### Return type

[**Feature**](Feature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

