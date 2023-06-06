# PSOpenAPITools.PSOpenAPITools\Api.PolicyApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivatePolicy**](PolicyApi.md#Invoke-ActivatePolicy) | **POST** /api/v1/policies/{policyId}/lifecycle/activate | Activate a Policy
[**Invoke-ActivatePolicyRule**](PolicyApi.md#Invoke-ActivatePolicyRule) | **POST** /api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/activate | Activate a Policy Rule
[**Copy-Policy**](PolicyApi.md#Copy-Policy) | **POST** /api/v1/policies/{policyId}/clone | Clone an existing policy
[**New-Policy**](PolicyApi.md#New-Policy) | **POST** /api/v1/policies | Create a Policy
[**New-PolicyRule**](PolicyApi.md#New-PolicyRule) | **POST** /api/v1/policies/{policyId}/rules | Create a Policy Rule
[**Invoke-DeactivatePolicy**](PolicyApi.md#Invoke-DeactivatePolicy) | **POST** /api/v1/policies/{policyId}/lifecycle/deactivate | Deactivate a Policy
[**Invoke-DeactivatePolicyRule**](PolicyApi.md#Invoke-DeactivatePolicyRule) | **POST** /api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate | Deactivate a Policy Rule
[**Invoke-DeletePolicy**](PolicyApi.md#Invoke-DeletePolicy) | **DELETE** /api/v1/policies/{policyId} | Delete a Policy
[**Invoke-DeletePolicyRule**](PolicyApi.md#Invoke-DeletePolicyRule) | **DELETE** /api/v1/policies/{policyId}/rules/{ruleId} | Delete a Policy Rule
[**Get-Policy**](PolicyApi.md#Get-Policy) | **GET** /api/v1/policies/{policyId} | Retrieve a Policy
[**Get-PolicyRule**](PolicyApi.md#Get-PolicyRule) | **GET** /api/v1/policies/{policyId}/rules/{ruleId} | Retrieve a Policy Rule
[**Invoke-ListPolicies**](PolicyApi.md#Invoke-ListPolicies) | **GET** /api/v1/policies | List all Policies
[**Invoke-ListPolicyRules**](PolicyApi.md#Invoke-ListPolicyRules) | **GET** /api/v1/policies/{policyId}/rules | List all Policy Rules
[**Update-Policy**](PolicyApi.md#Update-Policy) | **PUT** /api/v1/policies/{policyId} | Replace a Policy
[**Update-PolicyRule**](PolicyApi.md#Update-PolicyRule) | **PUT** /api/v1/policies/{policyId}/rules/{ruleId} | Replace a Policy Rule


<a name="Invoke-ActivatePolicy"></a>
# **Invoke-ActivatePolicy**
> void Invoke-ActivatePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Activate a Policy

Activates a policy.

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

$PolicyId = "MyPolicyId" # String | 

# Activate a Policy
try {
    $Result = Invoke-ActivatePolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivatePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ActivatePolicyRule"></a>
# **Invoke-ActivatePolicyRule**
> void Invoke-ActivatePolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Activate a Policy Rule

Activates a policy rule.

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

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Activate a Policy Rule
try {
    $Result = Invoke-ActivatePolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivatePolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **RuleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Copy-Policy"></a>
# **Copy-Policy**
> Policy Copy-Policy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Clone an existing policy

Clones an existing policy.

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

$PolicyId = "MyPolicyId" # String | 

# Clone an existing policy
try {
    $Result = Copy-Policy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Copy-Policy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 

### Return type

[**Policy**](Policy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Policy"></a>
# **New-Policy**
> Policy New-Policy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>

Create a Policy

Creates a policy.

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

$Policy = Initialize-Policy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } # Policy | 
$Activate = $true # Boolean |  (optional) (default to $true)

# Create a Policy
try {
    $Result = New-Policy -Policy $Policy -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling New-Policy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Policy** | [**Policy**](Policy.md)|  | 
 **Activate** | **Boolean**|  | [optional] [default to $true]

### Return type

[**Policy**](Policy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-PolicyRule"></a>
# **New-PolicyRule**
> PolicyRule New-PolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Create a Policy Rule

Creates a policy rule.

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

$PolicyId = "MyPolicyId" # String | 
$PolicyRule = Initialize-PolicyRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" # PolicyRule | 

# Create a Policy Rule
try {
    $Result = New-PolicyRule -PolicyId $PolicyId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling New-PolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **PolicyRule** | [**PolicyRule**](PolicyRule.md)|  | 

### Return type

[**PolicyRule**](PolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivatePolicy"></a>
# **Invoke-DeactivatePolicy**
> void Invoke-DeactivatePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Deactivate a Policy

Deactivates a policy.

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

$PolicyId = "MyPolicyId" # String | 

# Deactivate a Policy
try {
    $Result = Invoke-DeactivatePolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivatePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivatePolicyRule"></a>
# **Invoke-DeactivatePolicyRule**
> void Invoke-DeactivatePolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Deactivate a Policy Rule

Deactivates a policy rule.

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

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Deactivate a Policy Rule
try {
    $Result = Invoke-DeactivatePolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivatePolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **RuleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeletePolicy"></a>
# **Invoke-DeletePolicy**
> void Invoke-DeletePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Delete a Policy

Removes a policy.

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

$PolicyId = "MyPolicyId" # String | 

# Delete a Policy
try {
    $Result = Invoke-DeletePolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeletePolicyRule"></a>
# **Invoke-DeletePolicyRule**
> void Invoke-DeletePolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Delete a Policy Rule

Removes a policy rule.

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

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Delete a Policy Rule
try {
    $Result = Invoke-DeletePolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **RuleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Policy"></a>
# **Get-Policy**
> Policy Get-Policy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Policy

Gets a policy.

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

$PolicyId = "MyPolicyId" # String | 
$Expand = "MyExpand" # String |  (optional) (default to "")

# Retrieve a Policy
try {
    $Result = Get-Policy -PolicyId $PolicyId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-Policy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **Expand** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**Policy**](Policy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PolicyRule"></a>
# **Get-PolicyRule**
> PolicyRule Get-PolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Retrieve a Policy Rule

Gets a policy rule.

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

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Retrieve a Policy Rule
try {
    $Result = Get-PolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Get-PolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **RuleId** | **String**|  | 

### Return type

[**PolicyRule**](PolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListPolicies"></a>
# **Invoke-ListPolicies**
> Policy[] Invoke-ListPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Policies

Gets all policies with the specified type.

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

$Type = "MyType" # String | 
$Status = "MyStatus" # String |  (optional)
$Expand = "MyExpand" # String |  (optional) (default to "")

# List all Policies
try {
    $Result = Invoke-ListPolicies -Type $Type -Status $Status -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | **String**|  | 
 **Status** | **String**|  | [optional] 
 **Expand** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**Policy[]**](Policy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListPolicyRules"></a>
# **Invoke-ListPolicyRules**
> PolicyRule[] Invoke-ListPolicyRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

List all Policy Rules

Enumerates all policy rules.

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

$PolicyId = "MyPolicyId" # String | 

# List all Policy Rules
try {
    $Result = Invoke-ListPolicyRules -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListPolicyRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 

### Return type

[**PolicyRule[]**](PolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Policy"></a>
# **Update-Policy**
> Policy Update-Policy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>

Replace a Policy

Updates a policy.

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

$PolicyId = "MyPolicyId" # String | 
$Policy = Initialize-Policy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } # Policy | 

# Replace a Policy
try {
    $Result = Update-Policy -PolicyId $PolicyId -Policy $Policy
} catch {
    Write-Host ("Exception occurred when calling Update-Policy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **Policy** | [**Policy**](Policy.md)|  | 

### Return type

[**Policy**](Policy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-PolicyRule"></a>
# **Update-PolicyRule**
> PolicyRule Update-PolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Replace a Policy Rule

Updates a policy rule.

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

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 
$PolicyRule = Initialize-PolicyRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" # PolicyRule | 

# Replace a Policy Rule
try {
    $Result = Update-PolicyRule -PolicyId $PolicyId -RuleId $RuleId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling Update-PolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **RuleId** | **String**|  | 
 **PolicyRule** | [**PolicyRule**](PolicyRule.md)|  | 

### Return type

[**PolicyRule**](PolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

