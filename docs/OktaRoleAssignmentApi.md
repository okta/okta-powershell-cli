# Okta.PowerShell.Okta.PowerShell\Api.OktaRoleAssignmentApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Set-OktaRoleToGroup**](OktaRoleAssignmentApi.md#Set-OktaRoleToGroup) | **POST** /api/v1/groups/{groupId}/roles | Assign a Role to a Group
[**Set-OktaRoleToUser**](OktaRoleAssignmentApi.md#Set-OktaRoleToUser) | **POST** /api/v1/users/{userId}/roles | Assign a Role to a User
[**Get-OktaGroupAssignedRole**](OktaRoleAssignmentApi.md#Get-OktaGroupAssignedRole) | **GET** /api/v1/groups/{groupId}/roles/{roleId} | Retrieve a Role assigned to Group
[**Get-OktaUserAssignedRole**](OktaRoleAssignmentApi.md#Get-OktaUserAssignedRole) | **GET** /api/v1/users/{userId}/roles/{roleId} | Retrieve a Role assigned to a User
[**Invoke-OktaListAssignedRolesForUser**](OktaRoleAssignmentApi.md#Invoke-OktaListAssignedRolesForUser) | **GET** /api/v1/users/{userId}/roles | List all Roles assigned to a User
[**Invoke-OktaListGroupAssignedRoles**](OktaRoleAssignmentApi.md#Invoke-OktaListGroupAssignedRoles) | **GET** /api/v1/groups/{groupId}/roles | List all Assigned Roles of Group
[**Invoke-OktaUnassignRoleFromGroup**](OktaRoleAssignmentApi.md#Invoke-OktaUnassignRoleFromGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId} | Unassign a Role from a Group
[**Invoke-OktaUnassignRoleFromUser**](OktaRoleAssignmentApi.md#Invoke-OktaUnassignRoleFromUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId} | Unassign a Role from a User


<a id="Set-OktaRoleToGroup"></a>
# **Set-OktaRoleToGroup**
> Role Set-OktaRoleToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssignRoleRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisableNotifications] <System.Nullable[Boolean]><br>

Assign a Role to a Group

Assigns a role to a group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$AssignRoleRequest = Initialize-AssignRoleRequest -Type "API_ACCESS_MANAGEMENT_ADMIN" # AssignRoleRequest | 
$DisableNotifications = $true # Boolean | Setting this to `true` grants the group third-party admin status (optional)

# Assign a Role to a Group
try {
    $Result = Set-OktaRoleToGroup -GroupId $GroupId -AssignRoleRequest $AssignRoleRequest -DisableNotifications $DisableNotifications
} catch {
    Write-Host ("Exception occurred when calling Set-OktaRoleToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Set-OktaRoleToUser"></a>
# **Set-OktaRoleToUser**
> Role Set-OktaRoleToUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssignRoleRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisableNotifications] <System.Nullable[Boolean]><br>

Assign a Role to a User

Assigns a role to a user identified by `userId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$AssignRoleRequest = Initialize-AssignRoleRequest -Type "API_ACCESS_MANAGEMENT_ADMIN" # AssignRoleRequest | 
$DisableNotifications = $true # Boolean | Setting this to `true` grants the user third-party admin status (optional)

# Assign a Role to a User
try {
    $Result = Set-OktaRoleToUser -UserId $UserId -AssignRoleRequest $AssignRoleRequest -DisableNotifications $DisableNotifications
} catch {
    Write-Host ("Exception occurred when calling Set-OktaRoleToUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaGroupAssignedRole"></a>
# **Get-OktaGroupAssignedRole**
> Role Get-OktaGroupAssignedRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Retrieve a Role assigned to Group

Retrieves a role identified by `roleId` assigned to group identified by `groupId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 

# Retrieve a Role assigned to Group
try {
    $Result = Get-OktaGroupAssignedRole -GroupId $GroupId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaGroupAssignedRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaUserAssignedRole"></a>
# **Get-OktaUserAssignedRole**
> Role Get-OktaUserAssignedRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Retrieve a Role assigned to a User

Retrieves a role identified by `roleId` assigned to a user identified by `userId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 

# Retrieve a Role assigned to a User
try {
    $Result = Get-OktaUserAssignedRole -UserId $UserId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaUserAssignedRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAssignedRolesForUser"></a>
# **Invoke-OktaListAssignedRolesForUser**
> Role[] Invoke-OktaListAssignedRolesForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Roles assigned to a User

Lists all roles assigned to a user identified by `userId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$Expand = "MyExpand" # String |  (optional)

# List all Roles assigned to a User
try {
    $Result = Invoke-OktaListAssignedRolesForUser -UserId $UserId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAssignedRolesForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListGroupAssignedRoles"></a>
# **Invoke-OktaListGroupAssignedRoles**
> Role[] Invoke-OktaListGroupAssignedRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Assigned Roles of Group

Lists all assigned roles of group identified by `groupId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$Expand = "MyExpand" # String |  (optional)

# List all Assigned Roles of Group
try {
    $Result = Invoke-OktaListGroupAssignedRoles -GroupId $GroupId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListGroupAssignedRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnassignRoleFromGroup"></a>
# **Invoke-OktaUnassignRoleFromGroup**
> void Invoke-OktaUnassignRoleFromGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Unassign a Role from a Group

Unassigns a role identified by `roleId` assigned to group identified by `groupId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 

# Unassign a Role from a Group
try {
    $Result = Invoke-OktaUnassignRoleFromGroup -GroupId $GroupId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnassignRoleFromGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnassignRoleFromUser"></a>
# **Invoke-OktaUnassignRoleFromUser**
> void Invoke-OktaUnassignRoleFromUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Unassign a Role from a User

Unassigns a role identified by `roleId` from a user identified by `userId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 

# Unassign a Role from a User
try {
    $Result = Invoke-OktaUnassignRoleFromUser -UserId $UserId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnassignRoleFromUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

