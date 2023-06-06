# PSOpenAPITools.PSOpenAPITools\Api.RoleAssignmentApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-RoleToGroup**](RoleAssignmentApi.md#Set-RoleToGroup) | **POST** /api/v1/groups/{groupId}/roles | Assign a Role to a Group
[**Set-RoleToUser**](RoleAssignmentApi.md#Set-RoleToUser) | **POST** /api/v1/users/{userId}/roles | Assign a Role to a User
[**Get-GroupAssignedRole**](RoleAssignmentApi.md#Get-GroupAssignedRole) | **GET** /api/v1/groups/{groupId}/roles/{roleId} | Retrieve a Role assigned to Group
[**Get-UserAssignedRole**](RoleAssignmentApi.md#Get-UserAssignedRole) | **GET** /api/v1/users/{userId}/roles/{roleId} | Retrieve a Role assigned to a User
[**Invoke-ListAssignedRolesForUser**](RoleAssignmentApi.md#Invoke-ListAssignedRolesForUser) | **GET** /api/v1/users/{userId}/roles | List all Roles assigned to a User
[**Invoke-ListGroupAssignedRoles**](RoleAssignmentApi.md#Invoke-ListGroupAssignedRoles) | **GET** /api/v1/groups/{groupId}/roles | List all Assigned Roles of Group
[**Invoke-UnassignRoleFromGroup**](RoleAssignmentApi.md#Invoke-UnassignRoleFromGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId} | Unassign a Role from a Group
[**Invoke-UnassignRoleFromUser**](RoleAssignmentApi.md#Invoke-UnassignRoleFromUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId} | Unassign a Role from a User


<a name="Set-RoleToGroup"></a>
# **Set-RoleToGroup**
> Role Set-RoleToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssignRoleRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisableNotifications] <System.Nullable[Boolean]><br>

Assign a Role to a Group

Assigns a role to a group.

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

$GroupId = "MyGroupId" # String | 
$AssignRoleRequest = Initialize-AssignRoleRequest -Type "API_ACCESS_MANAGEMENT_ADMIN" # AssignRoleRequest | 
$DisableNotifications = $true # Boolean | Setting this to `true` grants the group third-party admin status (optional)

# Assign a Role to a Group
try {
    $Result = Set-RoleToGroup -GroupId $GroupId -AssignRoleRequest $AssignRoleRequest -DisableNotifications $DisableNotifications
} catch {
    Write-Host ("Exception occurred when calling Set-RoleToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **AssignRoleRequest** | [**AssignRoleRequest**](AssignRoleRequest.md)|  | 
 **DisableNotifications** | **Boolean**| Setting this to &#x60;true&#x60; grants the group third-party admin status | [optional] 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-RoleToUser"></a>
# **Set-RoleToUser**
> Role Set-RoleToUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssignRoleRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisableNotifications] <System.Nullable[Boolean]><br>

Assign a Role to a User

Assigns a role to a user identified by `userId`

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

$UserId = "MyUserId" # String | 
$AssignRoleRequest = Initialize-AssignRoleRequest -Type "API_ACCESS_MANAGEMENT_ADMIN" # AssignRoleRequest | 
$DisableNotifications = $true # Boolean | Setting this to `true` grants the user third-party admin status (optional)

# Assign a Role to a User
try {
    $Result = Set-RoleToUser -UserId $UserId -AssignRoleRequest $AssignRoleRequest -DisableNotifications $DisableNotifications
} catch {
    Write-Host ("Exception occurred when calling Set-RoleToUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **AssignRoleRequest** | [**AssignRoleRequest**](AssignRoleRequest.md)|  | 
 **DisableNotifications** | **Boolean**| Setting this to &#x60;true&#x60; grants the user third-party admin status | [optional] 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroupAssignedRole"></a>
# **Get-GroupAssignedRole**
> Role Get-GroupAssignedRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Retrieve a Role assigned to Group

Retrieves a role identified by `roleId` assigned to group identified by `groupId`

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

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 

# Retrieve a Role assigned to Group
try {
    $Result = Get-GroupAssignedRole -GroupId $GroupId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Get-GroupAssignedRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserAssignedRole"></a>
# **Get-UserAssignedRole**
> Role Get-UserAssignedRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Retrieve a Role assigned to a User

Retrieves a role identified by `roleId` assigned to a user identified by `userId`

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

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 

# Retrieve a Role assigned to a User
try {
    $Result = Get-UserAssignedRole -UserId $UserId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Get-UserAssignedRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 

### Return type

[**Role**](Role.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAssignedRolesForUser"></a>
# **Invoke-ListAssignedRolesForUser**
> Role[] Invoke-ListAssignedRolesForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Roles assigned to a User

Lists all roles assigned to a user identified by `userId`

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

$UserId = "MyUserId" # String | 
$Expand = "MyExpand" # String |  (optional)

# List all Roles assigned to a User
try {
    $Result = Invoke-ListAssignedRolesForUser -UserId $UserId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAssignedRolesForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**Role[]**](Role.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListGroupAssignedRoles"></a>
# **Invoke-ListGroupAssignedRoles**
> Role[] Invoke-ListGroupAssignedRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Assigned Roles of Group

Lists all assigned roles of group identified by `groupId`

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

$GroupId = "MyGroupId" # String | 
$Expand = "MyExpand" # String |  (optional)

# List all Assigned Roles of Group
try {
    $Result = Invoke-ListGroupAssignedRoles -GroupId $GroupId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListGroupAssignedRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**Role[]**](Role.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnassignRoleFromGroup"></a>
# **Invoke-UnassignRoleFromGroup**
> void Invoke-UnassignRoleFromGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Unassign a Role from a Group

Unassigns a role identified by `roleId` assigned to group identified by `groupId`

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

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 

# Unassign a Role from a Group
try {
    $Result = Invoke-UnassignRoleFromGroup -GroupId $GroupId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignRoleFromGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnassignRoleFromUser"></a>
# **Invoke-UnassignRoleFromUser**
> void Invoke-UnassignRoleFromUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Unassign a Role from a User

Unassigns a role identified by `roleId` from a user identified by `userId`

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

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 

# Unassign a Role from a User
try {
    $Result = Invoke-UnassignRoleFromUser -UserId $UserId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignRoleFromUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

