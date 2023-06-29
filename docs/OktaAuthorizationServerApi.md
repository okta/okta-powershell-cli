# Okta.PowerShell.Okta.PowerShell\Api.OktaAuthorizationServerApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateAuthorizationServer**](OktaAuthorizationServerApi.md#Invoke-OktaActivateAuthorizationServer) | **POST** /api/v1/authorizationServers/{authServerId}/lifecycle/activate | Activate an Authorization Server
[**Invoke-OktaActivateAuthorizationServerPolicy**](OktaAuthorizationServerApi.md#Invoke-OktaActivateAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/activate | Activate a Policy
[**Invoke-OktaActivateAuthorizationServerPolicyRule**](OktaAuthorizationServerApi.md#Invoke-OktaActivateAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/activate | Activate a Policy Rule
[**New-OktaAuthorizationServer**](OktaAuthorizationServerApi.md#New-OktaAuthorizationServer) | **POST** /api/v1/authorizationServers | Create an Authorization Server
[**New-OktaAuthorizationServerPolicy**](OktaAuthorizationServerApi.md#New-OktaAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies | Create a Policy
[**New-OktaAuthorizationServerPolicyRule**](OktaAuthorizationServerApi.md#New-OktaAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules | Create a Policy Rule
[**New-OktaOAuth2Claim**](OktaAuthorizationServerApi.md#New-OktaOAuth2Claim) | **POST** /api/v1/authorizationServers/{authServerId}/claims | Create a Custom Token Claim
[**New-OktaOAuth2Scope**](OktaAuthorizationServerApi.md#New-OktaOAuth2Scope) | **POST** /api/v1/authorizationServers/{authServerId}/scopes | Create a Custom Token Scope
[**Invoke-OktaDeactivateAuthorizationServer**](OktaAuthorizationServerApi.md#Invoke-OktaDeactivateAuthorizationServer) | **POST** /api/v1/authorizationServers/{authServerId}/lifecycle/deactivate | Deactivate an Authorization Server
[**Invoke-OktaDeactivateAuthorizationServerPolicy**](OktaAuthorizationServerApi.md#Invoke-OktaDeactivateAuthorizationServerPolicy) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/lifecycle/deactivate | Deactivate a Policy
[**Invoke-OktaDeactivateAuthorizationServerPolicyRule**](OktaAuthorizationServerApi.md#Invoke-OktaDeactivateAuthorizationServerPolicyRule) | **POST** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId}/lifecycle/deactivate | Deactivate a Policy Rule
[**Invoke-OktaDeleteAuthorizationServer**](OktaAuthorizationServerApi.md#Invoke-OktaDeleteAuthorizationServer) | **DELETE** /api/v1/authorizationServers/{authServerId} | Delete an Authorization Server
[**Invoke-OktaDeleteAuthorizationServerPolicy**](OktaAuthorizationServerApi.md#Invoke-OktaDeleteAuthorizationServerPolicy) | **DELETE** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Delete a Policy
[**Invoke-OktaDeleteAuthorizationServerPolicyRule**](OktaAuthorizationServerApi.md#Invoke-OktaDeleteAuthorizationServerPolicyRule) | **DELETE** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Delete a Policy Rule
[**Invoke-OktaDeleteOAuth2Claim**](OktaAuthorizationServerApi.md#Invoke-OktaDeleteOAuth2Claim) | **DELETE** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Delete a Custom Token Claim
[**Invoke-OktaDeleteOAuth2Scope**](OktaAuthorizationServerApi.md#Invoke-OktaDeleteOAuth2Scope) | **DELETE** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Delete a Custom Token Scope
[**Get-OktaAuthorizationServer**](OktaAuthorizationServerApi.md#Get-OktaAuthorizationServer) | **GET** /api/v1/authorizationServers/{authServerId} | Retrieve an Authorization Server
[**Get-OktaAuthorizationServerPolicy**](OktaAuthorizationServerApi.md#Get-OktaAuthorizationServerPolicy) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Retrieve a Policy
[**Get-OktaAuthorizationServerPolicyRule**](OktaAuthorizationServerApi.md#Get-OktaAuthorizationServerPolicyRule) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Retrieve a Policy Rule
[**Get-OktaOAuth2Claim**](OktaAuthorizationServerApi.md#Get-OktaOAuth2Claim) | **GET** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Retrieve a Custom Token Claim
[**Get-OktaOAuth2Scope**](OktaAuthorizationServerApi.md#Get-OktaOAuth2Scope) | **GET** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Retrieve a Custom Token Scope
[**Get-OktaRefreshTokenForAuthorizationServerAndClient**](OktaAuthorizationServerApi.md#Get-OktaRefreshTokenForAuthorizationServerAndClient) | **GET** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId} | Retrieve a Refresh Token for a Client
[**Invoke-OktaListAuthorizationServerKeys**](OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServerKeys) | **GET** /api/v1/authorizationServers/{authServerId}/credentials/keys | List all Credential Keys
[**Invoke-OktaListAuthorizationServerPolicies**](OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServerPolicies) | **GET** /api/v1/authorizationServers/{authServerId}/policies | List all Policies
[**Invoke-OktaListAuthorizationServerPolicyRules**](OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServerPolicyRules) | **GET** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules | List all Policy Rules
[**Invoke-OktaListAuthorizationServers**](OktaAuthorizationServerApi.md#Invoke-OktaListAuthorizationServers) | **GET** /api/v1/authorizationServers | List all Authorization Servers
[**Invoke-OktaListOAuth2Claims**](OktaAuthorizationServerApi.md#Invoke-OktaListOAuth2Claims) | **GET** /api/v1/authorizationServers/{authServerId}/claims | List all Custom Token Claims
[**Invoke-OktaListOAuth2ClientsForAuthorizationServer**](OktaAuthorizationServerApi.md#Invoke-OktaListOAuth2ClientsForAuthorizationServer) | **GET** /api/v1/authorizationServers/{authServerId}/clients | List all Clients
[**Invoke-OktaListOAuth2Scopes**](OktaAuthorizationServerApi.md#Invoke-OktaListOAuth2Scopes) | **GET** /api/v1/authorizationServers/{authServerId}/scopes | List all Custom Token Scopes
[**Invoke-OktaListRefreshTokensForAuthorizationServerAndClient**](OktaAuthorizationServerApi.md#Invoke-OktaListRefreshTokensForAuthorizationServerAndClient) | **GET** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens | List all Refresh Tokens for a Client
[**Revoke-OktaRefreshTokenForAuthorizationServerAndClient**](OktaAuthorizationServerApi.md#Revoke-OktaRefreshTokenForAuthorizationServerAndClient) | **DELETE** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens/{tokenId} | Revoke a Refresh Token for a Client
[**Revoke-OktaRefreshTokensForAuthorizationServerAndClient**](OktaAuthorizationServerApi.md#Revoke-OktaRefreshTokensForAuthorizationServerAndClient) | **DELETE** /api/v1/authorizationServers/{authServerId}/clients/{clientId}/tokens | Revoke all Refresh Tokens for a Client
[**Invoke-OktaRotateAuthorizationServerKeys**](OktaAuthorizationServerApi.md#Invoke-OktaRotateAuthorizationServerKeys) | **POST** /api/v1/authorizationServers/{authServerId}/credentials/lifecycle/keyRotate | Rotate all Credential Keys
[**Update-OktaAuthorizationServer**](OktaAuthorizationServerApi.md#Update-OktaAuthorizationServer) | **PUT** /api/v1/authorizationServers/{authServerId} | Replace an Authorization Server
[**Update-OktaAuthorizationServerPolicy**](OktaAuthorizationServerApi.md#Update-OktaAuthorizationServerPolicy) | **PUT** /api/v1/authorizationServers/{authServerId}/policies/{policyId} | Replace a Policy
[**Update-OktaAuthorizationServerPolicyRule**](OktaAuthorizationServerApi.md#Update-OktaAuthorizationServerPolicyRule) | **PUT** /api/v1/authorizationServers/{authServerId}/policies/{policyId}/rules/{ruleId} | Replace a Policy Rule
[**Update-OktaOAuth2Claim**](OktaAuthorizationServerApi.md#Update-OktaOAuth2Claim) | **PUT** /api/v1/authorizationServers/{authServerId}/claims/{claimId} | Replace a Custom Token Claim
[**Update-OktaOAuth2Scope**](OktaAuthorizationServerApi.md#Update-OktaOAuth2Scope) | **PUT** /api/v1/authorizationServers/{authServerId}/scopes/{scopeId} | Replace a Custom Token Scope


<a id="Invoke-OktaActivateAuthorizationServer"></a>
# **Invoke-OktaActivateAuthorizationServer**
> void Invoke-OktaActivateAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Activate an Authorization Server

Activate an authorization server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# Activate an Authorization Server
try {
    $Result = Invoke-OktaActivateAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaActivateAuthorizationServerPolicy"></a>
# **Invoke-OktaActivateAuthorizationServerPolicy**
> void Invoke-OktaActivateAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Activate a Policy

Activate Authorization Server Policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Activate a Policy
try {
    $Result = Invoke-OktaActivateAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaActivateAuthorizationServerPolicyRule"></a>
# **Invoke-OktaActivateAuthorizationServerPolicyRule**
> void Invoke-OktaActivateAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Activate a Policy Rule

Activate Authorization Server Policy Rule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Activate a Policy Rule
try {
    $Result = Invoke-OktaActivateAuthorizationServerPolicyRule -AuthServerId $AuthServerId -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaAuthorizationServer"></a>
# **New-OktaAuthorizationServer**
> AuthorizationServer New-OktaAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthorizationServer] <PSCustomObject><br>

Create an Authorization Server

Create an authorization server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthorizationServerCredentialsSigningConfig = Initialize-AuthorizationServerCredentialsSigningConfig -Kid "MyKid" -LastRotated (Get-Date) -NextRotation (Get-Date) -RotationMode "AUTO" -Use "sig"
$AuthorizationServerCredentials = Initialize-AuthorizationServerCredentials -Signing $AuthorizationServerCredentialsSigningConfig

$AuthorizationServer = Initialize-AuthorizationServer -Audiences "MyAudiences" -Created (Get-Date) -Credentials $AuthorizationServerCredentials -Description "MyDescription" -Id "MyId" -Issuer "MyIssuer" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Links @{ key_example =  } # AuthorizationServer | 

# Create an Authorization Server
try {
    $Result = New-OktaAuthorizationServer -AuthorizationServer $AuthorizationServer
} catch {
    Write-Host ("Exception occurred when calling New-OktaAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaAuthorizationServerPolicy"></a>
# **New-OktaAuthorizationServerPolicy**
> AuthorizationServerPolicy New-OktaAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>

Create a Policy

Create a policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

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
    $Result = New-OktaAuthorizationServerPolicy -AuthServerId $AuthServerId -Policy $Policy
} catch {
    Write-Host ("Exception occurred when calling New-OktaAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaAuthorizationServerPolicyRule"></a>
# **New-OktaAuthorizationServerPolicyRule**
> AuthorizationServerPolicyRule New-OktaAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Create a Policy Rule

Creates a policy rule for the specified Custom Authorization Server and Policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

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
    $Result = New-OktaAuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling New-OktaAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaOAuth2Claim"></a>
# **New-OktaOAuth2Claim**
> OAuth2Claim New-OktaOAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Claim] <PSCustomObject><br>

Create a Custom Token Claim

Create a custom token claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$OAuth2ClaimConditions = Initialize-OAuth2ClaimConditions -Scopes "MyScopes"
$OAuth2Claim = Initialize-OAuth2Claim -AlwaysIncludeInToken $false -ClaimType "IDENTITY" -Conditions $OAuth2ClaimConditions -GroupFilterType "CONTAINS" -Id "MyId" -Name "MyName" -Status "ACTIVE" -System $false -Value "MyValue" -ValueType "EXPRESSION" -Links @{ key_example =  } # OAuth2Claim | 

# Create a Custom Token Claim
try {
    $Result = New-OktaOAuth2Claim -AuthServerId $AuthServerId -OAuth2Claim $OAuth2Claim
} catch {
    Write-Host ("Exception occurred when calling New-OktaOAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaOAuth2Scope"></a>
# **New-OktaOAuth2Scope**
> OAuth2Scope New-OktaOAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Scope] <PSCustomObject><br>

Create a Custom Token Scope

Create a custom token scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$OAuth2Scope = Initialize-OAuth2Scope -Consent "ADMIN" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -MetadataPublish "ALL_CLIENTS" -Name "MyName" -System $false # OAuth2Scope | 

# Create a Custom Token Scope
try {
    $Result = New-OktaOAuth2Scope -AuthServerId $AuthServerId -OAuth2Scope $OAuth2Scope
} catch {
    Write-Host ("Exception occurred when calling New-OktaOAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateAuthorizationServer"></a>
# **Invoke-OktaDeactivateAuthorizationServer**
> void Invoke-OktaDeactivateAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Deactivate an Authorization Server

Deactivate an authorization server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# Deactivate an Authorization Server
try {
    $Result = Invoke-OktaDeactivateAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateAuthorizationServerPolicy"></a>
# **Invoke-OktaDeactivateAuthorizationServerPolicy**
> void Invoke-OktaDeactivateAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Deactivate a Policy

Deactivate Authorization Server Policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Deactivate a Policy
try {
    $Result = Invoke-OktaDeactivateAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateAuthorizationServerPolicyRule"></a>
# **Invoke-OktaDeactivateAuthorizationServerPolicyRule**
> void Invoke-OktaDeactivateAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Deactivate a Policy Rule

Deactivate Authorization Server Policy Rule

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 
$RuleId = "MyRuleId" # String | 

# Deactivate a Policy Rule
try {
    $Result = Invoke-OktaDeactivateAuthorizationServerPolicyRule -AuthServerId $AuthServerId -PolicyId $PolicyId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteAuthorizationServer"></a>
# **Invoke-OktaDeleteAuthorizationServer**
> void Invoke-OktaDeleteAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Delete an Authorization Server

Delete an authorization server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# Delete an Authorization Server
try {
    $Result = Invoke-OktaDeleteAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteAuthorizationServerPolicy"></a>
# **Invoke-OktaDeleteAuthorizationServerPolicy**
> void Invoke-OktaDeleteAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Delete a Policy

Delete a policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Delete a Policy
try {
    $Result = Invoke-OktaDeleteAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteAuthorizationServerPolicyRule"></a>
# **Invoke-OktaDeleteAuthorizationServerPolicyRule**
> void Invoke-OktaDeleteAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Delete a Policy Rule

Deletes a Policy Rule defined in the specified Custom Authorization Server and Policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$AuthServerId = "MyAuthServerId" # String | 
$RuleId = "MyRuleId" # String | 

# Delete a Policy Rule
try {
    $Result = Invoke-OktaDeleteAuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteOAuth2Claim"></a>
# **Invoke-OktaDeleteOAuth2Claim**
> void Invoke-OktaDeleteOAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <String><br>

Delete a Custom Token Claim

Delete a custom token claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ClaimId = "MyClaimId" # String | 

# Delete a Custom Token Claim
try {
    $Result = Invoke-OktaDeleteOAuth2Claim -AuthServerId $AuthServerId -ClaimId $ClaimId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteOAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteOAuth2Scope"></a>
# **Invoke-OktaDeleteOAuth2Scope**
> void Invoke-OktaDeleteOAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScopeId] <String><br>

Delete a Custom Token Scope

Delete a custom token scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ScopeId = "MyScopeId" # String | 

# Delete a Custom Token Scope
try {
    $Result = Invoke-OktaDeleteOAuth2Scope -AuthServerId $AuthServerId -ScopeId $ScopeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteOAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAuthorizationServer"></a>
# **Get-OktaAuthorizationServer**
> AuthorizationServer Get-OktaAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

Retrieve an Authorization Server

Retrieve an authorization server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# Retrieve an Authorization Server
try {
    $Result = Get-OktaAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAuthorizationServerPolicy"></a>
# **Get-OktaAuthorizationServerPolicy**
> AuthorizationServerPolicy Get-OktaAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Retrieve a Policy

Retrieve a policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Retrieve a Policy
try {
    $Result = Get-OktaAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaAuthorizationServerPolicyRule"></a>
# **Get-OktaAuthorizationServerPolicyRule**
> AuthorizationServerPolicyRule Get-OktaAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Retrieve a Policy Rule

Returns a Policy Rule by ID that is defined in the specified Custom Authorization Server and Policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$AuthServerId = "MyAuthServerId" # String | 
$RuleId = "MyRuleId" # String | 

# Retrieve a Policy Rule
try {
    $Result = Get-OktaAuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaOAuth2Claim"></a>
# **Get-OktaOAuth2Claim**
> OAuth2Claim Get-OktaOAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <String><br>

Retrieve a Custom Token Claim

Retrieve a custom token claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ClaimId = "MyClaimId" # String | 

# Retrieve a Custom Token Claim
try {
    $Result = Get-OktaOAuth2Claim -AuthServerId $AuthServerId -ClaimId $ClaimId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaOAuth2Scope"></a>
# **Get-OktaOAuth2Scope**
> OAuth2Scope Get-OktaOAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScopeId] <String><br>

Retrieve a Custom Token Scope

Retrieve a custom token scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ScopeId = "MyScopeId" # String | 

# Retrieve a Custom Token Scope
try {
    $Result = Get-OktaOAuth2Scope -AuthServerId $AuthServerId -ScopeId $ScopeId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaRefreshTokenForAuthorizationServerAndClient"></a>
# **Get-OktaRefreshTokenForAuthorizationServerAndClient**
> OAuth2RefreshToken Get-OktaRefreshTokenForAuthorizationServerAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Refresh Token for a Client

Retrieve a refresh token for a client

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a Refresh Token for a Client
try {
    $Result = Get-OktaRefreshTokenForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId -TokenId $TokenId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRefreshTokenForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAuthorizationServerKeys"></a>
# **Invoke-OktaListAuthorizationServerKeys**
> JsonWebKey[] Invoke-OktaListAuthorizationServerKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Credential Keys

List all credential keys

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# List all Credential Keys
try {
    $Result = Invoke-OktaListAuthorizationServerKeys -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAuthorizationServerKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAuthorizationServerPolicies"></a>
# **Invoke-OktaListAuthorizationServerPolicies**
> AuthorizationServerPolicy[] Invoke-OktaListAuthorizationServerPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Policies

List all policies

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# List all Policies
try {
    $Result = Invoke-OktaListAuthorizationServerPolicies -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAuthorizationServerPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAuthorizationServerPolicyRules"></a>
# **Invoke-OktaListAuthorizationServerPolicyRules**
> AuthorizationServerPolicyRule[] Invoke-OktaListAuthorizationServerPolicyRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Policy Rules

Enumerates all policy rules for the specified Custom Authorization Server and Policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$PolicyId = "MyPolicyId" # String | 
$AuthServerId = "MyAuthServerId" # String | 

# List all Policy Rules
try {
    $Result = Invoke-OktaListAuthorizationServerPolicyRules -PolicyId $PolicyId -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAuthorizationServerPolicyRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAuthorizationServers"></a>
# **Invoke-OktaListAuthorizationServers**
> AuthorizationServer[] Invoke-OktaListAuthorizationServers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Authorization Servers

List all authorization servers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$Q = "MyQ" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 200)
$After = "MyAfter" # String |  (optional)

# List all Authorization Servers
try {
    $Result = Invoke-OktaListAuthorizationServers -Q $Q -Limit $Limit -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAuthorizationServers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListOAuth2Claims"></a>
# **Invoke-OktaListOAuth2Claims**
> OAuth2Claim[] Invoke-OktaListOAuth2Claims<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Custom Token Claims

List all custom token claims

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# List all Custom Token Claims
try {
    $Result = Invoke-OktaListOAuth2Claims -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListOAuth2Claims: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListOAuth2ClientsForAuthorizationServer"></a>
# **Invoke-OktaListOAuth2ClientsForAuthorizationServer**
> OAuth2Client[] Invoke-OktaListOAuth2ClientsForAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>

List all Clients

List all clients

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 

# List all Clients
try {
    $Result = Invoke-OktaListOAuth2ClientsForAuthorizationServer -AuthServerId $AuthServerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListOAuth2ClientsForAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListOAuth2Scopes"></a>
# **Invoke-OktaListOAuth2Scopes**
> OAuth2Scope[] Invoke-OktaListOAuth2Scopes<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$Q = "MyQ" # String |  (optional)
$Filter = "MyFilter" # String |  (optional)
$Cursor = "MyCursor" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Custom Token Scopes
try {
    $Result = Invoke-OktaListOAuth2Scopes -AuthServerId $AuthServerId -Q $Q -Filter $Filter -Cursor $Cursor -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListOAuth2Scopes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListRefreshTokensForAuthorizationServerAndClient"></a>
# **Invoke-OktaListRefreshTokensForAuthorizationServerAndClient**
> OAuth2RefreshToken[] Invoke-OktaListRefreshTokensForAuthorizationServerAndClient<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Refresh Tokens for a Client
try {
    $Result = Invoke-OktaListRefreshTokensForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListRefreshTokensForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaRefreshTokenForAuthorizationServerAndClient"></a>
# **Revoke-OktaRefreshTokenForAuthorizationServerAndClient**
> void Revoke-OktaRefreshTokenForAuthorizationServerAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

Revoke a Refresh Token for a Client

Revoke a refresh token for a client

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 

# Revoke a Refresh Token for a Client
try {
    $Result = Revoke-OktaRefreshTokenForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaRefreshTokenForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaRefreshTokensForAuthorizationServerAndClient"></a>
# **Revoke-OktaRefreshTokensForAuthorizationServerAndClient**
> void Revoke-OktaRefreshTokensForAuthorizationServerAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>

Revoke all Refresh Tokens for a Client

Revoke all refresh tokens for a client

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ClientId = "MyClientId" # String | 

# Revoke all Refresh Tokens for a Client
try {
    $Result = Revoke-OktaRefreshTokensForAuthorizationServerAndClient -AuthServerId $AuthServerId -ClientId $ClientId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaRefreshTokensForAuthorizationServerAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaRotateAuthorizationServerKeys"></a>
# **Invoke-OktaRotateAuthorizationServerKeys**
> JsonWebKey[] Invoke-OktaRotateAuthorizationServerKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Use] <PSCustomObject><br>

Rotate all Credential Keys

Rotate all credential keys

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$JwkUse = Initialize-JwkUse -Use "sig" # JwkUse | 

# Rotate all Credential Keys
try {
    $Result = Invoke-OktaRotateAuthorizationServerKeys -AuthServerId $AuthServerId -Use $Use
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaRotateAuthorizationServerKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaAuthorizationServer"></a>
# **Update-OktaAuthorizationServer**
> AuthorizationServer Update-OktaAuthorizationServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthorizationServer] <PSCustomObject><br>

Replace an Authorization Server

Replace an authorization server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$AuthorizationServerCredentialsSigningConfig = Initialize-AuthorizationServerCredentialsSigningConfig -Kid "MyKid" -LastRotated (Get-Date) -NextRotation (Get-Date) -RotationMode "AUTO" -Use "sig"
$AuthorizationServerCredentials = Initialize-AuthorizationServerCredentials -Signing $AuthorizationServerCredentialsSigningConfig

$AuthorizationServer = Initialize-AuthorizationServer -Audiences "MyAudiences" -Created (Get-Date) -Credentials $AuthorizationServerCredentials -Description "MyDescription" -Id "MyId" -Issuer "MyIssuer" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Links @{ key_example =  } # AuthorizationServer | 

# Replace an Authorization Server
try {
    $Result = Update-OktaAuthorizationServer -AuthServerId $AuthServerId -AuthorizationServer $AuthorizationServer
} catch {
    Write-Host ("Exception occurred when calling Update-OktaAuthorizationServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaAuthorizationServerPolicy"></a>
# **Update-OktaAuthorizationServerPolicy**
> AuthorizationServerPolicy Update-OktaAuthorizationServerPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <PSCustomObject><br>

Replace a Policy

Replace a policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

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
    $Result = Update-OktaAuthorizationServerPolicy -AuthServerId $AuthServerId -PolicyId $PolicyId -Policy $Policy
} catch {
    Write-Host ("Exception occurred when calling Update-OktaAuthorizationServerPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaAuthorizationServerPolicyRule"></a>
# **Update-OktaAuthorizationServerPolicyRule**
> AuthorizationServerPolicyRule Update-OktaAuthorizationServerPolicyRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyRule] <PSCustomObject><br>

Replace a Policy Rule

Updates the configuration of the Policy Rule defined in the specified Custom Authorization Server and Policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

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
    $Result = Update-OktaAuthorizationServerPolicyRule -PolicyId $PolicyId -AuthServerId $AuthServerId -RuleId $RuleId -PolicyRule $PolicyRule
} catch {
    Write-Host ("Exception occurred when calling Update-OktaAuthorizationServerPolicyRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaOAuth2Claim"></a>
# **Update-OktaOAuth2Claim**
> OAuth2Claim Update-OktaOAuth2Claim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClaimId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Claim] <PSCustomObject><br>

Replace a Custom Token Claim

Replace a custom token claim

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ClaimId = "MyClaimId" # String | 
$OAuth2ClaimConditions = Initialize-OAuth2ClaimConditions -Scopes "MyScopes"
$OAuth2Claim = Initialize-OAuth2Claim -AlwaysIncludeInToken $false -ClaimType "IDENTITY" -Conditions $OAuth2ClaimConditions -GroupFilterType "CONTAINS" -Id "MyId" -Name "MyName" -Status "ACTIVE" -System $false -Value "MyValue" -ValueType "EXPRESSION" -Links @{ key_example =  } # OAuth2Claim | 

# Replace a Custom Token Claim
try {
    $Result = Update-OktaOAuth2Claim -AuthServerId $AuthServerId -ClaimId $ClaimId -OAuth2Claim $OAuth2Claim
} catch {
    Write-Host ("Exception occurred when calling Update-OktaOAuth2Claim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaOAuth2Scope"></a>
# **Update-OktaOAuth2Scope**
> OAuth2Scope Update-OktaOAuth2Scope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AuthServerId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScopeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2Scope] <PSCustomObject><br>

Replace a Custom Token Scope

Replace a custom token scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$AuthServerId = "MyAuthServerId" # String | 
$ScopeId = "MyScopeId" # String | 
$OAuth2Scope = Initialize-OAuth2Scope -Consent "ADMIN" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -MetadataPublish "ALL_CLIENTS" -Name "MyName" -System $false # OAuth2Scope | 

# Replace a Custom Token Scope
try {
    $Result = Update-OktaOAuth2Scope -AuthServerId $AuthServerId -ScopeId $ScopeId -OAuth2Scope $OAuth2Scope
} catch {
    Write-Host ("Exception occurred when calling Update-OktaOAuth2Scope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

