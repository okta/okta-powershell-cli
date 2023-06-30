# Okta.PowerShell.Okta.PowerShell\Api.OktaAgentPoolsApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateAgentPoolsUpdate**](OktaAgentPoolsApi.md#Invoke-OktaActivateAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/activate | Activate an Agent Pool update
[**New-OktaAgentPoolsUpdate**](OktaAgentPoolsApi.md#New-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates | Create an Agent Pool update
[**Invoke-OktaDeactivateAgentPoolsUpdate**](OktaAgentPoolsApi.md#Invoke-OktaDeactivateAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/deactivate | Deactivate an Agent Pool update
[**Invoke-OktaDeleteAgentPoolsUpdate**](OktaAgentPoolsApi.md#Invoke-OktaDeleteAgentPoolsUpdate) | **DELETE** /api/v1/agentPools/{poolId}/updates/{updateId} | Delete an Agent Pool update
[**Get-OktaAgentPools**](OktaAgentPoolsApi.md#Get-OktaAgentPools) | **GET** /api/v1/agentPools | List all Agent Pools
[**Get-OktaAgentPoolsUpdateInstance**](OktaAgentPoolsApi.md#Get-OktaAgentPoolsUpdateInstance) | **GET** /api/v1/agentPools/{poolId}/updates/{updateId} | Retrieve an Agent Pool update by id
[**Get-OktaAgentPoolsUpdateSettings**](OktaAgentPoolsApi.md#Get-OktaAgentPoolsUpdateSettings) | **GET** /api/v1/agentPools/{poolId}/updates/settings | Retrieve an Agent Pool update&#39;s settings
[**Get-OktaAgentPoolsUpdates**](OktaAgentPoolsApi.md#Get-OktaAgentPoolsUpdates) | **GET** /api/v1/agentPools/{poolId}/updates | List all Agent Pool updates
[**Suspend-OktaAgentPoolsUpdate**](OktaAgentPoolsApi.md#Suspend-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/pause | Pause an Agent Pool update
[**Resume-OktaAgentPoolsUpdate**](OktaAgentPoolsApi.md#Resume-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/resume | Resume an Agent Pool update
[**Invoke-OktaRetryAgentPoolsUpdate**](OktaAgentPoolsApi.md#Invoke-OktaRetryAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/retry | Retry an Agent Pool update
[**Set-OktaAgentPoolsUpdateSettings**](OktaAgentPoolsApi.md#Set-OktaAgentPoolsUpdateSettings) | **POST** /api/v1/agentPools/{poolId}/updates/settings | Update an Agent Pool update settings
[**Stop-OktaAgentPoolsUpdate**](OktaAgentPoolsApi.md#Stop-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId}/stop | Stop an Agent Pool update
[**Update-OktaAgentPoolsUpdate**](OktaAgentPoolsApi.md#Update-OktaAgentPoolsUpdate) | **POST** /api/v1/agentPools/{poolId}/updates/{updateId} | Update an Agent Pool update by id


<a id="Invoke-OktaActivateAgentPoolsUpdate"></a>
# **Invoke-OktaActivateAgentPoolsUpdate**
> AgentPoolUpdate Invoke-OktaActivateAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Activate an Agent Pool update

Activates scheduled Agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Activate an Agent Pool update
try {
    $Result = Invoke-OktaActivateAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaAgentPoolsUpdate"></a>
# **New-OktaAgentPoolsUpdate**
> AgentPoolUpdate New-OktaAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentPoolUpdate] <PSCustomObject><br>

Create an Agent Pool update

Creates an Agent pool update \n For user flow 2 manual update, starts the update immediately. \n For user flow 3, schedules the update based on the configured update window and delay.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$Agent = Initialize-Agent -Id "MyId" -IsHidden $false -IsLatestGAedVersion $false -LastConnection (Get-Date) -Name "MyName" -OperationalStatus "DEGRADED" -PoolId "MyPoolId" -Type "AD" -UpdateMessage "MyUpdateMessage" -UpdateStatus "Cancelled" -Version "MyVersion" -Links $HrefObject

$AutoUpdateSchedule = Initialize-AutoUpdateSchedule -Cron "MyCron" -Delay 0 -Duration 0 -LastUpdated (Get-Date) -Timezone "MyTimezone"
$AgentPoolUpdate = Initialize-AgentPoolUpdate -Agents $Agent -AgentType "AD" -Enabled $false -Id "MyId" -Name "MyName" -NotifyAdmin $false -Reason "MyReason" -Schedule $AutoUpdateSchedule -SortOrder 0 -Status "Cancelled" -TargetVersion "MyTargetVersion" -Links $HrefObject # AgentPoolUpdate | 

# Create an Agent Pool update
try {
    $Result = New-OktaAgentPoolsUpdate -PoolId $PoolId -AgentPoolUpdate $AgentPoolUpdate
} catch {
    Write-Host ("Exception occurred when calling New-OktaAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateAgentPoolsUpdate"></a>
# **Invoke-OktaDeactivateAgentPoolsUpdate**
> AgentPoolUpdate Invoke-OktaDeactivateAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Deactivate an Agent Pool update

Deactivates scheduled Agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Deactivate an Agent Pool update
try {
    $Result = Invoke-OktaDeactivateAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteAgentPoolsUpdate"></a>
# **Invoke-OktaDeleteAgentPoolsUpdate**
> void Invoke-OktaDeleteAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Delete an Agent Pool update

Deletes Agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Delete an Agent Pool update
try {
    $Result = Invoke-OktaDeleteAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAgentPools"></a>
# **Get-OktaAgentPools**
> AgentPool[] Get-OktaAgentPools<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LimitPerPoolType] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Agent Pools

Fetches AgentPools based on request parameters for a given org

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$LimitPerPoolType = 56 # Int32 | Maximum number of AgentPools being returned (optional) (default to 5)
$PoolType = "AD" # AgentType | Agent type to search for (optional)
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Agent Pools
try {
    $Result = Get-OktaAgentPools -LimitPerPoolType $LimitPerPoolType -PoolType $PoolType -After $After
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAgentPools: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAgentPoolsUpdateInstance"></a>
# **Get-OktaAgentPoolsUpdateInstance**
> AgentPoolUpdate Get-OktaAgentPoolsUpdateInstance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Retrieve an Agent Pool update by id

Gets Agent pool update from updateId

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Retrieve an Agent Pool update by id
try {
    $Result = Get-OktaAgentPoolsUpdateInstance -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAgentPoolsUpdateInstance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAgentPoolsUpdateSettings"></a>
# **Get-OktaAgentPoolsUpdateSettings**
> AgentPoolUpdateSetting Get-OktaAgentPoolsUpdateSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>

Retrieve an Agent Pool update's settings

Gets the current state of the agent pool update instance settings

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply

# Retrieve an Agent Pool update's settings
try {
    $Result = Get-OktaAgentPoolsUpdateSettings -PoolId $PoolId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAgentPoolsUpdateSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAgentPoolsUpdates"></a>
# **Get-OktaAgentPoolsUpdates**
> AgentPoolUpdate[] Get-OktaAgentPoolsUpdates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scheduled] <System.Nullable[Boolean]><br>

List all Agent Pool updates

Gets List of Agent pool updates

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$Scheduled = $true # Boolean | Scope the list only to scheduled or ad-hoc updates. If the parameter is not provided we will return the whole list of updates. (optional)

# List all Agent Pool updates
try {
    $Result = Get-OktaAgentPoolsUpdates -PoolId $PoolId -Scheduled $Scheduled
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAgentPoolsUpdates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Suspend-OktaAgentPoolsUpdate"></a>
# **Suspend-OktaAgentPoolsUpdate**
> AgentPoolUpdate Suspend-OktaAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Pause an Agent Pool update

Pauses running or queued Agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Pause an Agent Pool update
try {
    $Result = Suspend-OktaAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Suspend-OktaAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Resume-OktaAgentPoolsUpdate"></a>
# **Resume-OktaAgentPoolsUpdate**
> AgentPoolUpdate Resume-OktaAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Resume an Agent Pool update

Resumes running or queued Agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Resume an Agent Pool update
try {
    $Result = Resume-OktaAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Resume-OktaAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRetryAgentPoolsUpdate"></a>
# **Invoke-OktaRetryAgentPoolsUpdate**
> AgentPoolUpdate Invoke-OktaRetryAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Retry an Agent Pool update

Retries Agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Retry an Agent Pool update
try {
    $Result = Invoke-OktaRetryAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRetryAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Set-OktaAgentPoolsUpdateSettings"></a>
# **Set-OktaAgentPoolsUpdateSettings**
> AgentPoolUpdateSetting Set-OktaAgentPoolsUpdateSettings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentPoolUpdateSetting] <PSCustomObject><br>

Update an Agent Pool update settings

Updates Agent pool update settings

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$AgentPoolUpdateSetting = Initialize-AgentPoolUpdateSetting -AgentType "AD" -ContinueOnError $false -LatestVersion "MyLatestVersion" -MinimalSupportedVersion "MyMinimalSupportedVersion" -PoolId "MyPoolId" -PoolName "MyPoolName" -ReleaseChannel "BETA" # AgentPoolUpdateSetting | 

# Update an Agent Pool update settings
try {
    $Result = Set-OktaAgentPoolsUpdateSettings -PoolId $PoolId -AgentPoolUpdateSetting $AgentPoolUpdateSetting
} catch {
    Write-Host ("Exception occurred when calling Set-OktaAgentPoolsUpdateSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Stop-OktaAgentPoolsUpdate"></a>
# **Stop-OktaAgentPoolsUpdate**
> AgentPoolUpdate Stop-OktaAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>

Stop an Agent Pool update

Stops Agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update

# Stop an Agent Pool update
try {
    $Result = Stop-OktaAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId
} catch {
    Write-Host ("Exception occurred when calling Stop-OktaAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaAgentPoolsUpdate"></a>
# **Update-OktaAgentPoolsUpdate**
> AgentPoolUpdate Update-OktaAgentPoolsUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PoolId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AgentPoolUpdate] <PSCustomObject><br>

Update an Agent Pool update by id

Updates Agent pool update and return latest agent pool update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PoolId = "MyPoolId" # String | Id of the agent pool for which the settings will apply
$UpdateId = "MyUpdateId" # String | Id of the update
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$Agent = Initialize-Agent -Id "MyId" -IsHidden $false -IsLatestGAedVersion $false -LastConnection (Get-Date) -Name "MyName" -OperationalStatus "DEGRADED" -PoolId "MyPoolId" -Type "AD" -UpdateMessage "MyUpdateMessage" -UpdateStatus "Cancelled" -Version "MyVersion" -Links $HrefObject

$AutoUpdateSchedule = Initialize-AutoUpdateSchedule -Cron "MyCron" -Delay 0 -Duration 0 -LastUpdated (Get-Date) -Timezone "MyTimezone"
$AgentPoolUpdate = Initialize-AgentPoolUpdate -Agents $Agent -AgentType "AD" -Enabled $false -Id "MyId" -Name "MyName" -NotifyAdmin $false -Reason "MyReason" -Schedule $AutoUpdateSchedule -SortOrder 0 -Status "Cancelled" -TargetVersion "MyTargetVersion" -Links $HrefObject # AgentPoolUpdate | 

# Update an Agent Pool update by id
try {
    $Result = Update-OktaAgentPoolsUpdate -PoolId $PoolId -UpdateId $UpdateId -AgentPoolUpdate $AgentPoolUpdate
} catch {
    Write-Host ("Exception occurred when calling Update-OktaAgentPoolsUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

