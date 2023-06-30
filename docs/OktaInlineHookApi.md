# Okta.PowerShell.Okta.PowerShell\Api.OktaInlineHookApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateInlineHook**](OktaInlineHookApi.md#Invoke-OktaActivateInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/lifecycle/activate | Activate an Inline Hook
[**New-OktaInlineHook**](OktaInlineHookApi.md#New-OktaInlineHook) | **POST** /api/v1/inlineHooks | Create an Inline Hook
[**Invoke-OktaDeactivateInlineHook**](OktaInlineHookApi.md#Invoke-OktaDeactivateInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/lifecycle/deactivate | Deactivate an Inline Hook
[**Invoke-OktaDeleteInlineHook**](OktaInlineHookApi.md#Invoke-OktaDeleteInlineHook) | **DELETE** /api/v1/inlineHooks/{inlineHookId} | Delete an Inline Hook
[**Invoke-OktaExecuteInlineHook**](OktaInlineHookApi.md#Invoke-OktaExecuteInlineHook) | **POST** /api/v1/inlineHooks/{inlineHookId}/execute | Execute an Inline Hook
[**Get-OktaInlineHook**](OktaInlineHookApi.md#Get-OktaInlineHook) | **GET** /api/v1/inlineHooks/{inlineHookId} | Retrieve an Inline Hook
[**Invoke-OktaListInlineHooks**](OktaInlineHookApi.md#Invoke-OktaListInlineHooks) | **GET** /api/v1/inlineHooks | List all Inline Hooks
[**Update-OktaInlineHook**](OktaInlineHookApi.md#Update-OktaInlineHook) | **PUT** /api/v1/inlineHooks/{inlineHookId} | Replace an Inline Hook


<a id="Invoke-OktaActivateInlineHook"></a>
# **Invoke-OktaActivateInlineHook**
> InlineHook Invoke-OktaActivateInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Activate an Inline Hook

Activates the inline hook by `inlineHookId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$InlineHookId = "MyInlineHookId" # String | 

# Activate an Inline Hook
try {
    $Result = Invoke-OktaActivateInlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaInlineHook"></a>
# **New-OktaInlineHook**
> InlineHook New-OktaInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHook] <PSCustomObject><br>

Create an Inline Hook

Creates an inline hook

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$InlineHookChannel = Initialize-InlineHookChannel -Type "HTTP" -Version "MyVersion"
$InlineHook = Initialize-InlineHook -Channel $InlineHookChannel -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "com.okta.import.transform" -Version "MyVersion" -Links @{ key_example =  } # InlineHook | 

# Create an Inline Hook
try {
    $Result = New-OktaInlineHook -InlineHook $InlineHook
} catch {
    Write-Host ("Exception occurred when calling New-OktaInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHook** | [**InlineHook**](InlineHook.md)|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateInlineHook"></a>
# **Invoke-OktaDeactivateInlineHook**
> InlineHook Invoke-OktaDeactivateInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Deactivate an Inline Hook

Deactivates the inline hook by `inlineHookId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$InlineHookId = "MyInlineHookId" # String | 

# Deactivate an Inline Hook
try {
    $Result = Invoke-OktaDeactivateInlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteInlineHook"></a>
# **Invoke-OktaDeleteInlineHook**
> void Invoke-OktaDeleteInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Delete an Inline Hook

Deletes an inline hook by `inlineHookId`. Once deleted, the Inline Hook is unrecoverable. As a safety precaution, only Inline Hooks with a status of INACTIVE are eligible for deletion.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$InlineHookId = "MyInlineHookId" # String | 

# Delete an Inline Hook
try {
    $Result = Invoke-OktaDeleteInlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaExecuteInlineHook"></a>
# **Invoke-OktaExecuteInlineHook**
> InlineHookResponse Invoke-OktaExecuteInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PayloadData] <SystemCollectionsHashtable><br>

Execute an Inline Hook

Executes the inline hook by `inlineHookId` using the request body as the input. This will send the provided data through the Channel and return a response if it matches the correct data contract. This execution endpoint should only be used for testing purposes.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$InlineHookId = "MyInlineHookId" # String | 
$PayloadData = @{ key_example = ... } # SystemCollectionsHashtable | 

# Execute an Inline Hook
try {
    $Result = Invoke-OktaExecuteInlineHook -InlineHookId $InlineHookId -PayloadData $PayloadData
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaExecuteInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 
 **PayloadData** | **SystemCollectionsHashtable**|  | 

### Return type

[**InlineHookResponse**](InlineHookResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaInlineHook"></a>
# **Get-OktaInlineHook**
> InlineHook Get-OktaInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>

Retrieve an Inline Hook

Retrieves an inline hook by `inlineHookId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$InlineHookId = "MyInlineHookId" # String | 

# Retrieve an Inline Hook
try {
    $Result = Get-OktaInlineHook -InlineHookId $InlineHookId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListInlineHooks"></a>
# **Invoke-OktaListInlineHooks**
> InlineHook[] Invoke-OktaListInlineHooks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

List all Inline Hooks

Lists all inline hooks

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$Type = "MyType" # String |  (optional)

# List all Inline Hooks
try {
    $Result = Invoke-OktaListInlineHooks -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListInlineHooks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | **String**|  | [optional] 

### Return type

[**InlineHook[]**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaInlineHook"></a>
# **Update-OktaInlineHook**
> InlineHook Update-OktaInlineHook<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHookId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InlineHook] <PSCustomObject><br>

Replace an Inline Hook

Replaces an inline hook by `inlineHookId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$InlineHookId = "MyInlineHookId" # String | 
$InlineHookChannel = Initialize-InlineHookChannel -Type "HTTP" -Version "MyVersion"
$InlineHook = Initialize-InlineHook -Channel $InlineHookChannel -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "com.okta.import.transform" -Version "MyVersion" -Links @{ key_example =  } # InlineHook | 

# Replace an Inline Hook
try {
    $Result = Update-OktaInlineHook -InlineHookId $InlineHookId -InlineHook $InlineHook
} catch {
    Write-Host ("Exception occurred when calling Update-OktaInlineHook: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InlineHookId** | **String**|  | 
 **InlineHook** | [**InlineHook**](InlineHook.md)|  | 

### Return type

[**InlineHook**](InlineHook.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

