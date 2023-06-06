# PSOpenAPITools.PSOpenAPITools\Api.BehaviorApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateBehaviorDetectionRule**](BehaviorApi.md#Invoke-ActivateBehaviorDetectionRule) | **POST** /api/v1/behaviors/{behaviorId}/lifecycle/activate | Activate a Behavior Detection Rule
[**New-BehaviorDetectionRule**](BehaviorApi.md#New-BehaviorDetectionRule) | **POST** /api/v1/behaviors | Create a Behavior Detection Rule
[**Invoke-DeactivateBehaviorDetectionRule**](BehaviorApi.md#Invoke-DeactivateBehaviorDetectionRule) | **POST** /api/v1/behaviors/{behaviorId}/lifecycle/deactivate | Deactivate a Behavior Detection Rule
[**Invoke-DeleteBehaviorDetectionRule**](BehaviorApi.md#Invoke-DeleteBehaviorDetectionRule) | **DELETE** /api/v1/behaviors/{behaviorId} | Delete a Behavior Detection Rule
[**Get-BehaviorDetectionRule**](BehaviorApi.md#Get-BehaviorDetectionRule) | **GET** /api/v1/behaviors/{behaviorId} | Retrieve a Behavior Detection Rule
[**Invoke-ListBehaviorDetectionRules**](BehaviorApi.md#Invoke-ListBehaviorDetectionRules) | **GET** /api/v1/behaviors | List all Behavior Detection Rules
[**Update-BehaviorDetectionRule**](BehaviorApi.md#Update-BehaviorDetectionRule) | **PUT** /api/v1/behaviors/{behaviorId} | Replace a Behavior Detection Rule


<a name="Invoke-ActivateBehaviorDetectionRule"></a>
# **Invoke-ActivateBehaviorDetectionRule**
> BehaviorRule Invoke-ActivateBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Activate a Behavior Detection Rule

Activate Behavior Detection Rule

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

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Activate a Behavior Detection Rule
try {
    $Result = Invoke-ActivateBehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="New-BehaviorDetectionRule"></a>
# **New-BehaviorDetectionRule**
> BehaviorRule New-BehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Rule] <PSCustomObject><br>

Create a Behavior Detection Rule

Adds a new Behavior Detection Rule to your organization.

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

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$BehaviorRule = Initialize-BehaviorRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "ANOMALOUS_DEVICE" -Link $ApiTokenLink # BehaviorRule | 

# Create a Behavior Detection Rule
try {
    $Result = New-BehaviorDetectionRule -Rule $Rule
} catch {
    Write-Host ("Exception occurred when calling New-BehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeactivateBehaviorDetectionRule"></a>
# **Invoke-DeactivateBehaviorDetectionRule**
> BehaviorRule Invoke-DeactivateBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Deactivate a Behavior Detection Rule

Deactivate Behavior Detection Rule

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

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Deactivate a Behavior Detection Rule
try {
    $Result = Invoke-DeactivateBehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteBehaviorDetectionRule"></a>
# **Invoke-DeleteBehaviorDetectionRule**
> void Invoke-DeleteBehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Delete a Behavior Detection Rule

Delete a Behavior Detection Rule by `behaviorId`.

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

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Delete a Behavior Detection Rule
try {
    $Result = Invoke-DeleteBehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-BehaviorDetectionRule"></a>
# **Get-BehaviorDetectionRule**
> BehaviorRule Get-BehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>

Retrieve a Behavior Detection Rule

Fetches a Behavior Detection Rule by `behaviorId`.

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

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule

# Retrieve a Behavior Detection Rule
try {
    $Result = Get-BehaviorDetectionRule -BehaviorId $BehaviorId
} catch {
    Write-Host ("Exception occurred when calling Get-BehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListBehaviorDetectionRules"></a>
# **Invoke-ListBehaviorDetectionRules**
> BehaviorRule[] Invoke-ListBehaviorDetectionRules<br>

List all Behavior Detection Rules

Enumerates Behavior Detection Rules in your organization with pagination.

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


# List all Behavior Detection Rules
try {
    $Result = Invoke-ListBehaviorDetectionRules
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListBehaviorDetectionRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-BehaviorDetectionRule"></a>
# **Update-BehaviorDetectionRule**
> BehaviorRule Update-BehaviorDetectionRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BehaviorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Rule] <PSCustomObject><br>

Replace a Behavior Detection Rule

Update a Behavior Detection Rule by `behaviorId`.

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

$BehaviorId = "abcd1234" # String | id of the Behavior Detection Rule
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ApiTokenLink = Initialize-ApiTokenLink -Self $HrefObject

$BehaviorRule = Initialize-BehaviorRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "ANOMALOUS_DEVICE" -Link $ApiTokenLink # BehaviorRule | 

# Replace a Behavior Detection Rule
try {
    $Result = Update-BehaviorDetectionRule -BehaviorId $BehaviorId -Rule $Rule
} catch {
    Write-Host ("Exception occurred when calling Update-BehaviorDetectionRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

