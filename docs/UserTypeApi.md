# PSOpenAPITools.PSOpenAPITools\Api.UserTypeApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-UserType**](UserTypeApi.md#New-UserType) | **POST** /api/v1/meta/types/user | Create a User Type
[**Invoke-DeleteUserType**](UserTypeApi.md#Invoke-DeleteUserType) | **DELETE** /api/v1/meta/types/user/{typeId} | Delete a User Type
[**Get-UserType**](UserTypeApi.md#Get-UserType) | **GET** /api/v1/meta/types/user/{typeId} | Retrieve a User Type
[**Invoke-ListUserTypes**](UserTypeApi.md#Invoke-ListUserTypes) | **GET** /api/v1/meta/types/user | List all User Types
[**Invoke-ReplaceUserType**](UserTypeApi.md#Invoke-ReplaceUserType) | **PUT** /api/v1/meta/types/user/{typeId} | Replace a User Type
[**Update-UserType**](UserTypeApi.md#Update-UserType) | **POST** /api/v1/meta/types/user/{typeId} | Update a User Type


<a name="New-UserType"></a>
# **New-UserType**
> UserType New-UserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserType] <PSCustomObject><br>

Create a User Type

Creates a new User Type. A default User Type is automatically created along with your org, and you may add another 9 User Types for a maximum of 10.

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

$UserType = Initialize-UserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  } # UserType | 

# Create a User Type
try {
    $Result = New-UserType -UserType $UserType
} catch {
    Write-Host ("Exception occurred when calling New-UserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserType** | [**UserType**](UserType.md)|  | 

### Return type

[**UserType**](UserType.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteUserType"></a>
# **Invoke-DeleteUserType**
> void Invoke-DeleteUserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>

Delete a User Type

Deletes a User Type permanently. This operation is not permitted for the default type, nor for any User Type that has existing users

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

$TypeId = "MyTypeId" # String | 

# Delete a User Type
try {
    $Result = Invoke-DeleteUserType -TypeId $TypeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteUserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TypeId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserType"></a>
# **Get-UserType**
> UserType Get-UserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>

Retrieve a User Type

Fetches a User Type by ID. The special identifier `default` may be used to fetch the default User Type.

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

$TypeId = "MyTypeId" # String | 

# Retrieve a User Type
try {
    $Result = Get-UserType -TypeId $TypeId
} catch {
    Write-Host ("Exception occurred when calling Get-UserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TypeId** | **String**|  | 

### Return type

[**UserType**](UserType.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListUserTypes"></a>
# **Invoke-ListUserTypes**
> UserType[] Invoke-ListUserTypes<br>

List all User Types

Fetches all User Types in your org

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


# List all User Types
try {
    $Result = Invoke-ListUserTypes
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUserTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserType[]**](UserType.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceUserType"></a>
# **Invoke-ReplaceUserType**
> UserType Invoke-ReplaceUserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserType] <PSCustomObject><br>

Replace a User Type

Replace an existing User Type

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

$TypeId = "MyTypeId" # String | 
$UserType = Initialize-UserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  } # UserType | 

# Replace a User Type
try {
    $Result = Invoke-ReplaceUserType -TypeId $TypeId -UserType $UserType
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceUserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TypeId** | **String**|  | 
 **UserType** | [**UserType**](UserType.md)|  | 

### Return type

[**UserType**](UserType.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-UserType"></a>
# **Update-UserType**
> UserType Update-UserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserType] <PSCustomObject><br>

Update a User Type

Updates an existing User Type

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

$TypeId = "MyTypeId" # String | 
$UserType = Initialize-UserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  } # UserType | 

# Update a User Type
try {
    $Result = Update-UserType -TypeId $TypeId -UserType $UserType
} catch {
    Write-Host ("Exception occurred when calling Update-UserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TypeId** | **String**|  | 
 **UserType** | [**UserType**](UserType.md)|  | 

### Return type

[**UserType**](UserType.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

