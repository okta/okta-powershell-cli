# Okta.PowerShell.Okta.PowerShell\Api.OktaEventHookApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateEventHook**](OktaEventHookApi.md#Invoke-OktaActivateEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/activate | Activate an Event Hook
[**New-OktaEventHook**](OktaEventHookApi.md#New-OktaEventHook) | **POST** /api/v1/eventHooks | Create an Event Hook
[**Invoke-OktaDeactivateEventHook**](OktaEventHookApi.md#Invoke-OktaDeactivateEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/deactivate | Deactivate an Event Hook
[**Invoke-OktaDeleteEventHook**](OktaEventHookApi.md#Invoke-OktaDeleteEventHook) | **DELETE** /api/v1/eventHooks/{eventHookId} | Delete an Event Hook
[**Get-OktaEventHook**](OktaEventHookApi.md#Get-OktaEventHook) | **GET** /api/v1/eventHooks/{eventHookId} | Retrieve an Event Hook
[**Invoke-OktaListEventHooks**](OktaEventHookApi.md#Invoke-OktaListEventHooks) | **GET** /api/v1/eventHooks | List all Event Hooks
[**Update-OktaEventHook**](OktaEventHookApi.md#Update-OktaEventHook) | **PUT** /api/v1/eventHooks/{eventHookId} | Replace an Event Hook
[**Test-OktaEventHook**](OktaEventHookApi.md#Test-OktaEventHook) | **POST** /api/v1/eventHooks/{eventHookId}/lifecycle/verify | Verify an Event Hook


<a id="Invoke-OktaActivateEventHook"></a>
# **Invoke-OktaActivateEventHook**
> EventHook Invoke-OktaActivateEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Activate an Event Hook

Activates an event hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EventHookId = "MyEventHookId" # String | 

# Activate an Event Hook
try {
    $Result = Invoke-OktaActivateEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaEventHook"></a>
# **New-OktaEventHook**
> EventHook New-OktaEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHook] <PSCustomObject><br>

Create an Event Hook

Creates an event hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EventHookChannelConfigAuthScheme = Initialize-OktaEventHookChannelConfigAuthScheme -Key "MyKey" -Type "HEADER" -Value "MyValue"
$EventHookChannelConfigHeader = Initialize-OktaEventHookChannelConfigHeader -Key "MyKey" -Value "MyValue"
$EventHookChannelConfig = Initialize-OktaEventHookChannelConfig -AuthScheme $EventHookChannelConfigAuthScheme -Headers $EventHookChannelConfigHeader -Uri "MyUri"

$EventHookChannel = Initialize-OktaEventHookChannel -Config $EventHookChannelConfig -Type "HTTP" -Version "MyVersion"

$EventSubscriptions = Initialize-OktaEventSubscriptions -Items "MyItems" -Type "EVENT_TYPE"
$EventHook = Initialize-OktaEventHook -Channel $EventHookChannel -Created (Get-Date) -CreatedBy "MyCreatedBy" -Events $EventSubscriptions -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -VerificationStatus "UNVERIFIED" -Links @{ key_example =  } # EventHook | 

# Create an Event Hook
try {
    $Result = New-OktaEventHook -EventHook $EventHook
} catch {
    Write-Host ("Exception occurred when calling New-OktaEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHook** | [**EventHook**](EventHook.md)|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateEventHook"></a>
# **Invoke-OktaDeactivateEventHook**
> EventHook Invoke-OktaDeactivateEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Deactivate an Event Hook

Deactivates an event hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EventHookId = "MyEventHookId" # String | 

# Deactivate an Event Hook
try {
    $Result = Invoke-OktaDeactivateEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteEventHook"></a>
# **Invoke-OktaDeleteEventHook**
> void Invoke-OktaDeleteEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Delete an Event Hook

Deletes an event hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EventHookId = "MyEventHookId" # String | 

# Delete an Event Hook
try {
    $Result = Invoke-OktaDeleteEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaEventHook"></a>
# **Get-OktaEventHook**
> EventHook Get-OktaEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Retrieve an Event Hook

Retrieves an event hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EventHookId = "MyEventHookId" # String | 

# Retrieve an Event Hook
try {
    $Result = Get-OktaEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListEventHooks"></a>
# **Invoke-OktaListEventHooks**
> EventHook[] Invoke-OktaListEventHooks<br>

List all Event Hooks

Lists all event hooks

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all Event Hooks
try {
    $Result = Invoke-OktaListEventHooks
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListEventHooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EventHook[]**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaEventHook"></a>
# **Update-OktaEventHook**
> EventHook Update-OktaEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHook] <PSCustomObject><br>

Replace an Event Hook

Replaces an event hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EventHookId = "MyEventHookId" # String | 
$EventHookChannelConfigAuthScheme = Initialize-OktaEventHookChannelConfigAuthScheme -Key "MyKey" -Type "HEADER" -Value "MyValue"
$EventHookChannelConfigHeader = Initialize-OktaEventHookChannelConfigHeader -Key "MyKey" -Value "MyValue"
$EventHookChannelConfig = Initialize-OktaEventHookChannelConfig -AuthScheme $EventHookChannelConfigAuthScheme -Headers $EventHookChannelConfigHeader -Uri "MyUri"

$EventHookChannel = Initialize-OktaEventHookChannel -Config $EventHookChannelConfig -Type "HTTP" -Version "MyVersion"

$EventSubscriptions = Initialize-OktaEventSubscriptions -Items "MyItems" -Type "EVENT_TYPE"
$EventHook = Initialize-OktaEventHook -Channel $EventHookChannel -Created (Get-Date) -CreatedBy "MyCreatedBy" -Events $EventSubscriptions -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -VerificationStatus "UNVERIFIED" -Links @{ key_example =  } # EventHook | 

# Replace an Event Hook
try {
    $Result = Update-OktaEventHook -EventHookId $EventHookId -EventHook $EventHook
} catch {
    Write-Host ("Exception occurred when calling Update-OktaEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 
 **EventHook** | [**EventHook**](EventHook.md)|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-OktaEventHook"></a>
# **Test-OktaEventHook**
> EventHook Test-OktaEventHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventHookId] <String><br>

Verify an Event Hook

Verifies an event hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$EventHookId = "MyEventHookId" # String | 

# Verify an Event Hook
try {
    $Result = Test-OktaEventHook -EventHookId $EventHookId
} catch {
    Write-Host ("Exception occurred when calling Test-OktaEventHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EventHookId** | **String**|  | 

### Return type

[**EventHook**](EventHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

