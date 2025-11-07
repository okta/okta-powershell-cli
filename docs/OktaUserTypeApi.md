# Okta.PowerShell.Okta.PowerShell\Api.OktaUserTypeApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaUserType**](OktaUserTypeApi.md#New-OktaUserType) | **POST** /api/v1/meta/types/user | Create a User Type
[**Invoke-OktaDeleteUserType**](OktaUserTypeApi.md#Invoke-OktaDeleteUserType) | **DELETE** /api/v1/meta/types/user/{typeId} | Delete a User Type
[**Get-OktaUserType**](OktaUserTypeApi.md#Get-OktaUserType) | **GET** /api/v1/meta/types/user/{typeId} | Retrieve a User Type
[**Invoke-OktaListUserTypes**](OktaUserTypeApi.md#Invoke-OktaListUserTypes) | **GET** /api/v1/meta/types/user | List all User Types
[**Invoke-OktaReplaceUserType**](OktaUserTypeApi.md#Invoke-OktaReplaceUserType) | **PUT** /api/v1/meta/types/user/{typeId} | Replace a User Type
[**Update-OktaUserType**](OktaUserTypeApi.md#Update-OktaUserType) | **POST** /api/v1/meta/types/user/{typeId} | Update a User Type


<a id="New-OktaUserType"></a>
# **New-OktaUserType**
> UserType New-OktaUserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserType] <PSCustomObject><br>

Create a User Type

Creates a new User Type. A default User Type is automatically created along with your org, and you may add another 9 User Types for a maximum of 10.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserType = Initialize-OktaUserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  } # UserType | 

# Create a User Type
try {
    $Result = New-OktaUserType -UserType $UserType
} catch {
    Write-Host ("Exception occurred when calling New-OktaUserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteUserType"></a>
# **Invoke-OktaDeleteUserType**
> void Invoke-OktaDeleteUserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>

Delete a User Type

Deletes a User Type permanently. This operation is not permitted for the default type, nor for any User Type that has existing users

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TypeId = "MyTypeId" # String | 

# Delete a User Type
try {
    $Result = Invoke-OktaDeleteUserType -TypeId $TypeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteUserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaUserType"></a>
# **Get-OktaUserType**
> UserType Get-OktaUserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>

Retrieve a User Type

Fetches a User Type by ID. The special identifier `default` may be used to fetch the default User Type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TypeId = "MyTypeId" # String | 

# Retrieve a User Type
try {
    $Result = Get-OktaUserType -TypeId $TypeId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaUserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListUserTypes"></a>
# **Invoke-OktaListUserTypes**
> UserType[] Invoke-OktaListUserTypes<br>

List all User Types

Fetches all User Types in your org

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all User Types
try {
    $Result = Invoke-OktaListUserTypes
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListUserTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceUserType"></a>
# **Invoke-OktaReplaceUserType**
> UserType Invoke-OktaReplaceUserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserType] <PSCustomObject><br>

Replace a User Type

Replace an existing User Type

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TypeId = "MyTypeId" # String | 
$UserType = Initialize-OktaUserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  } # UserType | 

# Replace a User Type
try {
    $Result = Invoke-OktaReplaceUserType -TypeId $TypeId -UserType $UserType
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceUserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaUserType"></a>
# **Update-OktaUserType**
> UserType Update-OktaUserType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserType] <PSCustomObject><br>

Update a User Type

Updates an existing User Type

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$TypeId = "MyTypeId" # String | 
$UserType = Initialize-OktaUserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  } # UserType | 

# Update a User Type
try {
    $Result = Update-OktaUserType -TypeId $TypeId -UserType $UserType
} catch {
    Write-Host ("Exception occurred when calling Update-OktaUserType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

