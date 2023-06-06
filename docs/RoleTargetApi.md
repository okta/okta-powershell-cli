# PSOpenAPITools.PSOpenAPITools\Api.RoleTargetApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-AllAppsAsTargetToRole**](RoleTargetApi.md#Add-AllAppsAsTargetToRole) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps | Assign all Apps as Target to Role
[**Add-ApplicationInstanceTargetToAppAdminRoleGivenToGroup**](RoleTargetApi.md#Add-ApplicationInstanceTargetToAppAdminRoleGivenToGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Assign an Application Instance Target to Application Administrator Role
[**Add-ApplicationTargetToAdminRoleForUser**](RoleTargetApi.md#Add-ApplicationTargetToAdminRoleForUser) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName} | Assign an Application Target to Administrator Role
[**Add-ApplicationTargetToAdminRoleGivenToGroup**](RoleTargetApi.md#Add-ApplicationTargetToAdminRoleGivenToGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName} | Assign an Application Target to Administrator Role
[**Add-ApplicationTargetToAppAdminRoleForUser**](RoleTargetApi.md#Add-ApplicationTargetToAppAdminRoleForUser) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Assign an Application Instance Target to an Application Administrator Role
[**Add-GroupTargetToGroupAdministratorRoleForGroup**](RoleTargetApi.md#Add-GroupTargetToGroupAdministratorRoleForGroup) | **PUT** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId} | Assign a Group Target for Group Role
[**Add-GroupTargetToRole**](RoleTargetApi.md#Add-GroupTargetToRole) | **PUT** /api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId} | Assign a Group Target to Role
[**Invoke-ListApplicationTargetsForApplicationAdministratorRoleForGroup**](RoleTargetApi.md#Invoke-ListApplicationTargetsForApplicationAdministratorRoleForGroup) | **GET** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps | List all Application Targets for an Application Administrator Role
[**Invoke-ListApplicationTargetsForApplicationAdministratorRoleForUser**](RoleTargetApi.md#Invoke-ListApplicationTargetsForApplicationAdministratorRoleForUser) | **GET** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps | List all Application Targets for Application Administrator Role
[**Invoke-ListGroupTargetsForGroupRole**](RoleTargetApi.md#Invoke-ListGroupTargetsForGroupRole) | **GET** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups | List all Group Targets for a Group Role
[**Invoke-ListGroupTargetsForRole**](RoleTargetApi.md#Invoke-ListGroupTargetsForRole) | **GET** /api/v1/users/{userId}/roles/{roleId}/targets/groups | List all Group Targets for Role
[**Remove-ApplicationTargetFromAdministratorRoleForUser**](RoleTargetApi.md#Remove-ApplicationTargetFromAdministratorRoleForUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Unassign an Application Instance Target to Application Administrator Role
[**Remove-ApplicationTargetFromAdministratorRoleGivenToGroup**](RoleTargetApi.md#Remove-ApplicationTargetFromAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName}/{applicationId} | Delete an Application Instance Target to Application Administrator Role
[**Remove-ApplicationTargetFromApplicationAdministratorRoleForUser**](RoleTargetApi.md#Remove-ApplicationTargetFromApplicationAdministratorRoleForUser) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/catalog/apps/{appName} | Unassign an Application Target from Application Administrator Role
[**Remove-ApplicationTargetFromApplicationAdministratorRoleGivenToGroup**](RoleTargetApi.md#Remove-ApplicationTargetFromApplicationAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/catalog/apps/{appName} | Delete an Application Target from Application Administrator Role
[**Remove-GroupTargetFromGroupAdministratorRoleGivenToGroup**](RoleTargetApi.md#Remove-GroupTargetFromGroupAdministratorRoleGivenToGroup) | **DELETE** /api/v1/groups/{groupId}/roles/{roleId}/targets/groups/{targetGroupId} | Delete a Group Target for Group Role
[**Remove-GroupTargetFromRole**](RoleTargetApi.md#Remove-GroupTargetFromRole) | **DELETE** /api/v1/users/{userId}/roles/{roleId}/targets/groups/{groupId} | Unassign a Group Target from Role


<a name="Add-AllAppsAsTargetToRole"></a>
# **Add-AllAppsAsTargetToRole**
> void Add-AllAppsAsTargetToRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>

Assign all Apps as Target to Role

Assign all Apps as Target to Role

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

# Assign all Apps as Target to Role
try {
    $Result = Add-AllAppsAsTargetToRole -UserId $UserId -RoleId $RoleId
} catch {
    Write-Host ("Exception occurred when calling Add-AllAppsAsTargetToRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Add-ApplicationInstanceTargetToAppAdminRoleGivenToGroup"></a>
# **Add-ApplicationInstanceTargetToAppAdminRoleGivenToGroup**
> void Add-ApplicationInstanceTargetToAppAdminRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Assign an Application Instance Target to Application Administrator Role

Add App Instance Target to App Administrator Role given to a Group

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
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Assign an Application Instance Target to Application Administrator Role
try {
    $Result = Add-ApplicationInstanceTargetToAppAdminRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Add-ApplicationInstanceTargetToAppAdminRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Add-ApplicationTargetToAdminRoleForUser"></a>
# **Add-ApplicationTargetToAdminRoleForUser**
> void Add-ApplicationTargetToAdminRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Assign an Application Target to Administrator Role

Assign an application target to administrator role

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
$AppName = "MyAppName" # String | 

# Assign an Application Target to Administrator Role
try {
    $Result = Add-ApplicationTargetToAdminRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Add-ApplicationTargetToAdminRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Add-ApplicationTargetToAdminRoleGivenToGroup"></a>
# **Add-ApplicationTargetToAdminRoleGivenToGroup**
> void Add-ApplicationTargetToAdminRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Assign an Application Target to Administrator Role

Assign an application target to administrator role

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
$AppName = "MyAppName" # String | 

# Assign an Application Target to Administrator Role
try {
    $Result = Add-ApplicationTargetToAdminRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Add-ApplicationTargetToAdminRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Add-ApplicationTargetToAppAdminRoleForUser"></a>
# **Add-ApplicationTargetToAppAdminRoleForUser**
> void Add-ApplicationTargetToAppAdminRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Assign an Application Instance Target to an Application Administrator Role

Add App Instance Target to App Administrator Role given to a User

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
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Assign an Application Instance Target to an Application Administrator Role
try {
    $Result = Add-ApplicationTargetToAppAdminRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Add-ApplicationTargetToAppAdminRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Add-GroupTargetToGroupAdministratorRoleForGroup"></a>
# **Add-GroupTargetToGroupAdministratorRoleForGroup**
> void Add-GroupTargetToGroupAdministratorRoleForGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetGroupId] <String><br>

Assign a Group Target for Group Role

Enumerates group targets for a group role.

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
$TargetGroupId = "MyTargetGroupId" # String | 

# Assign a Group Target for Group Role
try {
    $Result = Add-GroupTargetToGroupAdministratorRoleForGroup -GroupId $GroupId -RoleId $RoleId -TargetGroupId $TargetGroupId
} catch {
    Write-Host ("Exception occurred when calling Add-GroupTargetToGroupAdministratorRoleForGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Add-GroupTargetToRole"></a>
# **Add-GroupTargetToRole**
> void Add-GroupTargetToRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Assign a Group Target to Role

Assign a Group Target to Role

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
$GroupId = "MyGroupId" # String | 

# Assign a Group Target to Role
try {
    $Result = Add-GroupTargetToRole -UserId $UserId -RoleId $RoleId -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Add-GroupTargetToRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListApplicationTargetsForApplicationAdministratorRoleForGroup"></a>
# **Invoke-ListApplicationTargetsForApplicationAdministratorRoleForGroup**
> CatalogApplication[] Invoke-ListApplicationTargetsForApplicationAdministratorRoleForGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Application Targets for an Application Administrator Role

Lists all App targets for an `APP_ADMIN` Role assigned to a Group. This methods return list may include full Applications or Instances. The response for an instance will have an `ID` value, while Application will not have an ID.

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
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Application Targets for an Application Administrator Role
try {
    $Result = Invoke-ListApplicationTargetsForApplicationAdministratorRoleForGroup -GroupId $GroupId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListApplicationTargetsForApplicationAdministratorRoleForGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListApplicationTargetsForApplicationAdministratorRoleForUser"></a>
# **Invoke-ListApplicationTargetsForApplicationAdministratorRoleForUser**
> CatalogApplication[] Invoke-ListApplicationTargetsForApplicationAdministratorRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Application Targets for Application Administrator Role

Lists all App targets for an `APP_ADMIN` Role assigned to a User. This methods return list may include full Applications or Instances. The response for an instance will have an `ID` value, while Application will not have an ID.

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
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Application Targets for Application Administrator Role
try {
    $Result = Invoke-ListApplicationTargetsForApplicationAdministratorRoleForUser -UserId $UserId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListApplicationTargetsForApplicationAdministratorRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListGroupTargetsForGroupRole"></a>
# **Invoke-ListGroupTargetsForGroupRole**
> Group[] Invoke-ListGroupTargetsForGroupRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Group Targets for a Group Role

Enumerates group targets for a group role.

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
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Group Targets for a Group Role
try {
    $Result = Invoke-ListGroupTargetsForGroupRole -GroupId $GroupId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListGroupTargetsForGroupRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListGroupTargetsForRole"></a>
# **Invoke-ListGroupTargetsForRole**
> Group[] Invoke-ListGroupTargetsForRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Group Targets for Role

List all group targets for role

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
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Group Targets for Role
try {
    $Result = Invoke-ListGroupTargetsForRole -UserId $UserId -RoleId $RoleId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListGroupTargetsForRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-ApplicationTargetFromAdministratorRoleForUser"></a>
# **Remove-ApplicationTargetFromAdministratorRoleForUser**
> void Remove-ApplicationTargetFromAdministratorRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Unassign an Application Instance Target to Application Administrator Role

Remove App Instance Target to App Administrator Role given to a User

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
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Unassign an Application Instance Target to Application Administrator Role
try {
    $Result = Remove-ApplicationTargetFromAdministratorRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Remove-ApplicationTargetFromAdministratorRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-ApplicationTargetFromAdministratorRoleGivenToGroup"></a>
# **Remove-ApplicationTargetFromAdministratorRoleGivenToGroup**
> void Remove-ApplicationTargetFromAdministratorRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Delete an Application Instance Target to Application Administrator Role

Remove App Instance Target to App Administrator Role given to a Group

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
$AppName = "MyAppName" # String | 
$ApplicationId = "MyApplicationId" # String | 

# Delete an Application Instance Target to Application Administrator Role
try {
    $Result = Remove-ApplicationTargetFromAdministratorRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Remove-ApplicationTargetFromAdministratorRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-ApplicationTargetFromApplicationAdministratorRoleForUser"></a>
# **Remove-ApplicationTargetFromApplicationAdministratorRoleForUser**
> void Remove-ApplicationTargetFromApplicationAdministratorRoleForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Unassign an Application Target from Application Administrator Role

Unassign an application target from application administrator role

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
$AppName = "MyAppName" # String | 

# Unassign an Application Target from Application Administrator Role
try {
    $Result = Remove-ApplicationTargetFromApplicationAdministratorRoleForUser -UserId $UserId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Remove-ApplicationTargetFromApplicationAdministratorRoleForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-ApplicationTargetFromApplicationAdministratorRoleGivenToGroup"></a>
# **Remove-ApplicationTargetFromApplicationAdministratorRoleGivenToGroup**
> void Remove-ApplicationTargetFromApplicationAdministratorRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Delete an Application Target from Application Administrator Role

Delete an application target from application administrator role

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
$AppName = "MyAppName" # String | 

# Delete an Application Target from Application Administrator Role
try {
    $Result = Remove-ApplicationTargetFromApplicationAdministratorRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Remove-ApplicationTargetFromApplicationAdministratorRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-GroupTargetFromGroupAdministratorRoleGivenToGroup"></a>
# **Remove-GroupTargetFromGroupAdministratorRoleGivenToGroup**
> void Remove-GroupTargetFromGroupAdministratorRoleGivenToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetGroupId] <String><br>

Delete a Group Target for Group Role

remove group target for a group role.

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
$TargetGroupId = "MyTargetGroupId" # String | 

# Delete a Group Target for Group Role
try {
    $Result = Remove-GroupTargetFromGroupAdministratorRoleGivenToGroup -GroupId $GroupId -RoleId $RoleId -TargetGroupId $TargetGroupId
} catch {
    Write-Host ("Exception occurred when calling Remove-GroupTargetFromGroupAdministratorRoleGivenToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-GroupTargetFromRole"></a>
# **Remove-GroupTargetFromRole**
> void Remove-GroupTargetFromRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Unassign a Group Target from Role

Unassign a Group Target from Role

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
$GroupId = "MyGroupId" # String | 

# Unassign a Group Target from Role
try {
    $Result = Remove-GroupTargetFromRole -UserId $UserId -RoleId $RoleId -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Remove-GroupTargetFromRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

