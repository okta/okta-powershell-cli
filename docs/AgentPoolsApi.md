# PSOpenAPITools.PSOpenAPITools\Api.AgentPoolsApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateAgentPoolsUpdate**](AgentPoolsApi.md#Invoke-ActivateAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/activate | Activate an Agent Pool update
[**New-AgentPoolsUpdate**](AgentPoolsApi.md#New-AgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates | Create an Agent Pool update
[**Invoke-DeactivateAgentPoolsUpdate**](AgentPoolsApi.md#Invoke-DeactivateAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/deactivate | Deactivate an Agent Pool update
[**Invoke-DeleteAgentPoolsUpdate**](AgentPoolsApi.md#Invoke-DeleteAgentPoolsUpdate) | **DELETE** /api/v1/agentPools/{poolId}/updates/{updateId} | Delete an Agent Pool update
[**Get-AgentPools**](AgentPoolsApi.md#Get-AgentPools) | **GET** /api/v1/agentPools | List all Agent Pools
[**Get-AgentPoolsUpdateInstance**](AgentPoolsApi.md#Get-AgentPoolsUpdateInstance) | **GET** /api/v1/agentPools/{poolId}/updates/{updateId} | Retrieve an Agent Pool update by id
[**Get-AgentPoolsUpdateSettings**](AgentPoolsApi.md#Get-AgentPoolsUpdateSettings) | **GET** /api/v1/agentPools/{poolId}/updates/settings | Retrieve an Agent Pool update&#39;s settings
[**Get-AgentPoolsUpdates**](AgentPoolsApi.md#Get-AgentPoolsUpdates) | **GET** /api/v1/agentPools/{poolId}/updates | List all Agent Pool updates
[**Suspend-AgentPoolsUpdate**](AgentPoolsApi.md#Suspend-AgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/pause | Pause an Agent Pool update
[**Resume-AgentPoolsUpdate**](AgentPoolsApi.md#Resume-AgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/resume | Resume an Agent Pool update
[**Invoke-RetryAgentPoolsUpdate**](AgentPoolsApi.md#Invoke-RetryAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/retry | Retry an Agent Pool update
[**Set-AgentPoolsUpdateSettings**](AgentPoolsApi.md#Set-AgentPoolsUpdateSettings) | **POST** /api/v1/agentPools/{poolId}/updates/settings | Update an Agent Pool update settings
[**Stop-AgentPoolsUpdate**](AgentPoolsApi.md#Stop-AgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/stop | Stop an Agent Pool update
[**Update-AgentPoolsUpdate**](AgentPoolsApi.md#Update-AgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId} | Update an Agent Pool update by id


<a name="Invoke-ActivateAgentPoolsUpdate"></a>
# **Invoke-ActivateAgentPoolsUpdate**
> AgentPoolUpdate Invoke-ActivateAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Activate an Agent Pool update

Activates scheduled Agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Activate an Agent Pool update
try {
    $Result = Invoke-ActivateAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-AgentPoolsUpdate"></a>
# **New-AgentPoolsUpdate**
> AgentPoolUpdate New-AgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentPoolUpdate] <PSCustomObject><br>

Create an Agent Pool update

Creates an Agent pool update \n For user flow 2 manual update, starts the update immediately. \n For user flow 3, schedules the update based on the configured update window and delay.

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$Agent = Initialize-Agent -Id "MyId" -IsHidden $false -IsLatestGAedVersion $false -LastConnection (Get-Date) -Name "MyName" -OperationalStatus "DEGRADED" -PoolId "MyPoolId" -Type "AD" -UpdateMessage "MyUpdateMessage" -UpdateStatus "Cancelled" -Version "MyVersion" -Links $HrefObject

$AutoUpdateSchedule = Initialize-AutoUpdateSchedule -Cron "MyCron" -Delay 0 -Duration 0 -LastUpdated (Get-Date) -Timezone "MyTimezone"
$AgentPoolUpdate = Initialize-AgentPoolUpdate -Agents $Agent -AgentType "AD" -Enabled $false -Id "MyId" -Name "MyName" -NotifyAdmin $false -Reason "MyReason" -Schedule $AutoUpdateSchedule -SortOrder 0 -Status "Cancelled" -TargetVersion "MyTargetVersion" -Links $HrefObject # AgentPoolUpdate | 

# Create an Agent Pool update
try {
    $Result = New-AgentPoolsUpdate -PoolId $PoolId -AgentPoolUpdate $AgentPoolUpdate
} catch {
    Write-Host ("Exception occurred when calling New-AgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **AgentPoolUpdate** | [**AgentPoolUpdate**](AgentPoolUpdate.md)|  | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateAgentPoolsUpdate"></a>
# **Invoke-DeactivateAgentPoolsUpdate**
> AgentPoolUpdate Invoke-DeactivateAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Deactivate an Agent Pool update

Deactivates scheduled Agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Deactivate an Agent Pool update
try {
    $Result = Invoke-DeactivateAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteAgentPoolsUpdate"></a>
# **Invoke-DeleteAgentPoolsUpdate**
> void Invoke-DeleteAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Delete an Agent Pool update

Deletes Agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Delete an Agent Pool update
try {
    $Result = Invoke-DeleteAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AgentPools"></a>
# **Get-AgentPools**
> AgentPool[] Get-AgentPools<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitPerPoolType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Agent Pools

Fetches AgentPools based on request parameters for a given org

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

$LimitPerPoolType = 56 # Int32 | Maximum number of AgentPools being returned (optional) (default to 5)
$PoolType = "AD" # AgentType | Agent type to search for (optional)
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Agent Pools
try {
    $Result = Get-AgentPools -LimitPerPoolType $LimitPerPoolType -PoolType $PoolType -After $After
} catch {
    Write-Host ("Exception occurred when calling Get-AgentPools: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LimitPerPoolType** | **Int32**| Maximum number of AgentPools being returned | [optional] [default to 5]
 **PoolType** | [**AgentType**](AgentType.md)| Agent type to search for | [optional] 
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 

### Return type

[**AgentPool[]**](AgentPool.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AgentPoolsUpdateInstance"></a>
# **Get-AgentPoolsUpdateInstance**
> AgentPoolUpdate Get-AgentPoolsUpdateInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Retrieve an Agent Pool update by id

Gets Agent pool update from updateId

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Retrieve an Agent Pool update by id
try {
    $Result = Get-AgentPoolsUpdateInstance -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Get-AgentPoolsUpdateInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AgentPoolsUpdateSettings"></a>
# **Get-AgentPoolsUpdateSettings**
> AgentPoolUpdateSetting Get-AgentPoolsUpdateSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

Retrieve an Agent Pool update's settings

Gets the current state of the agent pool update instance settings

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply

# Retrieve an Agent Pool update's settings
try {
    $Result = Get-AgentPoolsUpdateSettings -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Get-AgentPoolsUpdateSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 

### Return type

[**AgentPoolUpdateSetting**](AgentPoolUpdateSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AgentPoolsUpdates"></a>
# **Get-AgentPoolsUpdates**
> AgentPoolUpdate[] Get-AgentPoolsUpdates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scheduled] <System.Nullable[Boolean]><br>

List all Agent Pool updates

Gets List of Agent pool updates

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$Scheduled = $true # Boolean | Scope the list only to scheduled or ad-hoc updates. If the parameter is not provided we will return the whole list of updates. (optional)

# List all Agent Pool updates
try {
    $Result = Get-AgentPoolsUpdates -PoolId $PoolId -Scheduled $Scheduled
} catch {
    Write-Host ("Exception occurred when calling Get-AgentPoolsUpdates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **Scheduled** | **Boolean**| Scope the list only to scheduled or ad-hoc updates. If the parameter is not provided we will return the whole list of updates. | [optional] 

### Return type

[**AgentPoolUpdate[]**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Suspend-AgentPoolsUpdate"></a>
# **Suspend-AgentPoolsUpdate**
> AgentPoolUpdate Suspend-AgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Pause an Agent Pool update

Pauses running or queued Agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Pause an Agent Pool update
try {
    $Result = Suspend-AgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Suspend-AgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Resume-AgentPoolsUpdate"></a>
# **Resume-AgentPoolsUpdate**
> AgentPoolUpdate Resume-AgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Resume an Agent Pool update

Resumes running or queued Agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Resume an Agent Pool update
try {
    $Result = Resume-AgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Resume-AgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RetryAgentPoolsUpdate"></a>
# **Invoke-RetryAgentPoolsUpdate**
> AgentPoolUpdate Invoke-RetryAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Retry an Agent Pool update

Retries Agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Retry an Agent Pool update
try {
    $Result = Invoke-RetryAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-RetryAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-AgentPoolsUpdateSettings"></a>
# **Set-AgentPoolsUpdateSettings**
> AgentPoolUpdateSetting Set-AgentPoolsUpdateSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentPoolUpdateSetting] <PSCustomObject><br>

Update an Agent Pool update settings

Updates Agent pool update settings

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$AgentPoolUpdateSetting = Initialize-AgentPoolUpdateSetting -AgentType "AD" -ContinueOnError $false -LatestVersion "MyLatestVersion" -MinimalSupportedVersion "MyMinimalSupportedVersion" -PoolId "MyPoolId" -PoolName "MyPoolName" -ReleaseChannel "BETA" # AgentPoolUpdateSetting | 

# Update an Agent Pool update settings
try {
    $Result = Set-AgentPoolsUpdateSettings -PoolId $PoolId -AgentPoolUpdateSetting $AgentPoolUpdateSetting
} catch {
    Write-Host ("Exception occurred when calling Set-AgentPoolsUpdateSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **AgentPoolUpdateSetting** | [**AgentPoolUpdateSetting**](AgentPoolUpdateSetting.md)|  | 

### Return type

[**AgentPoolUpdateSetting**](AgentPoolUpdateSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Stop-AgentPoolsUpdate"></a>
# **Stop-AgentPoolsUpdate**
> AgentPoolUpdate Stop-AgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Stop an Agent Pool update

Stops Agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Stop an Agent Pool update
try {
    $Result = Stop-AgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Stop-AgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-AgentPoolsUpdate"></a>
# **Update-AgentPoolsUpdate**
> AgentPoolUpdate Update-AgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentPoolUpdate] <PSCustomObject><br>

Update an Agent Pool update by id

Updates Agent pool update and return latest agent pool update

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

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$Agent = Initialize-Agent -Id "MyId" -IsHidden $false -IsLatestGAedVersion $false -LastConnection (Get-Date) -Name "MyName" -OperationalStatus "DEGRADED" -PoolId "MyPoolId" -Type "AD" -UpdateMessage "MyUpdateMessage" -UpdateStatus "Cancelled" -Version "MyVersion" -Links $HrefObject

$AutoUpdateSchedule = Initialize-AutoUpdateSchedule -Cron "MyCron" -Delay 0 -Duration 0 -LastUpdated (Get-Date) -Timezone "MyTimezone"
$AgentPoolUpdate = Initialize-AgentPoolUpdate -Agents $Agent -AgentType "AD" -Enabled $false -Id "MyId" -Name "MyName" -NotifyAdmin $false -Reason "MyReason" -Schedule $AutoUpdateSchedule -SortOrder 0 -Status "Cancelled" -TargetVersion "MyTargetVersion" -Links $HrefObject # AgentPoolUpdate | 

# Update an Agent Pool update by id
try {
    $Result = Update-AgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId -AgentPoolUpdate $AgentPoolUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-AgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PoolId** | **String**| Id of the agent pool for which the settings will apply | 
 **UpdateId** | **String**| Id of the update | 
 **AgentPoolUpdate** | [**AgentPoolUpdate**](AgentPoolUpdate.md)|  | 

### Return type

[**AgentPoolUpdate**](AgentPoolUpdate.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

