# PSOpenAPITools.PSOpenAPITools\Api.SubscriptionApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-RoleSubscriptionByNotificationType**](SubscriptionApi.md#Get-RoleSubscriptionByNotificationType) | **GET** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType} | List all Subscriptions of a Custom Role with a specific notification type
[**Get-UserSubscriptionByNotificationType**](SubscriptionApi.md#Get-UserSubscriptionByNotificationType) | **GET** /api/v1/users/{userId}/subscriptions/{notificationType} | List all Subscriptions by type
[**Invoke-ListRoleSubscriptions**](SubscriptionApi.md#Invoke-ListRoleSubscriptions) | **GET** /api/v1/roles/{roleTypeOrRoleId}/subscriptions | List all Subscriptions of a Custom Role
[**Invoke-ListUserSubscriptions**](SubscriptionApi.md#Invoke-ListUserSubscriptions) | **GET** /api/v1/users/{userId}/subscriptions | List all Subscriptions
[**Invoke-SubscribeRoleSubscriptionByNotificationType**](SubscriptionApi.md#Invoke-SubscribeRoleSubscriptionByNotificationType) | **POST** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/subscribe | Subscribe a Custom Role to a specific notification type
[**Invoke-SubscribeUserSubscriptionByNotificationType**](SubscriptionApi.md#Invoke-SubscribeUserSubscriptionByNotificationType) | **POST** /api/v1/users/{userId}/subscriptions/{notificationType}/subscribe | Subscribe to a specific notification type
[**Invoke-UnsubscribeRoleSubscriptionByNotificationType**](SubscriptionApi.md#Invoke-UnsubscribeRoleSubscriptionByNotificationType) | **POST** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/unsubscribe | Unsubscribe a Custom Role from a specific notification type
[**Invoke-UnsubscribeUserSubscriptionByNotificationType**](SubscriptionApi.md#Invoke-UnsubscribeUserSubscriptionByNotificationType) | **POST** /api/v1/users/{userId}/subscriptions/{notificationType}/unsubscribe | Unsubscribe from a specific notification type


<a name="Get-RoleSubscriptionByNotificationType"></a>
# **Get-RoleSubscriptionByNotificationType**
> Subscription Get-RoleSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

List all Subscriptions of a Custom Role with a specific notification type

When roleType Get subscriptions of a Role with a specific notification type. Else when roleId Get subscription of a Custom Role with a specific notification type.

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

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 
$NotificationType = "MyNotificationType" # String | 

# List all Subscriptions of a Custom Role with a specific notification type
try {
    $Result = Get-RoleSubscriptionByNotificationType -RoleTypeOrRoleId $RoleTypeOrRoleId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Get-RoleSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleTypeOrRoleId** | **String**|  | 
 **NotificationType** | **String**|  | 

### Return type

[**Subscription**](Subscription.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserSubscriptionByNotificationType"></a>
# **Get-UserSubscriptionByNotificationType**
> Subscription Get-UserSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

List all Subscriptions by type

Get the subscriptions of a User with a specific notification type. Only gets subscriptions for current user. An AccessDeniedException message is sent if requests are made from other users.

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
$NotificationType = "MyNotificationType" # String | 

# List all Subscriptions by type
try {
    $Result = Get-UserSubscriptionByNotificationType -UserId $UserId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Get-UserSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **NotificationType** | **String**|  | 

### Return type

[**Subscription**](Subscription.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListRoleSubscriptions"></a>
# **Invoke-ListRoleSubscriptions**
> Subscription[] Invoke-ListRoleSubscriptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>

List all Subscriptions of a Custom Role

When roleType List all subscriptions of a Role. Else when roleId List subscriptions of a Custom Role

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

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 

# List all Subscriptions of a Custom Role
try {
    $Result = Invoke-ListRoleSubscriptions -RoleTypeOrRoleId $RoleTypeOrRoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListRoleSubscriptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleTypeOrRoleId** | **String**|  | 

### Return type

[**Subscription[]**](Subscription.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListUserSubscriptions"></a>
# **Invoke-ListUserSubscriptions**
> Subscription[] Invoke-ListUserSubscriptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Subscriptions

List subscriptions of a User. Only lists subscriptions for current user. An AccessDeniedException message is sent if requests are made from other users.

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

# List all Subscriptions
try {
    $Result = Invoke-ListUserSubscriptions -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUserSubscriptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**Subscription[]**](Subscription.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SubscribeRoleSubscriptionByNotificationType"></a>
# **Invoke-SubscribeRoleSubscriptionByNotificationType**
> void Invoke-SubscribeRoleSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Subscribe a Custom Role to a specific notification type

When roleType Subscribes a Role to a specific notification type. When you change the subscription status of a Role, it overrides the subscription of any individual user of that Role. Else when roleId Subscribes a Custom Role to a specific notification type. When you change the subscription status of a Custom Role, it overrides the subscription of any individual user of that Custom Role.

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

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 
$NotificationType = "MyNotificationType" # String | 

# Subscribe a Custom Role to a specific notification type
try {
    $Result = Invoke-SubscribeRoleSubscriptionByNotificationType -RoleTypeOrRoleId $RoleTypeOrRoleId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-SubscribeRoleSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleTypeOrRoleId** | **String**|  | 
 **NotificationType** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SubscribeUserSubscriptionByNotificationType"></a>
# **Invoke-SubscribeUserSubscriptionByNotificationType**
> void Invoke-SubscribeUserSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Subscribe to a specific notification type

Subscribes a User to a specific notification type. Only the current User can subscribe to a specific notification type. An AccessDeniedException message is sent if requests are made from other users.

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
$NotificationType = "MyNotificationType" # String | 

# Subscribe to a specific notification type
try {
    $Result = Invoke-SubscribeUserSubscriptionByNotificationType -UserId $UserId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-SubscribeUserSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **NotificationType** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnsubscribeRoleSubscriptionByNotificationType"></a>
# **Invoke-UnsubscribeRoleSubscriptionByNotificationType**
> void Invoke-UnsubscribeRoleSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Unsubscribe a Custom Role from a specific notification type

When roleType Unsubscribes a Role from a specific notification type. When you change the subscription status of a Role, it overrides the subscription of any individual user of that Role. Else when roleId Unsubscribes a Custom Role from a specific notification type. When you change the subscription status of a Custom Role, it overrides the subscription of any individual user of that Custom Role.

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

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 
$NotificationType = "MyNotificationType" # String | 

# Unsubscribe a Custom Role from a specific notification type
try {
    $Result = Invoke-UnsubscribeRoleSubscriptionByNotificationType -RoleTypeOrRoleId $RoleTypeOrRoleId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnsubscribeRoleSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RoleTypeOrRoleId** | **String**|  | 
 **NotificationType** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnsubscribeUserSubscriptionByNotificationType"></a>
# **Invoke-UnsubscribeUserSubscriptionByNotificationType**
> void Invoke-UnsubscribeUserSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Unsubscribe from a specific notification type

Unsubscribes a User from a specific notification type. Only the current User can unsubscribe from a specific notification type. An AccessDeniedException message is sent if requests are made from other users.

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
$NotificationType = "MyNotificationType" # String | 

# Unsubscribe from a specific notification type
try {
    $Result = Invoke-UnsubscribeUserSubscriptionByNotificationType -UserId $UserId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnsubscribeUserSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **NotificationType** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

