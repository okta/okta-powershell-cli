# Okta.PowerShell.Okta.PowerShell\Api.OktaBehaviorApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateBehaviorDetectionRule**](OktaBehaviorApi.md#Invoke-OktaActivateBehaviorDetectionRule) | **POST** /api/v1/behaviors/{behaviorId}/lifecycle/activate | Activate a Behavior Detection Rule
[**New-OktaBehaviorDetectionRule**](OktaBehaviorApi.md#New-OktaBehaviorDetectionRule) | **POST** /api/v1/behaviors | Create a Behavior Detection Rule
[**Invoke-OktaDeactivateBehaviorDetectionRule**](OktaBehaviorApi.md#Invoke-OktaDeactivateBehaviorDetectionRule) | **POST** /api/v1/behaviors/{behaviorId}/lifecycle/deactivate | Deactivate a Behavior Detection Rule
[**Invoke-OktaDeleteBehaviorDetectionRule**](OktaBehaviorApi.md#Invoke-OktaDeleteBehaviorDetectionRule) | **DELETE** /api/v1/behaviors/{behaviorId} | Delete a Behavior Detection Rule
[**Get-OktaBehaviorDetectionRule**](OktaBehaviorApi.md#Get-OktaBehaviorDetectionRule) | **GET** /api/v1/behaviors/{behaviorId} | Retrieve a Behavior Detection Rule
[**Invoke-OktaListBehaviorDetectionRules**](OktaBehaviorApi.md#Invoke-OktaListBehaviorDetectionRules) | **GET** /api/v1/behaviors | List all Behavior Detection Rules
[**Update-OktaBehaviorDetectionRule**](OktaBehaviorApi.md#Update-OktaBehaviorDetectionRule) | **PUT** /api/v1/behaviors/{behaviorId} | Replace a Behavior Detection Rule


<a id="Invoke-OktaActivateBehaviorDetectionRule"></a>
# **Invoke-OktaActivateBehaviorDetectionRule**
> BehaviorRule Invoke-OktaActivateBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Activate a Behavior Detection Rule

Activate Behavior Detection Rule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Activate a Behavior Detection Rule
try {
    $Result = Invoke-OktaActivateBehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BehaviorId** | **String**| id of the Behavior Detection Rule | 

### Return type

[**BehaviorRule**](BehaviorRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaBehaviorDetectionRule"></a>
# **New-OktaBehaviorDetectionRule**
> BehaviorRule New-OktaBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Rule] <PSCustomObject><br>

Create a Behavior Detection Rule

Adds a new Behavior Detection Rule to your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$BehaviorRule = Initialize-BehaviorRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "ANOMALOUS_DEVICE" -Link $ApiTokenLink # BehaviorRule | 

# Create a Behavior Detection Rule
try {
    $Result = New-OktaBehaviorDetectionRule -Rule $Rule
} catch {
    Write-Host ("Exception occurred when calling New-OktaBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Rule** | [**BehaviorRule**](BehaviorRule.md)|  | 

### Return type

[**BehaviorRule**](BehaviorRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateBehaviorDetectionRule"></a>
# **Invoke-OktaDeactivateBehaviorDetectionRule**
> BehaviorRule Invoke-OktaDeactivateBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Deactivate a Behavior Detection Rule

Deactivate Behavior Detection Rule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Deactivate a Behavior Detection Rule
try {
    $Result = Invoke-OktaDeactivateBehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BehaviorId** | **String**| id of the Behavior Detection Rule | 

### Return type

[**BehaviorRule**](BehaviorRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteBehaviorDetectionRule"></a>
# **Invoke-OktaDeleteBehaviorDetectionRule**
> void Invoke-OktaDeleteBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Delete a Behavior Detection Rule

Delete a Behavior Detection Rule by `behaviorId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Delete a Behavior Detection Rule
try {
    $Result = Invoke-OktaDeleteBehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BehaviorId** | **String**| id of the Behavior Detection Rule | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaBehaviorDetectionRule"></a>
# **Get-OktaBehaviorDetectionRule**
> BehaviorRule Get-OktaBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Retrieve a Behavior Detection Rule

Fetches a Behavior Detection Rule by `behaviorId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Retrieve a Behavior Detection Rule
try {
    $Result = Get-OktaBehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BehaviorId** | **String**| id of the Behavior Detection Rule | 

### Return type

[**BehaviorRule**](BehaviorRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListBehaviorDetectionRules"></a>
# **Invoke-OktaListBehaviorDetectionRules**
> BehaviorRule[] Invoke-OktaListBehaviorDetectionRules<br>

List all Behavior Detection Rules

Enumerates Behavior Detection Rules in your organization with pagination.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all Behavior Detection Rules
try {
    $Result = Invoke-OktaListBehaviorDetectionRules
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListBehaviorDetectionRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BehaviorRule[]**](BehaviorRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaBehaviorDetectionRule"></a>
# **Update-OktaBehaviorDetectionRule**
> BehaviorRule Update-OktaBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Rule] <PSCustomObject><br>

Replace a Behavior Detection Rule

Update a Behavior Detection Rule by `behaviorId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$BehaviorRule = Initialize-BehaviorRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "ANOMALOUS_DEVICE" -Link $ApiTokenLink # BehaviorRule | 

# Replace a Behavior Detection Rule
try {
    $Result = Update-OktaBehaviorDetectionRule -BehaviorId $BehaviorId -Rule $Rule
} catch {
    Write-Host ("Exception occurred when calling Update-OktaBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BehaviorId** | **String**| id of the Behavior Detection Rule | 
 **Rule** | [**BehaviorRule**](BehaviorRule.md)|  | 

### Return type

[**BehaviorRule**](BehaviorRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

