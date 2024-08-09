# Okta.PowerShell.Okta.PowerShell/Api.OktaPolicyApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivatePolicy**](OktaPolicyApi.md#Invoke-OktaActivatePolicy) | **POST** /api/v1/policies/{policyId}/lifecycle/activate | Activate a Policy
[**Invoke-OktaActivatePolicyRule**](OktaPolicyApi.md#Invoke-OktaActivatePolicyRule) | **POST** /api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/activate | Activate a Policy Rule
[**Copy-OktaPolicy**](OktaPolicyApi.md#Copy-OktaPolicy) | **POST** /api/v1/policies/{policyId}/clone | Clone an existing policy
[**New-OktaPolicy**](OktaPolicyApi.md#New-OktaPolicy) | **POST** /api/v1/policies | Create a Policy
[**New-OktaPolicyRule**](OktaPolicyApi.md#New-OktaPolicyRule) | **POST** /api/v1/policies/{policyId}/rules | Create a Policy Rule
[**Invoke-OktaDeactivatePolicy**](OktaPolicyApi.md#Invoke-OktaDeactivatePolicy) | **POST** /api/v1/policies/{policyId}/lifecycle/deactivate | Deactivate a Policy
[**Invoke-OktaDeactivatePolicyRule**](OktaPolicyApi.md#Invoke-OktaDeactivatePolicyRule) | **POST** /api/v1/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate | Deactivate a Policy Rule
[**Invoke-OktaDeletePolicy**](OktaPolicyApi.md#Invoke-OktaDeletePolicy) | **DELETE** /api/v1/policies/{policyId} | Delete a Policy
[**Invoke-OktaDeletePolicyRule**](OktaPolicyApi.md#Invoke-OktaDeletePolicyRule) | **DELETE** /api/v1/policies/{policyId}/rules/{ruleId} | Delete a Policy Rule
[**Get-OktaPolicy**](OktaPolicyApi.md#Get-OktaPolicy) | **GET** /api/v1/policies/{policyId} | Retrieve a Policy
[**Get-OktaPolicyRule**](OktaPolicyApi.md#Get-OktaPolicyRule) | **GET** /api/v1/policies/{policyId}/rules/{ruleId} | Retrieve a Policy Rule
[**Invoke-OktaListPolicies**](OktaPolicyApi.md#Invoke-OktaListPolicies) | **GET** /api/v1/policies | List all Policies
[**Invoke-OktaListPolicyRules**](OktaPolicyApi.md#Invoke-OktaListPolicyRules) | **GET** /api/v1/policies/{policyId}/rules | List all Policy Rules
[**Update-OktaPolicy**](OktaPolicyApi.md#Update-OktaPolicy) | **PUT** /api/v1/policies/{policyId} | Replace a Policy
[**Update-OktaPolicyRule**](OktaPolicyApi.md#Update-OktaPolicyRule) | **PUT** /api/v1/policies/{policyId}/rules/{ruleId} | Replace a Policy Rule


<a id="Invoke-OktaActivatePolicy"></a>
# **Invoke-OktaActivatePolicy**
> void Invoke-OktaActivatePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Activate a Policy

Activates a policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 

# Activate a Policy
try {
    $Result = Invoke-OktaActivatePolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivatePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaActivatePolicyRule"></a>
# **Invoke-OktaActivatePolicyRule**
> void Invoke-OktaActivatePolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Activate a Policy Rule

Activates a policy rule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Activate a Policy Rule
try {
    $Result = Invoke-OktaActivatePolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivatePolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Copy-OktaPolicy"></a>
# **Copy-OktaPolicy**
> Policy Copy-OktaPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Clone an existing policy

Clones an existing policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 

# Clone an existing policy
try {
    $Result = Copy-OktaPolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Copy-OktaPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaPolicy"></a>
# **New-OktaPolicy**
> Policy New-OktaPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>

Create a Policy

Creates a policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Policy = Initialize-Policy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } # Policy | 
$Activate = $true # Boolean |  (optional) (default to $true)

# Create a Policy
try {
    $Result = New-OktaPolicy -Policy $Policy -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling New-OktaPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaPolicyRule"></a>
# **New-OktaPolicyRule**
> PolicyRule New-OktaPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Create a Policy Rule

Creates a policy rule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$PolicyRule = Initialize-PolicyRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" # PolicyRule | 

# Create a Policy Rule
try {
    $Result = New-OktaPolicyRule -PolicyId $PolicyId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling New-OktaPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivatePolicy"></a>
# **Invoke-OktaDeactivatePolicy**
> void Invoke-OktaDeactivatePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Deactivate a Policy

Deactivates a policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 

# Deactivate a Policy
try {
    $Result = Invoke-OktaDeactivatePolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivatePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivatePolicyRule"></a>
# **Invoke-OktaDeactivatePolicyRule**
> void Invoke-OktaDeactivatePolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Deactivate a Policy Rule

Deactivates a policy rule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Deactivate a Policy Rule
try {
    $Result = Invoke-OktaDeactivatePolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivatePolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeletePolicy"></a>
# **Invoke-OktaDeletePolicy**
> void Invoke-OktaDeletePolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Delete a Policy

Removes a policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 

# Delete a Policy
try {
    $Result = Invoke-OktaDeletePolicy -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeletePolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeletePolicyRule"></a>
# **Invoke-OktaDeletePolicyRule**
> void Invoke-OktaDeletePolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Delete a Policy Rule

Removes a policy rule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Delete a Policy Rule
try {
    $Result = Invoke-OktaDeletePolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeletePolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaPolicy"></a>
# **Get-OktaPolicy**
> Policy Get-OktaPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Policy

Gets a policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$Expand = "MyExpand" # String |  (optional) (default to "")

# Retrieve a Policy
try {
    $Result = Get-OktaPolicy -PolicyId $PolicyId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaPolicyRule"></a>
# **Get-OktaPolicyRule**
> PolicyRule Get-OktaPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Retrieve a Policy Rule

Gets a policy rule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Retrieve a Policy Rule
try {
    $Result = Get-OktaPolicyRule -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListPolicies"></a>
# **Invoke-OktaListPolicies**
> Policy[] Invoke-OktaListPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Policies

Gets all policies with the specified type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Type = "MyType" # String | 
$Status = "MyStatus" # String |  (optional)
$Expand = "MyExpand" # String |  (optional) (default to "")

# List all Policies
try {
    $Result = Invoke-OktaListPolicies -Type $Type -Status $Status -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListPolicyRules"></a>
# **Invoke-OktaListPolicyRules**
> PolicyRule[] Invoke-OktaListPolicyRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

List all Policy Rules

Enumerates all policy rules.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 

# List all Policy Rules
try {
    $Result = Invoke-OktaListPolicyRules -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListPolicyRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaPolicy"></a>
# **Update-OktaPolicy**
> Policy Update-OktaPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>

Replace a Policy

Updates a policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$Policy = Initialize-Policy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } # Policy | 

# Replace a Policy
try {
    $Result = Update-OktaPolicy -PolicyId $PolicyId -Policy $Policy
} catch {
    Write-Host ("Exception occurred when calling Update-OktaPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaPolicyRule"></a>
# **Update-OktaPolicyRule**
> PolicyRule Update-OktaPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Replace a Policy Rule

Updates a policy rule.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 
$PolicyRule = Initialize-PolicyRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" # PolicyRule | 

# Replace a Policy Rule
try {
    $Result = Update-OktaPolicyRule -PolicyId $PolicyId -RuleId $RuleId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling Update-OktaPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

