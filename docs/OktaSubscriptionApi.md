# Okta.PowerShell.Okta.PowerShell/Api.OktaSubscriptionApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaRoleSubscriptionByNotificationType**](OktaSubscriptionApi.md#Get-OktaRoleSubscriptionByNotificationType) | **GET** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType} | List all Subscriptions of a Custom Role with a specific notification type
[**Get-OktaUserSubscriptionByNotificationType**](OktaSubscriptionApi.md#Get-OktaUserSubscriptionByNotificationType) | **GET** /api/v1/users/{userId}/subscriptions/{notificationType} | List all Subscriptions by type
[**Invoke-OktaListRoleSubscriptions**](OktaSubscriptionApi.md#Invoke-OktaListRoleSubscriptions) | **GET** /api/v1/roles/{roleTypeOrRoleId}/subscriptions | List all Subscriptions of a Custom Role
[**Invoke-OktaListUserSubscriptions**](OktaSubscriptionApi.md#Invoke-OktaListUserSubscriptions) | **GET** /api/v1/users/{userId}/subscriptions | List all Subscriptions
[**Invoke-OktaSubscribeRoleSubscriptionByNotificationType**](OktaSubscriptionApi.md#Invoke-OktaSubscribeRoleSubscriptionByNotificationType) | **POST** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/subscribe | Subscribe a Custom Role to a specific notification type
[**Invoke-OktaSubscribeUserSubscriptionByNotificationType**](OktaSubscriptionApi.md#Invoke-OktaSubscribeUserSubscriptionByNotificationType) | **POST** /api/v1/users/{userId}/subscriptions/{notificationType}/subscribe | Subscribe to a specific notification type
[**Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType**](OktaSubscriptionApi.md#Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType) | **POST** /api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/unsubscribe | Unsubscribe a Custom Role from a specific notification type
[**Invoke-OktaUnsubscribeUserSubscriptionByNotificationType**](OktaSubscriptionApi.md#Invoke-OktaUnsubscribeUserSubscriptionByNotificationType) | **POST** /api/v1/users/{userId}/subscriptions/{notificationType}/unsubscribe | Unsubscribe from a specific notification type


<a id="Get-OktaRoleSubscriptionByNotificationType"></a>
# **Get-OktaRoleSubscriptionByNotificationType**
> Subscription Get-OktaRoleSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

List all Subscriptions of a Custom Role with a specific notification type

When roleType Get subscriptions of a Role with a specific notification type. Else when roleId Get subscription of a Custom Role with a specific notification type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 
$NotificationType = "MyNotificationType" # String | 

# List all Subscriptions of a Custom Role with a specific notification type
try {
    $Result = Get-OktaRoleSubscriptionByNotificationType -RoleTypeOrRoleId $RoleTypeOrRoleId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRoleSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaUserSubscriptionByNotificationType"></a>
# **Get-OktaUserSubscriptionByNotificationType**
> Subscription Get-OktaUserSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

List all Subscriptions by type

Get the subscriptions of a User with a specific notification type. Only gets subscriptions for current user. An AccessDeniedException message is sent if requests are made from other users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$NotificationType = "MyNotificationType" # String | 

# List all Subscriptions by type
try {
    $Result = Get-OktaUserSubscriptionByNotificationType -UserId $UserId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Get-OktaUserSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListRoleSubscriptions"></a>
# **Invoke-OktaListRoleSubscriptions**
> Subscription[] Invoke-OktaListRoleSubscriptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>

List all Subscriptions of a Custom Role

When roleType List all subscriptions of a Role. Else when roleId List subscriptions of a Custom Role

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 

# List all Subscriptions of a Custom Role
try {
    $Result = Invoke-OktaListRoleSubscriptions -RoleTypeOrRoleId $RoleTypeOrRoleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListRoleSubscriptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListUserSubscriptions"></a>
# **Invoke-OktaListUserSubscriptions**
> Subscription[] Invoke-OktaListUserSubscriptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Subscriptions

List subscriptions of a User. Only lists subscriptions for current user. An AccessDeniedException message is sent if requests are made from other users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# List all Subscriptions
try {
    $Result = Invoke-OktaListUserSubscriptions -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListUserSubscriptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaSubscribeRoleSubscriptionByNotificationType"></a>
# **Invoke-OktaSubscribeRoleSubscriptionByNotificationType**
> void Invoke-OktaSubscribeRoleSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Subscribe a Custom Role to a specific notification type

When roleType Subscribes a Role to a specific notification type. When you change the subscription status of a Role, it overrides the subscription of any individual user of that Role. Else when roleId Subscribes a Custom Role to a specific notification type. When you change the subscription status of a Custom Role, it overrides the subscription of any individual user of that Custom Role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 
$NotificationType = "MyNotificationType" # String | 

# Subscribe a Custom Role to a specific notification type
try {
    $Result = Invoke-OktaSubscribeRoleSubscriptionByNotificationType -RoleTypeOrRoleId $RoleTypeOrRoleId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaSubscribeRoleSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaSubscribeUserSubscriptionByNotificationType"></a>
# **Invoke-OktaSubscribeUserSubscriptionByNotificationType**
> void Invoke-OktaSubscribeUserSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Subscribe to a specific notification type

Subscribes a User to a specific notification type. Only the current User can subscribe to a specific notification type. An AccessDeniedException message is sent if requests are made from other users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$NotificationType = "MyNotificationType" # String | 

# Subscribe to a specific notification type
try {
    $Result = Invoke-OktaSubscribeUserSubscriptionByNotificationType -UserId $UserId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaSubscribeUserSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType"></a>
# **Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType**
> void Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleTypeOrRoleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Unsubscribe a Custom Role from a specific notification type

When roleType Unsubscribes a Role from a specific notification type. When you change the subscription status of a Role, it overrides the subscription of any individual user of that Role. Else when roleId Unsubscribes a Custom Role from a specific notification type. When you change the subscription status of a Custom Role, it overrides the subscription of any individual user of that Custom Role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RoleTypeOrRoleId = "MyRoleTypeOrRoleId" # String | 
$NotificationType = "MyNotificationType" # String | 

# Unsubscribe a Custom Role from a specific notification type
try {
    $Result = Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType -RoleTypeOrRoleId $RoleTypeOrRoleId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnsubscribeUserSubscriptionByNotificationType"></a>
# **Invoke-OktaUnsubscribeUserSubscriptionByNotificationType**
> void Invoke-OktaUnsubscribeUserSubscriptionByNotificationType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationType] <String><br>

Unsubscribe from a specific notification type

Unsubscribes a User from a specific notification type. Only the current User can unsubscribe from a specific notification type. An AccessDeniedException message is sent if requests are made from other users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$NotificationType = "MyNotificationType" # String | 

# Unsubscribe from a specific notification type
try {
    $Result = Invoke-OktaUnsubscribeUserSubscriptionByNotificationType -UserId $UserId -NotificationType $NotificationType
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnsubscribeUserSubscriptionByNotificationType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

