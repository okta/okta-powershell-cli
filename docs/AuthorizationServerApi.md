# PSOpenAPITools.PSOpenAPITools\Api.AuthorizationServerApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateAuthorizationServer**](AuthorizationServerApi.md#Invoke-ActivateAuthorizationServer) | **POST** /api/v1/authorizationServers/{authServerId}/lifecycle/activate | Activate an Authorization Server
[**Invoke-ActivateAuthorizationServerPolicy**](AuthorizationServerApi.md#Invoke-ActivateAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/activate | Activate a Policy
[**Invoke-ActivateAuthorizationServerPolicyRule**](AuthorizationServerApi.md#Invoke-ActivateAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/activate | Activate a Policy Rule
[**New-AuthorizationServer**](AuthorizationServerApi.md#New-AuthorizationServer) | **POST** /api/v1/authorizationServers | Create an Authorization Server
[**New-AuthorizationServerPolicy**](AuthorizationServerApi.md#New-AuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies | Create a Policy
[**New-AuthorizationServerPolicyRule**](AuthorizationServerApi.md#New-AuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules | Create a Policy Rule
[**New-OAuth2Claim**](AuthorizationServerApi.md#New-OAuth2Claim) | **POST** /api/v1/authorizationServers/{authServerId}/claims | Create a Custom Token Claim
[**New-OAuth2Scope**](AuthorizationServerApi.md#New-OAuth2Scope) | **POST** /api/v1/authorizationServers/{authServerId}/scopes | Create a Custom Token Scope
[**Invoke-DeactivateAuthorizationServer**](AuthorizationServerApi.md#Invoke-DeactivateAuthorizationServer) | **POST** /api/v1/authorizationServers/{authServerId}/lifecycle/deactivate | Deactivate an Authorization Server
[**Invoke-DeactivateAuthorizationServerPolicy**](AuthorizationServerApi.md#Invoke-DeactivateAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/deactivate | Deactivate a Policy
[**Invoke-DeactivateAuthorizationServerPolicyRule**](AuthorizationServerApi.md#Invoke-DeactivateAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate | Deactivate a Policy Rule
[**Invoke-DeleteAuthorizationServer**](AuthorizationServerApi.md#Invoke-DeleteAuthorizationServer) | **DELETE** /api/v1/authorizationServers/{authServerId} | Delete an Authorization Server
[**Invoke-DeleteAuthorizationServerPolicy**](AuthorizationServerApi.md#Invoke-DeleteAuthorizationServerPolicy) | **DELETE** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Delete a Policy
[**Invoke-DeleteAuthorizationServerPolicyRule**](AuthorizationServerApi.md#Invoke-DeleteAuthorizationServerPolicyRule) | **DELETE** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Delete a Policy Rule
[**Invoke-DeleteOAuth2Claim**](AuthorizationServerApi.md#Invoke-DeleteOAuth2Claim) | **DELETE** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Delete a Custom Token Claim
[**Invoke-DeleteOAuth2Scope**](AuthorizationServerApi.md#Invoke-DeleteOAuth2Scope) | **DELETE** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Delete a Custom Token Scope
[**Get-AuthorizationServer**](AuthorizationServerApi.md#Get-AuthorizationServer) | **GET** /api/v1/authorizationServers/{authServerId} | Retrieve an Authorization Server
[**Get-AuthorizationServerPolicy**](AuthorizationServerApi.md#Get-AuthorizationServerPolicy) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Retrieve a Policy
[**Get-AuthorizationServerPolicyRule**](AuthorizationServerApi.md#Get-AuthorizationServerPolicyRule) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Retrieve a Policy Rule
[**Get-OAuth2Claim**](AuthorizationServerApi.md#Get-OAuth2Claim) | **GET** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Retrieve a Custom Token Claim
[**Get-OAuth2Scope**](AuthorizationServerApi.md#Get-OAuth2Scope) | **GET** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Retrieve a Custom Token Scope
[**Get-RefreshTokenForAuthorizationServerAndClient**](AuthorizationServerApi.md#Get-RefreshTokenForAuthorizationServerAndClient) | **GET** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId} | Retrieve a Refresh Token for a Client
[**Invoke-ListAuthorizationServerKeys**](AuthorizationServerApi.md#Invoke-ListAuthorizationServerKeys) | **GET** /api/v1/authorizationServers/{authServerId}/credentials/keys | List all Credential Keys
[**Invoke-ListAuthorizationServerPolicies**](AuthorizationServerApi.md#Invoke-ListAuthorizationServerPolicies) | **GET** /api/v1/authorizationServers/{authServerId}/policies | List all Policies
[**Invoke-ListAuthorizationServerPolicyRules**](AuthorizationServerApi.md#Invoke-ListAuthorizationServerPolicyRules) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules | List all Policy Rules
[**Invoke-ListAuthorizationServers**](AuthorizationServerApi.md#Invoke-ListAuthorizationServers) | **GET** /api/v1/authorizationServers | List all Authorization Servers
[**Invoke-ListOAuth2Claims**](AuthorizationServerApi.md#Invoke-ListOAuth2Claims) | **GET** /api/v1/authorizationServers/{authServerId}/claims | List all Custom Token Claims
[**Invoke-ListOAuth2ClientsForAuthorizationServer**](AuthorizationServerApi.md#Invoke-ListOAuth2ClientsForAuthorizationServer) | **GET** /api/v1/authorizationServers/{authServerId}/clients | List all Clients
[**Invoke-ListOAuth2Scopes**](AuthorizationServerApi.md#Invoke-ListOAuth2Scopes) | **GET** /api/v1/authorizationServers/{authServerId}/scopes | List all Custom Token Scopes
[**Invoke-ListRefreshTokensForAuthorizationServerAndClient**](AuthorizationServerApi.md#Invoke-ListRefreshTokensForAuthorizationServerAndClient) | **GET** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens | List all Refresh Tokens for a Client
[**Revoke-RefreshTokenForAuthorizationServerAndClient**](AuthorizationServerApi.md#Revoke-RefreshTokenForAuthorizationServerAndClient) | **DELETE** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId} | Revoke a Refresh Token for a Client
[**Revoke-RefreshTokensForAuthorizationServerAndClient**](AuthorizationServerApi.md#Revoke-RefreshTokensForAuthorizationServerAndClient) | **DELETE** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens | Revoke all Refresh Tokens for a Client
[**Invoke-RotateAuthorizationServerKeys**](AuthorizationServerApi.md#Invoke-RotateAuthorizationServerKeys) | **POST** /api/v1/authorizationServers/{authServerId}/credentials/lifecycle/keyRotate | Rotate all Credential Keys
[**Update-AuthorizationServer**](AuthorizationServerApi.md#Update-AuthorizationServer) | **PUT** /api/v1/authorizationServers/{authServerId} | Replace an Authorization Server
[**Update-AuthorizationServerPolicy**](AuthorizationServerApi.md#Update-AuthorizationServerPolicy) | **PUT** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Replace a Policy
[**Update-AuthorizationServerPolicyRule**](AuthorizationServerApi.md#Update-AuthorizationServerPolicyRule) | **PUT** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Replace a Policy Rule
[**Update-OAuth2Claim**](AuthorizationServerApi.md#Update-OAuth2Claim) | **PUT** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Replace a Custom Token Claim
[**Update-OAuth2Scope**](AuthorizationServerApi.md#Update-OAuth2Scope) | **PUT** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Replace a Custom Token Scope


<a name="Invoke-ActivateAuthorizationServer"></a>
# **Invoke-ActivateAuthorizationServer**
> void Invoke-ActivateAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Activate an Authorization Server

Activate an authorization server

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

$AuthServerId = "MyAuthServerId" # String | 

# Activate an Authorization Server
try {
    $Result = Invoke-ActivateAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ActivateAuthorizationServerPolicy"></a>
# **Invoke-ActivateAuthorizationServerPolicy**
> void Invoke-ActivateAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Activate a Policy

Activate Authorization Server Policy

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

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Activate a Policy
try {
    $Result = Invoke-ActivateAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **PolicyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ActivateAuthorizationServerPolicyRule"></a>
# **Invoke-ActivateAuthorizationServerPolicyRule**
> void Invoke-ActivateAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Activate a Policy Rule

Activate Authorization Server Policy Rule

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

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Activate a Policy Rule
try {
    $Result = Invoke-ActivateAuthorizationServerPolicyRule -AuthServerId $AuthServerId -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
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

<a name="New-AuthorizationServer"></a>
# **New-AuthorizationServer**
> AuthorizationServer New-AuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthorizationServer] <PSCustomObject><br>

Create an Authorization Server

Create an authorization server

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

$AuthorizationServerCredentialsSigningConfig = Initialize-AuthorizationServerCredentialsSigningConfig -Kid "MyKid" -LastRotated (Get-Date) -NextRotation (Get-Date) -RotationMode "AUTO" -Use "sig"
$AuthorizationServerCredentials = Initialize-AuthorizationServerCredentials -Signing $AuthorizationServerCredentialsSigningConfig

$AuthorizationServer = Initialize-AuthorizationServer -Audiences "MyAudiences" -Created (Get-Date) -Credentials $AuthorizationServerCredentials -Description "MyDescription" -Id "MyId" -Issuer "MyIssuer" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Links @{ key_example =  } # AuthorizationServer | 

# Create an Authorization Server
try {
    $Result = New-AuthorizationServer -AuthorizationServer $AuthorizationServer
} catch {
    Write-Host ("Exception occurred when calling New-AuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthorizationServer** | [**AuthorizationServer**](AuthorizationServer.md)|  | 

### Return type

[**AuthorizationServer**](AuthorizationServer.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-AuthorizationServerPolicy"></a>
# **New-AuthorizationServerPolicy**
> AuthorizationServerPolicy New-AuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>

Create a Policy

Create a policy

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

$AuthServerId = "MyAuthServerId" # String | 
$AppAndInstanceConditionEvaluatorAppOrInstance = Initialize-AppAndInstanceConditionEvaluatorAppOrInstance -Id "MyId" -Name "MyName" -Type "APP"
$AppAndInstancePolicyRuleCondition = Initialize-AppAndInstancePolicyRuleCondition -Exclude $AppAndInstanceConditionEvaluatorAppOrInstance -Include $AppAndInstanceConditionEvaluatorAppOrInstance

$AppInstancePolicyRuleCondition = Initialize-AppInstancePolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyRuleAuthContextCondition = Initialize-PolicyRuleAuthContextCondition -AuthType "ANY"
$PasswordPolicyAuthenticationProviderCondition = Initialize-PasswordPolicyAuthenticationProviderCondition -Include "MyInclude" -Provider "ACTIVE_DIRECTORY"

$Duration = Initialize-Duration -Number 0 -Unit "MyUnit"
$ScheduledUserLifecycleAction = Initialize-ScheduledUserLifecycleAction -Status "ACTIVATING"
$BeforeScheduledActionPolicyRuleCondition = Initialize-BeforeScheduledActionPolicyRuleCondition -Duration $Duration -LifecycleAction $ScheduledUserLifecycleAction

$ClientPolicyCondition = Initialize-ClientPolicyCondition -Include "MyInclude"

$DevicePolicyRuleConditionPlatform = Initialize-DevicePolicyRuleConditionPlatform -SupportedMDMFrameworks "AFW" -Types "ANDROID"
$ContextPolicyRuleCondition = Initialize-ContextPolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY" -Expression "MyExpression"

$DevicePolicyRuleCondition = Initialize-DevicePolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY"

$GrantTypePolicyRuleCondition = Initialize-GrantTypePolicyRuleCondition -Include "MyInclude"
$GroupPolicyRuleCondition = Initialize-GroupPolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$IdentityProviderPolicyRuleCondition = Initialize-IdentityProviderPolicyRuleCondition -IdpIds "MyIdpIds" -Provider "ANY"
$MDMEnrollmentPolicyRuleCondition = Initialize-MDMEnrollmentPolicyRuleCondition -BlockNonSafeAndroid $false -Enrollment "ANY_OR_NONE"
$PolicyNetworkCondition = Initialize-PolicyNetworkCondition -Connection "ANYWHERE" -Exclude "MyExclude" -Include "MyInclude"

$GroupCondition = Initialize-GroupCondition -Exclude "MyExclude" -Include "MyInclude"
$UserCondition = Initialize-UserCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyPeopleCondition = Initialize-PolicyPeopleCondition -Groups $GroupCondition -Users $UserCondition

$PlatformConditionEvaluatorPlatformOperatingSystemVersion = Initialize-PlatformConditionEvaluatorPlatformOperatingSystemVersion -MatchType "EXPRESSION" -Value "MyValue"
$PlatformConditionEvaluatorPlatformOperatingSystem = Initialize-PlatformConditionEvaluatorPlatformOperatingSystem -Expression "MyExpression" -Type "ANDROID" -Version $PlatformConditionEvaluatorPlatformOperatingSystemVersion

$PlatformConditionEvaluatorPlatform = Initialize-PlatformConditionEvaluatorPlatform -Os $PlatformConditionEvaluatorPlatformOperatingSystem -Type "ANY"

$PlatformPolicyRuleCondition = Initialize-PlatformPolicyRuleCondition -Exclude $PlatformConditionEvaluatorPlatform -Include $PlatformConditionEvaluatorPlatform

$RiskPolicyRuleCondition = Initialize-RiskPolicyRuleCondition -Behaviors "MyBehaviors"
$RiskScorePolicyRuleCondition = Initialize-RiskScorePolicyRuleCondition -Level "MyLevel"
$OAuth2ScopesMediationPolicyRuleCondition = Initialize-OAuth2ScopesMediationPolicyRuleCondition -Include "MyInclude"

$UserIdentifierConditionEvaluatorPattern = Initialize-UserIdentifierConditionEvaluatorPattern -MatchType "CONTAINS" -Value "MyValue"
$UserIdentifierPolicyRuleCondition = Initialize-UserIdentifierPolicyRuleCondition -Attribute "MyAttribute" -Patterns $UserIdentifierConditionEvaluatorPattern -Type "ATTRIBUTE"

$InactivityPolicyRuleCondition = Initialize-InactivityPolicyRuleCondition -Number 0 -Unit "MyUnit"
$LifecycleExpirationPolicyRuleCondition = Initialize-LifecycleExpirationPolicyRuleCondition -LifecycleStatus "MyLifecycleStatus" -Number 0 -Unit "MyUnit"
$PasswordExpirationPolicyRuleCondition = Initialize-PasswordExpirationPolicyRuleCondition -Number 0 -Unit "MyUnit"
$UserLifecycleAttributePolicyRuleCondition = Initialize-UserLifecycleAttributePolicyRuleCondition -AttributeName "MyAttributeName" -MatchingValue "MyMatchingValue"
$UserPolicyRuleCondition = Initialize-UserPolicyRuleCondition -Exclude "MyExclude" -Inactivity $InactivityPolicyRuleCondition -Include "MyInclude" -LifecycleExpiration $LifecycleExpirationPolicyRuleCondition -PasswordExpiration $PasswordExpirationPolicyRuleCondition -UserLifecycleAttribute $UserLifecycleAttributePolicyRuleCondition

$UserStatusPolicyRuleCondition = Initialize-UserStatusPolicyRuleCondition -Value "ACTIVATING"
$PolicyRuleConditions = Initialize-PolicyRuleConditions -App $AppAndInstancePolicyRuleCondition -Apps $AppInstancePolicyRuleCondition -AuthContext $PolicyRuleAuthContextCondition -AuthProvider $PasswordPolicyAuthenticationProviderCondition -BeforeScheduledAction $BeforeScheduledActionPolicyRuleCondition -Clients $ClientPolicyCondition -Context $ContextPolicyRuleCondition -Device $DevicePolicyRuleCondition -GrantTypes $GrantTypePolicyRuleCondition -Groups $GroupPolicyRuleCondition -IdentityProvider $IdentityProviderPolicyRuleCondition -MdmEnrollment $MDMEnrollmentPolicyRuleCondition -Network $PolicyNetworkCondition -People $PolicyPeopleCondition -Platform $PlatformPolicyRuleCondition -Risk $RiskPolicyRuleCondition -RiskScore $RiskScorePolicyRuleCondition -Scopes $OAuth2ScopesMediationPolicyRuleCondition -UserIdentifier $UserIdentifierPolicyRuleCondition -Users $UserPolicyRuleCondition -UserStatus $UserStatusPolicyRuleCondition

$AuthorizationServerPolicy = Initialize-AuthorizationServerPolicy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } -Conditions $PolicyRuleConditions # AuthorizationServerPolicy | 

# Create a Policy
try {
    $Result = New-AuthorizationServerPolicy -AuthServerId $AuthServerId -Policy $Policy
} catch {
    Write-Host ("Exception occurred when calling New-AuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **Policy** | [**AuthorizationServerPolicy**](AuthorizationServerPolicy.md)|  | 

### Return type

[**AuthorizationServerPolicy**](AuthorizationServerPolicy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-AuthorizationServerPolicyRule"></a>
# **New-AuthorizationServerPolicyRule**
> AuthorizationServerPolicyRule New-AuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Create a Policy Rule

Creates a policy rule for the specified Custom Authorization Server and Policy.

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
$AuthServerId = "MyAuthServerId" # String | 
$PolicyRuleActionsEnroll = Initialize-PolicyRuleActionsEnroll -Self "CHALLENGE"

$IdpPolicyRuleActionProvider = Initialize-IdpPolicyRuleActionProvider -Id "MyId" -Type "MyType"
$IdpPolicyRuleAction = Initialize-IdpPolicyRuleAction -Providers $IdpPolicyRuleActionProvider

$PasswordPolicyRuleAction = Initialize-PasswordPolicyRuleAction -Access "ALLOW"

$OktaSignOnPolicyRuleSignonSessionActions = Initialize-OktaSignOnPolicyRuleSignonSessionActions -MaxSessionIdleMinutes 0 -MaxSessionLifetimeMinutes 0 -UsePersistentCookie $false
$OktaSignOnPolicyRuleSignonActions = Initialize-OktaSignOnPolicyRuleSignonActions -Access "ALLOW" -FactorLifetime 0 -FactorPromptMode "ALWAYS" -RememberDeviceByDefault $false -RequireFactor $false -Session $OktaSignOnPolicyRuleSignonSessionActions

$TokenAuthorizationServerPolicyRuleActionInlineHook = Initialize-TokenAuthorizationServerPolicyRuleActionInlineHook -Id "MyId"
$TokenAuthorizationServerPolicyRuleAction = Initialize-TokenAuthorizationServerPolicyRuleAction -AccessTokenLifetimeMinutes 0 -InlineHook $TokenAuthorizationServerPolicyRuleActionInlineHook -RefreshTokenLifetimeMinutes 0 -RefreshTokenWindowMinutes 0

$AuthorizationServerPolicyRuleActions = Initialize-AuthorizationServerPolicyRuleActions -Enroll $PolicyRuleActionsEnroll -Idp $IdpPolicyRuleAction -PasswordChange $PasswordPolicyRuleAction -SelfServicePasswordReset $PasswordPolicyRuleAction -SelfServiceUnlock $PasswordPolicyRuleAction -Signon $OktaSignOnPolicyRuleSignonActions -Token $TokenAuthorizationServerPolicyRuleAction

$AppAndInstanceConditionEvaluatorAppOrInstance = Initialize-AppAndInstanceConditionEvaluatorAppOrInstance -Id "MyId" -Name "MyName" -Type "APP"
$AppAndInstancePolicyRuleCondition = Initialize-AppAndInstancePolicyRuleCondition -Exclude $AppAndInstanceConditionEvaluatorAppOrInstance -Include $AppAndInstanceConditionEvaluatorAppOrInstance

$AppInstancePolicyRuleCondition = Initialize-AppInstancePolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyRuleAuthContextCondition = Initialize-PolicyRuleAuthContextCondition -AuthType "ANY"
$PasswordPolicyAuthenticationProviderCondition = Initialize-PasswordPolicyAuthenticationProviderCondition -Include "MyInclude" -Provider "ACTIVE_DIRECTORY"

$Duration = Initialize-Duration -Number 0 -Unit "MyUnit"
$ScheduledUserLifecycleAction = Initialize-ScheduledUserLifecycleAction -Status "ACTIVATING"
$BeforeScheduledActionPolicyRuleCondition = Initialize-BeforeScheduledActionPolicyRuleCondition -Duration $Duration -LifecycleAction $ScheduledUserLifecycleAction

$ClientPolicyCondition = Initialize-ClientPolicyCondition -Include "MyInclude"

$DevicePolicyRuleConditionPlatform = Initialize-DevicePolicyRuleConditionPlatform -SupportedMDMFrameworks "AFW" -Types "ANDROID"
$ContextPolicyRuleCondition = Initialize-ContextPolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY" -Expression "MyExpression"

$DevicePolicyRuleCondition = Initialize-DevicePolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY"

$GrantTypePolicyRuleCondition = Initialize-GrantTypePolicyRuleCondition -Include "MyInclude"
$GroupPolicyRuleCondition = Initialize-GroupPolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$IdentityProviderPolicyRuleCondition = Initialize-IdentityProviderPolicyRuleCondition -IdpIds "MyIdpIds" -Provider "ANY"
$MDMEnrollmentPolicyRuleCondition = Initialize-MDMEnrollmentPolicyRuleCondition -BlockNonSafeAndroid $false -Enrollment "ANY_OR_NONE"
$PolicyNetworkCondition = Initialize-PolicyNetworkCondition -Connection "ANYWHERE" -Exclude "MyExclude" -Include "MyInclude"

$GroupCondition = Initialize-GroupCondition -Exclude "MyExclude" -Include "MyInclude"
$UserCondition = Initialize-UserCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyPeopleCondition = Initialize-PolicyPeopleCondition -Groups $GroupCondition -Users $UserCondition

$PlatformConditionEvaluatorPlatformOperatingSystemVersion = Initialize-PlatformConditionEvaluatorPlatformOperatingSystemVersion -MatchType "EXPRESSION" -Value "MyValue"
$PlatformConditionEvaluatorPlatformOperatingSystem = Initialize-PlatformConditionEvaluatorPlatformOperatingSystem -Expression "MyExpression" -Type "ANDROID" -Version $PlatformConditionEvaluatorPlatformOperatingSystemVersion

$PlatformConditionEvaluatorPlatform = Initialize-PlatformConditionEvaluatorPlatform -Os $PlatformConditionEvaluatorPlatformOperatingSystem -Type "ANY"

$PlatformPolicyRuleCondition = Initialize-PlatformPolicyRuleCondition -Exclude $PlatformConditionEvaluatorPlatform -Include $PlatformConditionEvaluatorPlatform

$RiskPolicyRuleCondition = Initialize-RiskPolicyRuleCondition -Behaviors "MyBehaviors"
$RiskScorePolicyRuleCondition = Initialize-RiskScorePolicyRuleCondition -Level "MyLevel"
$OAuth2ScopesMediationPolicyRuleCondition = Initialize-OAuth2ScopesMediationPolicyRuleCondition -Include "MyInclude"

$UserIdentifierConditionEvaluatorPattern = Initialize-UserIdentifierConditionEvaluatorPattern -MatchType "CONTAINS" -Value "MyValue"
$UserIdentifierPolicyRuleCondition = Initialize-UserIdentifierPolicyRuleCondition -Attribute "MyAttribute" -Patterns $UserIdentifierConditionEvaluatorPattern -Type "ATTRIBUTE"

$InactivityPolicyRuleCondition = Initialize-InactivityPolicyRuleCondition -Number 0 -Unit "MyUnit"
$LifecycleExpirationPolicyRuleCondition = Initialize-LifecycleExpirationPolicyRuleCondition -LifecycleStatus "MyLifecycleStatus" -Number 0 -Unit "MyUnit"
$PasswordExpirationPolicyRuleCondition = Initialize-PasswordExpirationPolicyRuleCondition -Number 0 -Unit "MyUnit"
$UserLifecycleAttributePolicyRuleCondition = Initialize-UserLifecycleAttributePolicyRuleCondition -AttributeName "MyAttributeName" -MatchingValue "MyMatchingValue"
$UserPolicyRuleCondition = Initialize-UserPolicyRuleCondition -Exclude "MyExclude" -Inactivity $InactivityPolicyRuleCondition -Include "MyInclude" -LifecycleExpiration $LifecycleExpirationPolicyRuleCondition -PasswordExpiration $PasswordExpirationPolicyRuleCondition -UserLifecycleAttribute $UserLifecycleAttributePolicyRuleCondition

$UserStatusPolicyRuleCondition = Initialize-UserStatusPolicyRuleCondition -Value "ACTIVATING"
$AuthorizationServerPolicyRuleConditions = Initialize-AuthorizationServerPolicyRuleConditions -App $AppAndInstancePolicyRuleCondition -Apps $AppInstancePolicyRuleCondition -AuthContext $PolicyRuleAuthContextCondition -AuthProvider $PasswordPolicyAuthenticationProviderCondition -BeforeScheduledAction $BeforeScheduledActionPolicyRuleCondition -Clients $ClientPolicyCondition -Context $ContextPolicyRuleCondition -Device $DevicePolicyRuleCondition -GrantTypes $GrantTypePolicyRuleCondition -Groups $GroupPolicyRuleCondition -IdentityProvider $IdentityProviderPolicyRuleCondition -MdmEnrollment $MDMEnrollmentPolicyRuleCondition -Network $PolicyNetworkCondition -People $PolicyPeopleCondition -Platform $PlatformPolicyRuleCondition -Risk $RiskPolicyRuleCondition -RiskScore $RiskScorePolicyRuleCondition -Scopes $OAuth2ScopesMediationPolicyRuleCondition -UserIdentifier $UserIdentifierPolicyRuleCondition -Users $UserPolicyRuleCondition -UserStatus $UserStatusPolicyRuleCondition

$AuthorizationServerPolicyRule = Initialize-AuthorizationServerPolicyRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Actions $AuthorizationServerPolicyRuleActions -Conditions $AuthorizationServerPolicyRuleConditions # AuthorizationServerPolicyRule | 

# Create a Policy Rule
try {
    $Result = New-AuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling New-AuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **AuthServerId** | **String**|  | 
 **PolicyRule** | [**AuthorizationServerPolicyRule**](AuthorizationServerPolicyRule.md)|  | 

### Return type

[**AuthorizationServerPolicyRule**](AuthorizationServerPolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-OAuth2Claim"></a>
# **New-OAuth2Claim**
> OAuth2Claim New-OAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Claim] <PSCustomObject><br>

Create a Custom Token Claim

Create a custom token claim

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

$AuthServerId = "MyAuthServerId" # String | 
$OAuth2ClaimConditions = Initialize-OAuth2ClaimConditions -Scopes "MyScopes"
$OAuth2Claim = Initialize-OAuth2Claim -AlwaysIncludeInToken $false -ClaimType "IDENTITY" -Conditions $OAuth2ClaimConditions -GroupFilterType "CONTAINS" -Id "MyId" -Name "MyName" -Status "ACTIVE" -System $false -Value "MyValue" -ValueType "EXPRESSION" -Links @{ key_example =  } # OAuth2Claim | 

# Create a Custom Token Claim
try {
    $Result = New-OAuth2Claim -AuthServerId $AuthServerId -OAuth2Claim $OAuth2Claim
} catch {
    Write-Host ("Exception occurred when calling New-OAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **OAuth2Claim** | [**OAuth2Claim**](OAuth2Claim.md)|  | 

### Return type

[**OAuth2Claim**](OAuth2Claim.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-OAuth2Scope"></a>
# **New-OAuth2Scope**
> OAuth2Scope New-OAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Scope] <PSCustomObject><br>

Create a Custom Token Scope

Create a custom token scope

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

$AuthServerId = "MyAuthServerId" # String | 
$OAuth2Scope = Initialize-OAuth2Scope -Consent "ADMIN" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -MetadataPublish "ALL_CLIENTS" -Name "MyName" -System $false # OAuth2Scope | 

# Create a Custom Token Scope
try {
    $Result = New-OAuth2Scope -AuthServerId $AuthServerId -OAuth2Scope $OAuth2Scope
} catch {
    Write-Host ("Exception occurred when calling New-OAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **OAuth2Scope** | [**OAuth2Scope**](OAuth2Scope.md)|  | 

### Return type

[**OAuth2Scope**](OAuth2Scope.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateAuthorizationServer"></a>
# **Invoke-DeactivateAuthorizationServer**
> void Invoke-DeactivateAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Deactivate an Authorization Server

Deactivate an authorization server

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

$AuthServerId = "MyAuthServerId" # String | 

# Deactivate an Authorization Server
try {
    $Result = Invoke-DeactivateAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateAuthorizationServerPolicy"></a>
# **Invoke-DeactivateAuthorizationServerPolicy**
> void Invoke-DeactivateAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Deactivate a Policy

Deactivate Authorization Server Policy

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

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Deactivate a Policy
try {
    $Result = Invoke-DeactivateAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **PolicyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateAuthorizationServerPolicyRule"></a>
# **Invoke-DeactivateAuthorizationServerPolicyRule**
> void Invoke-DeactivateAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Deactivate a Policy Rule

Deactivate Authorization Server Policy Rule

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

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Deactivate a Policy Rule
try {
    $Result = Invoke-DeactivateAuthorizationServerPolicyRule -AuthServerId $AuthServerId -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
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

<a name="Invoke-DeleteAuthorizationServer"></a>
# **Invoke-DeleteAuthorizationServer**
> void Invoke-DeleteAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Delete an Authorization Server

Delete an authorization server

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

$AuthServerId = "MyAuthServerId" # String | 

# Delete an Authorization Server
try {
    $Result = Invoke-DeleteAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteAuthorizationServerPolicy"></a>
# **Invoke-DeleteAuthorizationServerPolicy**
> void Invoke-DeleteAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Delete a Policy

Delete a policy

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

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Delete a Policy
try {
    $Result = Invoke-DeleteAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **PolicyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteAuthorizationServerPolicyRule"></a>
# **Invoke-DeleteAuthorizationServerPolicyRule**
> void Invoke-DeleteAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Delete a Policy Rule

Deletes a Policy Rule defined in the specified Custom Authorization Server and Policy.

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
$AuthServerId = "MyAuthServerId" # String | 
$RuleId = "MyRuleId" # String | 

# Delete a Policy Rule
try {
    $Result = Invoke-DeleteAuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **AuthServerId** | **String**|  | 
 **RuleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteOAuth2Claim"></a>
# **Invoke-DeleteOAuth2Claim**
> void Invoke-DeleteOAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <String><br>

Delete a Custom Token Claim

Delete a custom token claim

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

$AuthServerId = "MyAuthServerId" # String | 
$ClaimId = "MyClaimId" # String | 

# Delete a Custom Token Claim
try {
    $Result = Invoke-DeleteOAuth2Claim -AuthServerId $AuthServerId -ClaimId $ClaimId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteOAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ClaimId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteOAuth2Scope"></a>
# **Invoke-DeleteOAuth2Scope**
> void Invoke-DeleteOAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScopeId] <String><br>

Delete a Custom Token Scope

Delete a custom token scope

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

$AuthServerId = "MyAuthServerId" # String | 
$ScopeId = "MyScopeId" # String | 

# Delete a Custom Token Scope
try {
    $Result = Invoke-DeleteOAuth2Scope -AuthServerId $AuthServerId -ScopeId $ScopeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteOAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ScopeId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AuthorizationServer"></a>
# **Get-AuthorizationServer**
> AuthorizationServer Get-AuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Retrieve an Authorization Server

Retrieve an authorization server

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

$AuthServerId = "MyAuthServerId" # String | 

# Retrieve an Authorization Server
try {
    $Result = Get-AuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Get-AuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

[**AuthorizationServer**](AuthorizationServer.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AuthorizationServerPolicy"></a>
# **Get-AuthorizationServerPolicy**
> AuthorizationServerPolicy Get-AuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Retrieve a Policy

Retrieve a policy

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

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Retrieve a Policy
try {
    $Result = Get-AuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Get-AuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **PolicyId** | **String**|  | 

### Return type

[**AuthorizationServerPolicy**](AuthorizationServerPolicy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AuthorizationServerPolicyRule"></a>
# **Get-AuthorizationServerPolicyRule**
> AuthorizationServerPolicyRule Get-AuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Retrieve a Policy Rule

Returns a Policy Rule by ID that is defined in the specified Custom Authorization Server and Policy.

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
$AuthServerId = "MyAuthServerId" # String | 
$RuleId = "MyRuleId" # String | 

# Retrieve a Policy Rule
try {
    $Result = Get-AuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Get-AuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **AuthServerId** | **String**|  | 
 **RuleId** | **String**|  | 

### Return type

[**AuthorizationServerPolicyRule**](AuthorizationServerPolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OAuth2Claim"></a>
# **Get-OAuth2Claim**
> OAuth2Claim Get-OAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <String><br>

Retrieve a Custom Token Claim

Retrieve a custom token claim

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

$AuthServerId = "MyAuthServerId" # String | 
$ClaimId = "MyClaimId" # String | 

# Retrieve a Custom Token Claim
try {
    $Result = Get-OAuth2Claim -AuthServerId $AuthServerId -ClaimId $ClaimId
} catch {
    Write-Host ("Exception occurred when calling Get-OAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ClaimId** | **String**|  | 

### Return type

[**OAuth2Claim**](OAuth2Claim.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OAuth2Scope"></a>
# **Get-OAuth2Scope**
> OAuth2Scope Get-OAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScopeId] <String><br>

Retrieve a Custom Token Scope

Retrieve a custom token scope

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

$AuthServerId = "MyAuthServerId" # String | 
$ScopeId = "MyScopeId" # String | 

# Retrieve a Custom Token Scope
try {
    $Result = Get-OAuth2Scope -AuthServerId $AuthServerId -ScopeId $ScopeId
} catch {
    Write-Host ("Exception occurred when calling Get-OAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ScopeId** | **String**|  | 

### Return type

[**OAuth2Scope**](OAuth2Scope.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-RefreshTokenForAuthorizationServerAndClient"></a>
# **Get-RefreshTokenForAuthorizationServerAndClient**
> OAuth2RefreshToken Get-RefreshTokenForAuthorizationServerAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Refresh Token for a Client

Retrieve a refresh token for a client

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

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a Refresh Token for a Client
try {
    $Result = Get-RefreshTokenForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId -TokenId $TokenId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-RefreshTokenForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ClientId** | **String**|  | 
 **TokenId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**OAuth2RefreshToken**](OAuth2RefreshToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAuthorizationServerKeys"></a>
# **Invoke-ListAuthorizationServerKeys**
> JsonWebKey[] Invoke-ListAuthorizationServerKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Credential Keys

List all credential keys

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

$AuthServerId = "MyAuthServerId" # String | 

# List all Credential Keys
try {
    $Result = Invoke-ListAuthorizationServerKeys -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAuthorizationServerKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

[**JsonWebKey[]**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAuthorizationServerPolicies"></a>
# **Invoke-ListAuthorizationServerPolicies**
> AuthorizationServerPolicy[] Invoke-ListAuthorizationServerPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Policies

List all policies

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

$AuthServerId = "MyAuthServerId" # String | 

# List all Policies
try {
    $Result = Invoke-ListAuthorizationServerPolicies -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAuthorizationServerPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

[**AuthorizationServerPolicy[]**](AuthorizationServerPolicy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAuthorizationServerPolicyRules"></a>
# **Invoke-ListAuthorizationServerPolicyRules**
> AuthorizationServerPolicyRule[] Invoke-ListAuthorizationServerPolicyRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Policy Rules

Enumerates all policy rules for the specified Custom Authorization Server and Policy.

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
$AuthServerId = "MyAuthServerId" # String | 

# List all Policy Rules
try {
    $Result = Invoke-ListAuthorizationServerPolicyRules -PolicyId $PolicyId -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAuthorizationServerPolicyRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **AuthServerId** | **String**|  | 

### Return type

[**AuthorizationServerPolicyRule[]**](AuthorizationServerPolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAuthorizationServers"></a>
# **Invoke-ListAuthorizationServers**
> AuthorizationServer[] Invoke-ListAuthorizationServers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Authorization Servers

List all authorization servers

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

$Q = "MyQ" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 200)
$After = "MyAfter" # String |  (optional)

# List all Authorization Servers
try {
    $Result = Invoke-ListAuthorizationServers -Q $Q -Limit $Limit -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAuthorizationServers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 200]
 **After** | **String**|  | [optional] 

### Return type

[**AuthorizationServer[]**](AuthorizationServer.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListOAuth2Claims"></a>
# **Invoke-ListOAuth2Claims**
> OAuth2Claim[] Invoke-ListOAuth2Claims<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Custom Token Claims

List all custom token claims

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

$AuthServerId = "MyAuthServerId" # String | 

# List all Custom Token Claims
try {
    $Result = Invoke-ListOAuth2Claims -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListOAuth2Claims: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

[**OAuth2Claim[]**](OAuth2Claim.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListOAuth2ClientsForAuthorizationServer"></a>
# **Invoke-ListOAuth2ClientsForAuthorizationServer**
> OAuth2Client[] Invoke-ListOAuth2ClientsForAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Clients

List all clients

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

$AuthServerId = "MyAuthServerId" # String | 

# List all Clients
try {
    $Result = Invoke-ListOAuth2ClientsForAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListOAuth2ClientsForAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 

### Return type

[**OAuth2Client[]**](OAuth2Client.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListOAuth2Scopes"></a>
# **Invoke-ListOAuth2Scopes**
> OAuth2Scope[] Invoke-ListOAuth2Scopes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Cursor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Custom Token Scopes

List all custom token scopes

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

$AuthServerId = "MyAuthServerId" # String | 
$Q = "MyQ" # String |  (optional)
$Filter = "MyFilter" # String |  (optional)
$Cursor = "MyCursor" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Custom Token Scopes
try {
    $Result = Invoke-ListOAuth2Scopes -AuthServerId $AuthServerId -Q $Q -Filter $Filter -Cursor $Cursor -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListOAuth2Scopes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **Q** | **String**|  | [optional] 
 **Filter** | **String**|  | [optional] 
 **Cursor** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to -1]

### Return type

[**OAuth2Scope[]**](OAuth2Scope.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListRefreshTokensForAuthorizationServerAndClient"></a>
# **Invoke-ListRefreshTokensForAuthorizationServerAndClient**
> OAuth2RefreshToken[] Invoke-ListRefreshTokensForAuthorizationServerAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Refresh Tokens for a Client

List all refresh tokens for a client

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

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Refresh Tokens for a Client
try {
    $Result = Invoke-ListRefreshTokensForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListRefreshTokensForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ClientId** | **String**|  | 
 **Expand** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to -1]

### Return type

[**OAuth2RefreshToken[]**](OAuth2RefreshToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Revoke-RefreshTokenForAuthorizationServerAndClient"></a>
# **Revoke-RefreshTokenForAuthorizationServerAndClient**
> void Revoke-RefreshTokenForAuthorizationServerAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

Revoke a Refresh Token for a Client

Revoke a refresh token for a client

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

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 

# Revoke a Refresh Token for a Client
try {
    $Result = Revoke-RefreshTokenForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Revoke-RefreshTokenForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ClientId** | **String**|  | 
 **TokenId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Revoke-RefreshTokensForAuthorizationServerAndClient"></a>
# **Revoke-RefreshTokensForAuthorizationServerAndClient**
> void Revoke-RefreshTokensForAuthorizationServerAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>

Revoke all Refresh Tokens for a Client

Revoke all refresh tokens for a client

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

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 

# Revoke all Refresh Tokens for a Client
try {
    $Result = Revoke-RefreshTokensForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId
} catch {
    Write-Host ("Exception occurred when calling Revoke-RefreshTokensForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ClientId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-RotateAuthorizationServerKeys"></a>
# **Invoke-RotateAuthorizationServerKeys**
> JsonWebKey[] Invoke-RotateAuthorizationServerKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Use] <PSCustomObject><br>

Rotate all Credential Keys

Rotate all credential keys

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

$AuthServerId = "MyAuthServerId" # String | 
$JwkUse = Initialize-JwkUse -Use "sig" # JwkUse | 

# Rotate all Credential Keys
try {
    $Result = Invoke-RotateAuthorizationServerKeys -AuthServerId $AuthServerId -Use $Use
} catch {
    Write-Host ("Exception occurred when calling Invoke-RotateAuthorizationServerKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **Use** | [**JwkUse**](JwkUse.md)|  | 

### Return type

[**JsonWebKey[]**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-AuthorizationServer"></a>
# **Update-AuthorizationServer**
> AuthorizationServer Update-AuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthorizationServer] <PSCustomObject><br>

Replace an Authorization Server

Replace an authorization server

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

$AuthServerId = "MyAuthServerId" # String | 
$AuthorizationServerCredentialsSigningConfig = Initialize-AuthorizationServerCredentialsSigningConfig -Kid "MyKid" -LastRotated (Get-Date) -NextRotation (Get-Date) -RotationMode "AUTO" -Use "sig"
$AuthorizationServerCredentials = Initialize-AuthorizationServerCredentials -Signing $AuthorizationServerCredentialsSigningConfig

$AuthorizationServer = Initialize-AuthorizationServer -Audiences "MyAudiences" -Created (Get-Date) -Credentials $AuthorizationServerCredentials -Description "MyDescription" -Id "MyId" -Issuer "MyIssuer" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Links @{ key_example =  } # AuthorizationServer | 

# Replace an Authorization Server
try {
    $Result = Update-AuthorizationServer -AuthServerId $AuthServerId -AuthorizationServer $AuthorizationServer
} catch {
    Write-Host ("Exception occurred when calling Update-AuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **AuthorizationServer** | [**AuthorizationServer**](AuthorizationServer.md)|  | 

### Return type

[**AuthorizationServer**](AuthorizationServer.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-AuthorizationServerPolicy"></a>
# **Update-AuthorizationServerPolicy**
> AuthorizationServerPolicy Update-AuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>

Replace a Policy

Replace a policy

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

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 
$AppAndInstanceConditionEvaluatorAppOrInstance = Initialize-AppAndInstanceConditionEvaluatorAppOrInstance -Id "MyId" -Name "MyName" -Type "APP"
$AppAndInstancePolicyRuleCondition = Initialize-AppAndInstancePolicyRuleCondition -Exclude $AppAndInstanceConditionEvaluatorAppOrInstance -Include $AppAndInstanceConditionEvaluatorAppOrInstance

$AppInstancePolicyRuleCondition = Initialize-AppInstancePolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyRuleAuthContextCondition = Initialize-PolicyRuleAuthContextCondition -AuthType "ANY"
$PasswordPolicyAuthenticationProviderCondition = Initialize-PasswordPolicyAuthenticationProviderCondition -Include "MyInclude" -Provider "ACTIVE_DIRECTORY"

$Duration = Initialize-Duration -Number 0 -Unit "MyUnit"
$ScheduledUserLifecycleAction = Initialize-ScheduledUserLifecycleAction -Status "ACTIVATING"
$BeforeScheduledActionPolicyRuleCondition = Initialize-BeforeScheduledActionPolicyRuleCondition -Duration $Duration -LifecycleAction $ScheduledUserLifecycleAction

$ClientPolicyCondition = Initialize-ClientPolicyCondition -Include "MyInclude"

$DevicePolicyRuleConditionPlatform = Initialize-DevicePolicyRuleConditionPlatform -SupportedMDMFrameworks "AFW" -Types "ANDROID"
$ContextPolicyRuleCondition = Initialize-ContextPolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY" -Expression "MyExpression"

$DevicePolicyRuleCondition = Initialize-DevicePolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY"

$GrantTypePolicyRuleCondition = Initialize-GrantTypePolicyRuleCondition -Include "MyInclude"
$GroupPolicyRuleCondition = Initialize-GroupPolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$IdentityProviderPolicyRuleCondition = Initialize-IdentityProviderPolicyRuleCondition -IdpIds "MyIdpIds" -Provider "ANY"
$MDMEnrollmentPolicyRuleCondition = Initialize-MDMEnrollmentPolicyRuleCondition -BlockNonSafeAndroid $false -Enrollment "ANY_OR_NONE"
$PolicyNetworkCondition = Initialize-PolicyNetworkCondition -Connection "ANYWHERE" -Exclude "MyExclude" -Include "MyInclude"

$GroupCondition = Initialize-GroupCondition -Exclude "MyExclude" -Include "MyInclude"
$UserCondition = Initialize-UserCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyPeopleCondition = Initialize-PolicyPeopleCondition -Groups $GroupCondition -Users $UserCondition

$PlatformConditionEvaluatorPlatformOperatingSystemVersion = Initialize-PlatformConditionEvaluatorPlatformOperatingSystemVersion -MatchType "EXPRESSION" -Value "MyValue"
$PlatformConditionEvaluatorPlatformOperatingSystem = Initialize-PlatformConditionEvaluatorPlatformOperatingSystem -Expression "MyExpression" -Type "ANDROID" -Version $PlatformConditionEvaluatorPlatformOperatingSystemVersion

$PlatformConditionEvaluatorPlatform = Initialize-PlatformConditionEvaluatorPlatform -Os $PlatformConditionEvaluatorPlatformOperatingSystem -Type "ANY"

$PlatformPolicyRuleCondition = Initialize-PlatformPolicyRuleCondition -Exclude $PlatformConditionEvaluatorPlatform -Include $PlatformConditionEvaluatorPlatform

$RiskPolicyRuleCondition = Initialize-RiskPolicyRuleCondition -Behaviors "MyBehaviors"
$RiskScorePolicyRuleCondition = Initialize-RiskScorePolicyRuleCondition -Level "MyLevel"
$OAuth2ScopesMediationPolicyRuleCondition = Initialize-OAuth2ScopesMediationPolicyRuleCondition -Include "MyInclude"

$UserIdentifierConditionEvaluatorPattern = Initialize-UserIdentifierConditionEvaluatorPattern -MatchType "CONTAINS" -Value "MyValue"
$UserIdentifierPolicyRuleCondition = Initialize-UserIdentifierPolicyRuleCondition -Attribute "MyAttribute" -Patterns $UserIdentifierConditionEvaluatorPattern -Type "ATTRIBUTE"

$InactivityPolicyRuleCondition = Initialize-InactivityPolicyRuleCondition -Number 0 -Unit "MyUnit"
$LifecycleExpirationPolicyRuleCondition = Initialize-LifecycleExpirationPolicyRuleCondition -LifecycleStatus "MyLifecycleStatus" -Number 0 -Unit "MyUnit"
$PasswordExpirationPolicyRuleCondition = Initialize-PasswordExpirationPolicyRuleCondition -Number 0 -Unit "MyUnit"
$UserLifecycleAttributePolicyRuleCondition = Initialize-UserLifecycleAttributePolicyRuleCondition -AttributeName "MyAttributeName" -MatchingValue "MyMatchingValue"
$UserPolicyRuleCondition = Initialize-UserPolicyRuleCondition -Exclude "MyExclude" -Inactivity $InactivityPolicyRuleCondition -Include "MyInclude" -LifecycleExpiration $LifecycleExpirationPolicyRuleCondition -PasswordExpiration $PasswordExpirationPolicyRuleCondition -UserLifecycleAttribute $UserLifecycleAttributePolicyRuleCondition

$UserStatusPolicyRuleCondition = Initialize-UserStatusPolicyRuleCondition -Value "ACTIVATING"
$PolicyRuleConditions = Initialize-PolicyRuleConditions -App $AppAndInstancePolicyRuleCondition -Apps $AppInstancePolicyRuleCondition -AuthContext $PolicyRuleAuthContextCondition -AuthProvider $PasswordPolicyAuthenticationProviderCondition -BeforeScheduledAction $BeforeScheduledActionPolicyRuleCondition -Clients $ClientPolicyCondition -Context $ContextPolicyRuleCondition -Device $DevicePolicyRuleCondition -GrantTypes $GrantTypePolicyRuleCondition -Groups $GroupPolicyRuleCondition -IdentityProvider $IdentityProviderPolicyRuleCondition -MdmEnrollment $MDMEnrollmentPolicyRuleCondition -Network $PolicyNetworkCondition -People $PolicyPeopleCondition -Platform $PlatformPolicyRuleCondition -Risk $RiskPolicyRuleCondition -RiskScore $RiskScorePolicyRuleCondition -Scopes $OAuth2ScopesMediationPolicyRuleCondition -UserIdentifier $UserIdentifierPolicyRuleCondition -Users $UserPolicyRuleCondition -UserStatus $UserStatusPolicyRuleCondition

$AuthorizationServerPolicy = Initialize-AuthorizationServerPolicy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } -Conditions $PolicyRuleConditions # AuthorizationServerPolicy | 

# Replace a Policy
try {
    $Result = Update-AuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId -Policy $Policy
} catch {
    Write-Host ("Exception occurred when calling Update-AuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **PolicyId** | **String**|  | 
 **Policy** | [**AuthorizationServerPolicy**](AuthorizationServerPolicy.md)|  | 

### Return type

[**AuthorizationServerPolicy**](AuthorizationServerPolicy.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-AuthorizationServerPolicyRule"></a>
# **Update-AuthorizationServerPolicyRule**
> AuthorizationServerPolicyRule Update-AuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Replace a Policy Rule

Updates the configuration of the Policy Rule defined in the specified Custom Authorization Server and Policy.

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
$AuthServerId = "MyAuthServerId" # String | 
$RuleId = "MyRuleId" # String | 
$PolicyRuleActionsEnroll = Initialize-PolicyRuleActionsEnroll -Self "CHALLENGE"

$IdpPolicyRuleActionProvider = Initialize-IdpPolicyRuleActionProvider -Id "MyId" -Type "MyType"
$IdpPolicyRuleAction = Initialize-IdpPolicyRuleAction -Providers $IdpPolicyRuleActionProvider

$PasswordPolicyRuleAction = Initialize-PasswordPolicyRuleAction -Access "ALLOW"

$OktaSignOnPolicyRuleSignonSessionActions = Initialize-OktaSignOnPolicyRuleSignonSessionActions -MaxSessionIdleMinutes 0 -MaxSessionLifetimeMinutes 0 -UsePersistentCookie $false
$OktaSignOnPolicyRuleSignonActions = Initialize-OktaSignOnPolicyRuleSignonActions -Access "ALLOW" -FactorLifetime 0 -FactorPromptMode "ALWAYS" -RememberDeviceByDefault $false -RequireFactor $false -Session $OktaSignOnPolicyRuleSignonSessionActions

$TokenAuthorizationServerPolicyRuleActionInlineHook = Initialize-TokenAuthorizationServerPolicyRuleActionInlineHook -Id "MyId"
$TokenAuthorizationServerPolicyRuleAction = Initialize-TokenAuthorizationServerPolicyRuleAction -AccessTokenLifetimeMinutes 0 -InlineHook $TokenAuthorizationServerPolicyRuleActionInlineHook -RefreshTokenLifetimeMinutes 0 -RefreshTokenWindowMinutes 0

$AuthorizationServerPolicyRuleActions = Initialize-AuthorizationServerPolicyRuleActions -Enroll $PolicyRuleActionsEnroll -Idp $IdpPolicyRuleAction -PasswordChange $PasswordPolicyRuleAction -SelfServicePasswordReset $PasswordPolicyRuleAction -SelfServiceUnlock $PasswordPolicyRuleAction -Signon $OktaSignOnPolicyRuleSignonActions -Token $TokenAuthorizationServerPolicyRuleAction

$AppAndInstanceConditionEvaluatorAppOrInstance = Initialize-AppAndInstanceConditionEvaluatorAppOrInstance -Id "MyId" -Name "MyName" -Type "APP"
$AppAndInstancePolicyRuleCondition = Initialize-AppAndInstancePolicyRuleCondition -Exclude $AppAndInstanceConditionEvaluatorAppOrInstance -Include $AppAndInstanceConditionEvaluatorAppOrInstance

$AppInstancePolicyRuleCondition = Initialize-AppInstancePolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyRuleAuthContextCondition = Initialize-PolicyRuleAuthContextCondition -AuthType "ANY"
$PasswordPolicyAuthenticationProviderCondition = Initialize-PasswordPolicyAuthenticationProviderCondition -Include "MyInclude" -Provider "ACTIVE_DIRECTORY"

$Duration = Initialize-Duration -Number 0 -Unit "MyUnit"
$ScheduledUserLifecycleAction = Initialize-ScheduledUserLifecycleAction -Status "ACTIVATING"
$BeforeScheduledActionPolicyRuleCondition = Initialize-BeforeScheduledActionPolicyRuleCondition -Duration $Duration -LifecycleAction $ScheduledUserLifecycleAction

$ClientPolicyCondition = Initialize-ClientPolicyCondition -Include "MyInclude"

$DevicePolicyRuleConditionPlatform = Initialize-DevicePolicyRuleConditionPlatform -SupportedMDMFrameworks "AFW" -Types "ANDROID"
$ContextPolicyRuleCondition = Initialize-ContextPolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY" -Expression "MyExpression"

$DevicePolicyRuleCondition = Initialize-DevicePolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY"

$GrantTypePolicyRuleCondition = Initialize-GrantTypePolicyRuleCondition -Include "MyInclude"
$GroupPolicyRuleCondition = Initialize-GroupPolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$IdentityProviderPolicyRuleCondition = Initialize-IdentityProviderPolicyRuleCondition -IdpIds "MyIdpIds" -Provider "ANY"
$MDMEnrollmentPolicyRuleCondition = Initialize-MDMEnrollmentPolicyRuleCondition -BlockNonSafeAndroid $false -Enrollment "ANY_OR_NONE"
$PolicyNetworkCondition = Initialize-PolicyNetworkCondition -Connection "ANYWHERE" -Exclude "MyExclude" -Include "MyInclude"

$GroupCondition = Initialize-GroupCondition -Exclude "MyExclude" -Include "MyInclude"
$UserCondition = Initialize-UserCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyPeopleCondition = Initialize-PolicyPeopleCondition -Groups $GroupCondition -Users $UserCondition

$PlatformConditionEvaluatorPlatformOperatingSystemVersion = Initialize-PlatformConditionEvaluatorPlatformOperatingSystemVersion -MatchType "EXPRESSION" -Value "MyValue"
$PlatformConditionEvaluatorPlatformOperatingSystem = Initialize-PlatformConditionEvaluatorPlatformOperatingSystem -Expression "MyExpression" -Type "ANDROID" -Version $PlatformConditionEvaluatorPlatformOperatingSystemVersion

$PlatformConditionEvaluatorPlatform = Initialize-PlatformConditionEvaluatorPlatform -Os $PlatformConditionEvaluatorPlatformOperatingSystem -Type "ANY"

$PlatformPolicyRuleCondition = Initialize-PlatformPolicyRuleCondition -Exclude $PlatformConditionEvaluatorPlatform -Include $PlatformConditionEvaluatorPlatform

$RiskPolicyRuleCondition = Initialize-RiskPolicyRuleCondition -Behaviors "MyBehaviors"
$RiskScorePolicyRuleCondition = Initialize-RiskScorePolicyRuleCondition -Level "MyLevel"
$OAuth2ScopesMediationPolicyRuleCondition = Initialize-OAuth2ScopesMediationPolicyRuleCondition -Include "MyInclude"

$UserIdentifierConditionEvaluatorPattern = Initialize-UserIdentifierConditionEvaluatorPattern -MatchType "CONTAINS" -Value "MyValue"
$UserIdentifierPolicyRuleCondition = Initialize-UserIdentifierPolicyRuleCondition -Attribute "MyAttribute" -Patterns $UserIdentifierConditionEvaluatorPattern -Type "ATTRIBUTE"

$InactivityPolicyRuleCondition = Initialize-InactivityPolicyRuleCondition -Number 0 -Unit "MyUnit"
$LifecycleExpirationPolicyRuleCondition = Initialize-LifecycleExpirationPolicyRuleCondition -LifecycleStatus "MyLifecycleStatus" -Number 0 -Unit "MyUnit"
$PasswordExpirationPolicyRuleCondition = Initialize-PasswordExpirationPolicyRuleCondition -Number 0 -Unit "MyUnit"
$UserLifecycleAttributePolicyRuleCondition = Initialize-UserLifecycleAttributePolicyRuleCondition -AttributeName "MyAttributeName" -MatchingValue "MyMatchingValue"
$UserPolicyRuleCondition = Initialize-UserPolicyRuleCondition -Exclude "MyExclude" -Inactivity $InactivityPolicyRuleCondition -Include "MyInclude" -LifecycleExpiration $LifecycleExpirationPolicyRuleCondition -PasswordExpiration $PasswordExpirationPolicyRuleCondition -UserLifecycleAttribute $UserLifecycleAttributePolicyRuleCondition

$UserStatusPolicyRuleCondition = Initialize-UserStatusPolicyRuleCondition -Value "ACTIVATING"
$AuthorizationServerPolicyRuleConditions = Initialize-AuthorizationServerPolicyRuleConditions -App $AppAndInstancePolicyRuleCondition -Apps $AppInstancePolicyRuleCondition -AuthContext $PolicyRuleAuthContextCondition -AuthProvider $PasswordPolicyAuthenticationProviderCondition -BeforeScheduledAction $BeforeScheduledActionPolicyRuleCondition -Clients $ClientPolicyCondition -Context $ContextPolicyRuleCondition -Device $DevicePolicyRuleCondition -GrantTypes $GrantTypePolicyRuleCondition -Groups $GroupPolicyRuleCondition -IdentityProvider $IdentityProviderPolicyRuleCondition -MdmEnrollment $MDMEnrollmentPolicyRuleCondition -Network $PolicyNetworkCondition -People $PolicyPeopleCondition -Platform $PlatformPolicyRuleCondition -Risk $RiskPolicyRuleCondition -RiskScore $RiskScorePolicyRuleCondition -Scopes $OAuth2ScopesMediationPolicyRuleCondition -UserIdentifier $UserIdentifierPolicyRuleCondition -Users $UserPolicyRuleCondition -UserStatus $UserStatusPolicyRuleCondition

$AuthorizationServerPolicyRule = Initialize-AuthorizationServerPolicyRule -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Actions $AuthorizationServerPolicyRuleActions -Conditions $AuthorizationServerPolicyRuleConditions # AuthorizationServerPolicyRule | 

# Replace a Policy Rule
try {
    $Result = Update-AuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -RuleId $RuleId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling Update-AuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PolicyId** | **String**|  | 
 **AuthServerId** | **String**|  | 
 **RuleId** | **String**|  | 
 **PolicyRule** | [**AuthorizationServerPolicyRule**](AuthorizationServerPolicyRule.md)|  | 

### Return type

[**AuthorizationServerPolicyRule**](AuthorizationServerPolicyRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-OAuth2Claim"></a>
# **Update-OAuth2Claim**
> OAuth2Claim Update-OAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Claim] <PSCustomObject><br>

Replace a Custom Token Claim

Replace a custom token claim

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

$AuthServerId = "MyAuthServerId" # String | 
$ClaimId = "MyClaimId" # String | 
$OAuth2ClaimConditions = Initialize-OAuth2ClaimConditions -Scopes "MyScopes"
$OAuth2Claim = Initialize-OAuth2Claim -AlwaysIncludeInToken $false -ClaimType "IDENTITY" -Conditions $OAuth2ClaimConditions -GroupFilterType "CONTAINS" -Id "MyId" -Name "MyName" -Status "ACTIVE" -System $false -Value "MyValue" -ValueType "EXPRESSION" -Links @{ key_example =  } # OAuth2Claim | 

# Replace a Custom Token Claim
try {
    $Result = Update-OAuth2Claim -AuthServerId $AuthServerId -ClaimId $ClaimId -OAuth2Claim $OAuth2Claim
} catch {
    Write-Host ("Exception occurred when calling Update-OAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ClaimId** | **String**|  | 
 **OAuth2Claim** | [**OAuth2Claim**](OAuth2Claim.md)|  | 

### Return type

[**OAuth2Claim**](OAuth2Claim.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-OAuth2Scope"></a>
# **Update-OAuth2Scope**
> OAuth2Scope Update-OAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScopeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Scope] <PSCustomObject><br>

Replace a Custom Token Scope

Replace a custom token scope

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

$AuthServerId = "MyAuthServerId" # String | 
$ScopeId = "MyScopeId" # String | 
$OAuth2Scope = Initialize-OAuth2Scope -Consent "ADMIN" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -MetadataPublish "ALL_CLIENTS" -Name "MyName" -System $false # OAuth2Scope | 

# Replace a Custom Token Scope
try {
    $Result = Update-OAuth2Scope -AuthServerId $AuthServerId -ScopeId $ScopeId -OAuth2Scope $OAuth2Scope
} catch {
    Write-Host ("Exception occurred when calling Update-OAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AuthServerId** | **String**|  | 
 **ScopeId** | **String**|  | 
 **OAuth2Scope** | [**OAuth2Scope**](OAuth2Scope.md)|  | 

### Return type

[**OAuth2Scope**](OAuth2Scope.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

