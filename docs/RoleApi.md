# PSOpenAPITools.PSOpenAPITools\Api.RoleApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-RolePermission**](RoleApi.md#Add-RolePermission) | **POST** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Create a Permission
[**New-Role**](RoleApi.md#New-Role) | **POST** /api/v1/iam/roles | Create a Role
[**Invoke-DeleteRole**](RoleApi.md#Invoke-DeleteRole) | **DELETE** /api/v1/iam/roles/{roleIdOrLabel} | Delete a Role
[**Invoke-DeleteRolePermission**](RoleApi.md#Invoke-DeleteRolePermission) | **DELETE** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Delete a Permission
[**Get-Role**](RoleApi.md#Get-Role) | **GET** /api/v1/iam/roles/{roleIdOrLabel} | Retrieve a Role
[**Get-RolePermission**](RoleApi.md#Get-RolePermission) | **GET** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Retrieve a Permission
[**Invoke-ListRolePermissions**](RoleApi.md#Invoke-ListRolePermissions) | **GET** /api/v1/iam/roles/{roleIdOrLabel}/permissions | List all Permissions
[**Invoke-ListRoles**](RoleApi.md#Invoke-ListRoles) | **GET** /api/v1/iam/roles | List all Roles
[**Invoke-ReplaceRole**](RoleApi.md#Invoke-ReplaceRole) | **PUT** /api/v1/iam/roles/{roleIdOrLabel} | Replace a Role


<a name="Add-RolePermission"></a>
# **Add-RolePermission**
> void Add-RolePermission<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PermissionType] <String><br>

Create a Permission

Adds a permission specified by `permissionType` to the role

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

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$PermissionType = "okta.users.manage" # String | An okta permission type

# Create a Permission
try {
    $Result = Add-RolePermission -RoleIdOrLabel $RoleIdOrLabel -PermissionType $PermissionType
} catch {
    Write-Host ("Exception occurred when calling Add-RolePermission: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **PermissionType** | **String**| An okta permission type | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Role"></a>
# **New-Role**
> IamRole New-Role<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Role

Creates a new role

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

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$IamRoleLinks = Initialize-IamRoleLinks -Self $HrefObject -Permissions $HrefObject

$IamRole = Initialize-IamRole -Created (Get-Date) -Description "MyDescription" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Permissions "okta.apps.assignment.manage" -Links $IamRoleLinks # IamRole | 

# Create a Role
try {
    $Result = New-Role -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-Role: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**IamRole**](IamRole.md)|  | 

### Return type

[**IamRole**](IamRole.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteRole"></a>
# **Invoke-DeleteRole**
> void Invoke-DeleteRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Delete a Role

Deletes a role by `roleIdOrLabel`

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

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Delete a Role
try {
    $Result = Invoke-DeleteRole -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteRolePermission"></a>
# **Invoke-DeleteRolePermission**
> void Invoke-DeleteRolePermission<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PermissionType] <String><br>

Delete a Permission

Deletes a permission from a role by `permissionType`

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

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$PermissionType = "okta.users.manage" # String | An okta permission type

# Delete a Permission
try {
    $Result = Invoke-DeleteRolePermission -RoleIdOrLabel $RoleIdOrLabel -PermissionType $PermissionType
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteRolePermission: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **PermissionType** | **String**| An okta permission type | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Role"></a>
# **Get-Role**
> IamRole Get-Role<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Retrieve a Role

Retrieve a role by `roleIdOrLabel`

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

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Retrieve a Role
try {
    $Result = Get-Role -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Get-Role: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 

### Return type

[**IamRole**](IamRole.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-RolePermission"></a>
# **Get-RolePermission**
> Permission Get-RolePermission<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PermissionType] <String><br>

Retrieve a Permission

Retrieves a permission by `permissionType`

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

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$PermissionType = "okta.users.manage" # String | An okta permission type

# Retrieve a Permission
try {
    $Result = Get-RolePermission -RoleIdOrLabel $RoleIdOrLabel -PermissionType $PermissionType
} catch {
    Write-Host ("Exception occurred when calling Get-RolePermission: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **PermissionType** | **String**| An okta permission type | 

### Return type

[**Permission**](Permission.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListRolePermissions"></a>
# **Invoke-ListRolePermissions**
> Permissions Invoke-ListRolePermissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

List all Permissions

Lists all permissions of the role by `roleIdOrLabel`

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

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# List all Permissions
try {
    $Result = Invoke-ListRolePermissions -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListRolePermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 

### Return type

[**Permissions**](Permissions.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListRoles"></a>
# **Invoke-ListRoles**
> IamRoles Invoke-ListRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Roles

Lists all roles with pagination support

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

# List all Roles
try {
    $Result = Invoke-ListRoles -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 

### Return type

[**IamRoles**](IamRoles.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceRole"></a>
# **Invoke-ReplaceRole**
> IamRole Invoke-ReplaceRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a Role

Replaces a role by `roleIdOrLabel`

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

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$IamRoleLinks = Initialize-IamRoleLinks -Self $HrefObject -Permissions $HrefObject

$IamRole = Initialize-IamRole -Created (Get-Date) -Description "MyDescription" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Permissions "okta.apps.assignment.manage" -Links $IamRoleLinks # IamRole | 

# Replace a Role
try {
    $Result = Invoke-ReplaceRole -RoleIdOrLabel $RoleIdOrLabel -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **Instance** | [**IamRole**](IamRole.md)|  | 

### Return type

[**IamRole**](IamRole.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

