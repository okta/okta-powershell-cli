# Okta.PowerShell.Okta.PowerShell\Api.OktaRoleApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-OktaRolePermission**](OktaRoleApi.md#Add-OktaRolePermission) | **POST** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Create a Permission
[**New-OktaRole**](OktaRoleApi.md#New-OktaRole) | **POST** /api/v1/iam/roles | Create a Role
[**Invoke-OktaDeleteRole**](OktaRoleApi.md#Invoke-OktaDeleteRole) | **DELETE** /api/v1/iam/roles/{roleIdOrLabel} | Delete a Role
[**Invoke-OktaDeleteRolePermission**](OktaRoleApi.md#Invoke-OktaDeleteRolePermission) | **DELETE** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Delete a Permission
[**Get-OktaRole**](OktaRoleApi.md#Get-OktaRole) | **GET** /api/v1/iam/roles/{roleIdOrLabel} | Retrieve a Role
[**Get-OktaRolePermission**](OktaRoleApi.md#Get-OktaRolePermission) | **GET** /api/v1/iam/roles/{roleIdOrLabel}/permissions/{permissionType} | Retrieve a Permission
[**Invoke-OktaListRolePermissions**](OktaRoleApi.md#Invoke-OktaListRolePermissions) | **GET** /api/v1/iam/roles/{roleIdOrLabel}/permissions | List all Permissions
[**Invoke-OktaListRoles**](OktaRoleApi.md#Invoke-OktaListRoles) | **GET** /api/v1/iam/roles | List all Roles
[**Invoke-OktaReplaceRole**](OktaRoleApi.md#Invoke-OktaReplaceRole) | **PUT** /api/v1/iam/roles/{roleIdOrLabel} | Replace a Role


<a id="Add-OktaRolePermission"></a>
# **Add-OktaRolePermission**
> void Add-OktaRolePermission<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PermissionType] <String><br>

Create a Permission

Adds a permission specified by `permissionType` to the role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$PermissionType = "okta.users.manage" # String | An okta permission type

# Create a Permission
try {
    $Result = Add-OktaRolePermission -RoleIdOrLabel $RoleIdOrLabel -PermissionType $PermissionType
} catch {
    Write-Host ("Exception occurred when calling Add-OktaRolePermission: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaRole"></a>
# **New-OktaRole**
> IamRole New-OktaRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Role

Creates a new role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$CreateIamRoleRequest = Initialize-CreateIamRoleRequest -Description "MyDescription" -Label "MyLabel" -Permissions "okta.apps.assignment.manage" # CreateIamRoleRequest | 

# Create a Role
try {
    $Result = New-OktaRole -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-OktaRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**CreateIamRoleRequest**](CreateIamRoleRequest.md)|  | 

### Return type

[**IamRole**](IamRole.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteRole"></a>
# **Invoke-OktaDeleteRole**
> void Invoke-OktaDeleteRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Delete a Role

Deletes a role by `roleIdOrLabel`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Delete a Role
try {
    $Result = Invoke-OktaDeleteRole -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteRolePermission"></a>
# **Invoke-OktaDeleteRolePermission**
> void Invoke-OktaDeleteRolePermission<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PermissionType] <String><br>

Delete a Permission

Deletes a permission from a role by `permissionType`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$PermissionType = "okta.users.manage" # String | An okta permission type

# Delete a Permission
try {
    $Result = Invoke-OktaDeleteRolePermission -RoleIdOrLabel $RoleIdOrLabel -PermissionType $PermissionType
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteRolePermission: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaRole"></a>
# **Get-OktaRole**
> IamRole Get-OktaRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Retrieve a Role

Retrieve a role by `roleIdOrLabel`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Retrieve a Role
try {
    $Result = Get-OktaRole -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaRolePermission"></a>
# **Get-OktaRolePermission**
> Permission Get-OktaRolePermission<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PermissionType] <String><br>

Retrieve a Permission

Retrieves a permission by `permissionType`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$PermissionType = "okta.users.manage" # String | An okta permission type

# Retrieve a Permission
try {
    $Result = Get-OktaRolePermission -RoleIdOrLabel $RoleIdOrLabel -PermissionType $PermissionType
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRolePermission: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListRolePermissions"></a>
# **Invoke-OktaListRolePermissions**
> Permissions Invoke-OktaListRolePermissions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

List all Permissions

Lists all permissions of the role by `roleIdOrLabel`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# List all Permissions
try {
    $Result = Invoke-OktaListRolePermissions -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListRolePermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListRoles"></a>
# **Invoke-OktaListRoles**
> IamRoles Invoke-OktaListRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Roles

Lists all roles with pagination support

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Roles
try {
    $Result = Invoke-OktaListRoles -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceRole"></a>
# **Invoke-OktaReplaceRole**
> IamRole Invoke-OktaReplaceRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a Role

Replaces a role by `roleIdOrLabel`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$UpdateIamRoleRequest = Initialize-UpdateIamRoleRequest -Description "MyDescription" -Label "MyLabel" # UpdateIamRoleRequest | 

# Replace a Role
try {
    $Result = Invoke-OktaReplaceRole -RoleIdOrLabel $RoleIdOrLabel -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **Instance** | [**UpdateIamRoleRequest**](UpdateIamRoleRequest.md)|  | 

### Return type

[**IamRole**](IamRole.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

