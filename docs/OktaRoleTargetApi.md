# Okta.PowerShell.Okta.PowerShell\Api.OktaRoleTargetApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-OktaAllAppsAsTargetToRole**](OktaRoleTargetApi.md#Add-OktaAllAppsAsTargetToRole) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps | Assign all Apps as Target to Role
[**Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup**](OktaRoleTargetApi.md#Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Assign an Application Instance Target to Application Administrator Role
[**Add-OktaApplicationTargetToAdminRoleForUser**](OktaRoleTargetApi.md#Add-OktaApplicationTargetToAdminRoleForUser) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName} | Assign an Application Target to Administrator Role
[**Add-OktaApplicationTargetToAdminRoleGivenToGroup**](OktaRoleTargetApi.md#Add-OktaApplicationTargetToAdminRoleGivenToGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName} | Assign an Application Target to Administrator Role
[**Add-OktaApplicationTargetToAppAdminRoleForUser**](OktaRoleTargetApi.md#Add-OktaApplicationTargetToAppAdminRoleForUser) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Assign an Application Instance Target to an Application Administrator Role
[**Add-OktaGroupTargetToGroupAdministratorRoleForGroup**](OktaRoleTargetApi.md#Add-OktaGroupTargetToGroupAdministratorRoleForGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId} | Assign a Group Target for Group Role
[**Add-OktaGroupTargetToRole**](OktaRoleTargetApi.md#Add-OktaGroupTargetToRole) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId} | Assign a Group Target to Role
[**Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup**](OktaRoleTargetApi.md#Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup) | **GET** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps | List all Application Targets for an Application Administrator Role
[**Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser**](OktaRoleTargetApi.md#Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser) | **GET** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps | List all Application Targets for Application Administrator Role
[**Invoke-OktaListGroupTargetsForGroupRole**](OktaRoleTargetApi.md#Invoke-OktaListGroupTargetsForGroupRole) | **GET** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups | List all Group Targets for a Group Role
[**Invoke-OktaListGroupTargetsForRole**](OktaRoleTargetApi.md#Invoke-OktaListGroupTargetsForRole) | **GET** /api/v1/users/{userId}/roles/{roleId}/targets/groups | List all Group Targets for Role
[**Remove-OktaApplicationTargetFromAdministratorRoleForUser**](OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromAdministratorRoleForUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Unassign an Application Instance Target to Application Administrator Role
[**Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup**](OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Delete an Application Instance Target to Application Administrator Role
[**Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser**](OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName} | Unassign an Application Target from Application Administrator Role
[**Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup**](OktaRoleTargetApi.md#Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName} | Delete an Application Target from Application Administrator Role
[**Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup**](OktaRoleTargetApi.md#Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId} | Delete a Group Target for Group Role
[**Remove-OktaGroupTargetFromRole**](OktaRoleTargetApi.md#Remove-OktaGroupTargetFromRole) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId} | Unassign a Group Target from Role


<a id="Add-OktaAllAppsAsTargetToRole"></a>
# **Add-OktaAllAppsAsTargetToRole**
> void Add-OktaAllAppsAsTargetToRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Assign all Apps as Target to Role

Assign all Apps as Target to Role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 

# Assign all Apps as Target to Role
try {
    $Result = Add-OktaAllAppsAsTargetToRole -UserId $UserId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Add-OktaAllAppsAsTargetToRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup"></a>
# **Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup**
> void Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Assign an Application Instance Target to Application Administrator Role

Add App Instance Target to App Administrator Role given to a Group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Assign an Application Instance Target to Application Administrator Role
try {
    $Result = Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Add-OktaApplicationInstanceTargetToAppAdminRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 
 **ApplicationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-OktaApplicationTargetToAdminRoleForUser"></a>
# **Add-OktaApplicationTargetToAdminRoleForUser**
> void Add-OktaApplicationTargetToAdminRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Assign an Application Target to Administrator Role

Assign an application target to administrator role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 

# Assign an Application Target to Administrator Role
try {
    $Result = Add-OktaApplicationTargetToAdminRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Add-OktaApplicationTargetToAdminRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-OktaApplicationTargetToAdminRoleGivenToGroup"></a>
# **Add-OktaApplicationTargetToAdminRoleGivenToGroup**
> void Add-OktaApplicationTargetToAdminRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Assign an Application Target to Administrator Role

Assign an application target to administrator role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 

# Assign an Application Target to Administrator Role
try {
    $Result = Add-OktaApplicationTargetToAdminRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Add-OktaApplicationTargetToAdminRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-OktaApplicationTargetToAppAdminRoleForUser"></a>
# **Add-OktaApplicationTargetToAppAdminRoleForUser**
> void Add-OktaApplicationTargetToAppAdminRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Assign an Application Instance Target to an Application Administrator Role

Add App Instance Target to App Administrator Role given to a User

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Assign an Application Instance Target to an Application Administrator Role
try {
    $Result = Add-OktaApplicationTargetToAppAdminRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Add-OktaApplicationTargetToAppAdminRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 
 **ApplicationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-OktaGroupTargetToGroupAdministratorRoleForGroup"></a>
# **Add-OktaGroupTargetToGroupAdministratorRoleForGroup**
> void Add-OktaGroupTargetToGroupAdministratorRoleForGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetGroupId] <String><br>

Assign a Group Target for Group Role

Enumerates group targets for a group role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$TargetGroupId = "MyTargetGroupId" # String | 

# Assign a Group Target for Group Role
try {
    $Result = Add-OktaGroupTargetToGroupAdministratorRoleForGroup -GroupId $GroupId -RoleId $RoleId -TargetGroupId $TargetGroupId
} catch {
    Write-Host ("Exception occurred when calling Add-OktaGroupTargetToGroupAdministratorRoleForGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **TargetGroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Add-OktaGroupTargetToRole"></a>
# **Add-OktaGroupTargetToRole**
> void Add-OktaGroupTargetToRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Assign a Group Target to Role

Assign a Group Target to Role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$GroupId = "MyGroupId" # String | 

# Assign a Group Target to Role
try {
    $Result = Add-OktaGroupTargetToRole -UserId $UserId -RoleId $RoleId -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Add-OktaGroupTargetToRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **GroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup"></a>
# **Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup**
> CatalogApplication[] Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Application Targets for an Application Administrator Role

Lists all App targets for an `APP_ADMIN` Role assigned to a Group. This methods return list may include full Applications or Instances. The response for an instance will have an `ID` value, while Application will not have an ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Application Targets for an Application Administrator Role
try {
    $Result = Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup -GroupId $GroupId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**CatalogApplication[]**](CatalogApplication.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser"></a>
# **Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser**
> CatalogApplication[] Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Application Targets for Application Administrator Role

Lists all App targets for an `APP_ADMIN` Role assigned to a User. This methods return list may include full Applications or Instances. The response for an instance will have an `ID` value, while Application will not have an ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Application Targets for Application Administrator Role
try {
    $Result = Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser -UserId $UserId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListApplicationTargetsForApplicationAdministratorRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**CatalogApplication[]**](CatalogApplication.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListGroupTargetsForGroupRole"></a>
# **Invoke-OktaListGroupTargetsForGroupRole**
> Group[] Invoke-OktaListGroupTargetsForGroupRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Group Targets for a Group Role

Enumerates group targets for a group role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Group Targets for a Group Role
try {
    $Result = Invoke-OktaListGroupTargetsForGroupRole -GroupId $GroupId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListGroupTargetsForGroupRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**Group[]**](Group.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListGroupTargetsForRole"></a>
# **Invoke-OktaListGroupTargetsForRole**
> Group[] Invoke-OktaListGroupTargetsForRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Group Targets for Role

List all group targets for role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Group Targets for Role
try {
    $Result = Invoke-OktaListGroupTargetsForRole -UserId $UserId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListGroupTargetsForRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**Group[]**](Group.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-OktaApplicationTargetFromAdministratorRoleForUser"></a>
# **Remove-OktaApplicationTargetFromAdministratorRoleForUser**
> void Remove-OktaApplicationTargetFromAdministratorRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Unassign an Application Instance Target to Application Administrator Role

Remove App Instance Target to App Administrator Role given to a User

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Unassign an Application Instance Target to Application Administrator Role
try {
    $Result = Remove-OktaApplicationTargetFromAdministratorRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaApplicationTargetFromAdministratorRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 
 **ApplicationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup"></a>
# **Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup**
> void Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Delete an Application Instance Target to Application Administrator Role

Remove App Instance Target to App Administrator Role given to a Group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Delete an Application Instance Target to Application Administrator Role
try {
    $Result = Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaApplicationTargetFromAdministratorRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 
 **ApplicationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser"></a>
# **Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser**
> void Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Unassign an Application Target from Application Administrator Role

Unassign an application target from application administrator role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 

# Unassign an Application Target from Application Administrator Role
try {
    $Result = Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaApplicationTargetFromApplicationAdministratorRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup"></a>
# **Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup**
> void Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Delete an Application Target from Application Administrator Role

Delete an application target from application administrator role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$AppName = "MyAppName" # String | 

# Delete an Application Target from Application Administrator Role
try {
    $Result = Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaApplicationTargetFromApplicationAdministratorRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **AppName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup"></a>
# **Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup**
> void Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetGroupId] <String><br>

Delete a Group Target for Group Role

remove group target for a group role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$RoleId = "MyRoleId" # String | 
$TargetGroupId = "MyTargetGroupId" # String | 

# Delete a Group Target for Group Role
try {
    $Result = Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -TargetGroupId $TargetGroupId
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaGroupTargetFromGroupAdministratorRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **RoleId** | **String**|  | 
 **TargetGroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-OktaGroupTargetFromRole"></a>
# **Remove-OktaGroupTargetFromRole**
> void Remove-OktaGroupTargetFromRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Unassign a Group Target from Role

Unassign a Group Target from Role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RoleId = "MyRoleId" # String | 
$GroupId = "MyGroupId" # String | 

# Unassign a Group Target from Role
try {
    $Result = Remove-OktaGroupTargetFromRole -UserId $UserId -RoleId $RoleId -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaGroupTargetFromRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RoleId** | **String**|  | 
 **GroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

