# PSOpenAPITools.PSOpenAPITools\Api.FeatureApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Feature**](FeatureApi.md#Get-Feature) | **GET** /api/v1/features/{featureId} | Retrieve a Feature
[**Invoke-ListFeatureDependencies**](FeatureApi.md#Invoke-ListFeatureDependencies) | **GET** /api/v1/features/{featureId}/dependencies | List all Dependencies
[**Invoke-ListFeatureDependents**](FeatureApi.md#Invoke-ListFeatureDependents) | **GET** /api/v1/features/{featureId}/dependents | List all Dependents
[**Invoke-ListFeatures**](FeatureApi.md#Invoke-ListFeatures) | **GET** /api/v1/features | List all Features
[**Update-FeatureLifecycle**](FeatureApi.md#Update-FeatureLifecycle) | **POST** /api/v1/features/{featureId}/{lifecycle} | Update a Feature Lifecycle


<a name="Get-Feature"></a>
# **Get-Feature**
> Feature Get-Feature<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>

Retrieve a Feature

Retrieve a feature

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

$FeatureId = "MyFeatureId" # String | 

# Retrieve a Feature
try {
    $Result = Get-Feature -FeatureId $FeatureId
} catch {
    Write-Host ("Exception occurred when calling Get-Feature: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListFeatureDependencies"></a>
# **Invoke-ListFeatureDependencies**
> Feature[] Invoke-ListFeatureDependencies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>

List all Dependencies

List all dependencies

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

$FeatureId = "MyFeatureId" # String | 

# List all Dependencies
try {
    $Result = Invoke-ListFeatureDependencies -FeatureId $FeatureId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFeatureDependencies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListFeatureDependents"></a>
# **Invoke-ListFeatureDependents**
> Feature[] Invoke-ListFeatureDependents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>

List all Dependents

List all dependents

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

$FeatureId = "MyFeatureId" # String | 

# List all Dependents
try {
    $Result = Invoke-ListFeatureDependents -FeatureId $FeatureId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFeatureDependents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListFeatures"></a>
# **Invoke-ListFeatures**
> Feature[] Invoke-ListFeatures<br>

List all Features

List all features

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


# List all Features
try {
    $Result = Invoke-ListFeatures
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFeatures: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-FeatureLifecycle"></a>
# **Update-FeatureLifecycle**
> Feature Update-FeatureLifecycle<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FeatureId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lifecycle] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mode] <String><br>

Update a Feature Lifecycle

Update a feature lifecycle

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

$FeatureId = "MyFeatureId" # String | 
$Lifecycle = "MyLifecycle" # String | 
$Mode = "MyMode" # String |  (optional)

# Update a Feature Lifecycle
try {
    $Result = Update-FeatureLifecycle -FeatureId $FeatureId -Lifecycle $Lifecycle -Mode $Mode
} catch {
    Write-Host ("Exception occurred when calling Update-FeatureLifecycle: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

