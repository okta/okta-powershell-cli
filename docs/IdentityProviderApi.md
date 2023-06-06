# PSOpenAPITools.PSOpenAPITools\Api.IdentityProviderApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateIdentityProvider**](IdentityProviderApi.md#Invoke-ActivateIdentityProvider) | **POST** /api/v1/idps/{idpId}/lifecycle/activate | Activate an Identity Provider
[**Copy-IdentityProviderKey**](IdentityProviderApi.md#Copy-IdentityProviderKey) | **POST** /api/v1/idps/{idpId}/credentials/keys/{keyId}/clone | Clone a Signing Credential Key
[**New-IdentityProvider**](IdentityProviderApi.md#New-IdentityProvider) | **POST** /api/v1/idps | Create an Identity Provider
[**New-IdentityProviderKey**](IdentityProviderApi.md#New-IdentityProviderKey) | **POST** /api/v1/idps/credentials/keys | Create an X.509 Certificate Public Key
[**Invoke-DeactivateIdentityProvider**](IdentityProviderApi.md#Invoke-DeactivateIdentityProvider) | **POST** /api/v1/idps/{idpId}/lifecycle/deactivate | Deactivate an Identity Provider
[**Invoke-DeleteIdentityProvider**](IdentityProviderApi.md#Invoke-DeleteIdentityProvider) | **DELETE** /api/v1/idps/{idpId} | Delete an Identity Provider
[**Invoke-DeleteIdentityProviderKey**](IdentityProviderApi.md#Invoke-DeleteIdentityProviderKey) | **DELETE** /api/v1/idps/credentials/keys/{keyId} | Delete a Signing Credential Key
[**New-CsrForIdentityProvider**](IdentityProviderApi.md#New-CsrForIdentityProvider) | **POST** /api/v1/idps/{idpId}/credentials/csrs | Generate a Certificate Signing Request
[**New-IdentityProviderSigningKey**](IdentityProviderApi.md#New-IdentityProviderSigningKey) | **POST** /api/v1/idps/{idpId}/credentials/keys/generate | Generate a new Signing Credential Key
[**Get-CsrForIdentityProvider**](IdentityProviderApi.md#Get-CsrForIdentityProvider) | **GET** /api/v1/idps/{idpId}/credentials/csrs/{csrId} | Retrieve a Certificate Signing Request
[**Get-IdentityProvider**](IdentityProviderApi.md#Get-IdentityProvider) | **GET** /api/v1/idps/{idpId} | Retrieve an Identity Provider
[**Get-IdentityProviderApplicationUser**](IdentityProviderApi.md#Get-IdentityProviderApplicationUser) | **GET** /api/v1/idps/{idpId}/users/{userId} | Retrieve a User
[**Get-IdentityProviderKey**](IdentityProviderApi.md#Get-IdentityProviderKey) | **GET** /api/v1/idps/credentials/keys/{keyId} | Retrieve an Credential Key
[**Get-IdentityProviderSigningKey**](IdentityProviderApi.md#Get-IdentityProviderSigningKey) | **GET** /api/v1/idps/{idpId}/credentials/keys/{keyId} | Retrieve a Signing Credential Key
[**Invoke-LinkUserToIdentityProvider**](IdentityProviderApi.md#Invoke-LinkUserToIdentityProvider) | **POST** /api/v1/idps/{idpId}/users/{userId} | Link a User to a Social IdP
[**Invoke-ListCsrsForIdentityProvider**](IdentityProviderApi.md#Invoke-ListCsrsForIdentityProvider) | **GET** /api/v1/idps/{idpId}/credentials/csrs | List all Certificate Signing Requests
[**Invoke-ListIdentityProviderApplicationUsers**](IdentityProviderApi.md#Invoke-ListIdentityProviderApplicationUsers) | **GET** /api/v1/idps/{idpId}/users | List all Users
[**Invoke-ListIdentityProviderKeys**](IdentityProviderApi.md#Invoke-ListIdentityProviderKeys) | **GET** /api/v1/idps/credentials/keys | List all Credential Keys
[**Invoke-ListIdentityProviderSigningKeys**](IdentityProviderApi.md#Invoke-ListIdentityProviderSigningKeys) | **GET** /api/v1/idps/{idpId}/credentials/keys | List all Signing Credential Keys
[**Invoke-ListIdentityProviders**](IdentityProviderApi.md#Invoke-ListIdentityProviders) | **GET** /api/v1/idps | List all Identity Providers
[**Invoke-ListSocialAuthTokens**](IdentityProviderApi.md#Invoke-ListSocialAuthTokens) | **GET** /api/v1/idps/{idpId}/users/{userId}/credentials/tokens | List all Tokens from a OIDC Identity Provider
[**Publish-CsrForIdentityProvider**](IdentityProviderApi.md#Publish-CsrForIdentityProvider) | **POST** /api/v1/idps/{idpId}/credentials/csrs/{csrId}/lifecycle/publish | Publish a Certificate Signing Request
[**Revoke-CsrForIdentityProvider**](IdentityProviderApi.md#Revoke-CsrForIdentityProvider) | **DELETE** /api/v1/idps/{idpId}/credentials/csrs/{csrId} | Revoke a Certificate Signing Request
[**Invoke-UnlinkUserFromIdentityProvider**](IdentityProviderApi.md#Invoke-UnlinkUserFromIdentityProvider) | **DELETE** /api/v1/idps/{idpId}/users/{userId} | Unlink a User from IdP
[**Update-IdentityProvider**](IdentityProviderApi.md#Update-IdentityProvider) | **PUT** /api/v1/idps/{idpId} | Replace an Identity Provider


<a name="Invoke-ActivateIdentityProvider"></a>
# **Invoke-ActivateIdentityProvider**
> IdentityProvider Invoke-ActivateIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Activate an Identity Provider

Activates an inactive IdP.

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

$IdpId = "MyIdpId" # String | 

# Activate an Identity Provider
try {
    $Result = Invoke-ActivateIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 

### Return type

[**IdentityProvider**](IdentityProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Copy-IdentityProviderKey"></a>
# **Copy-IdentityProviderKey**
> JsonWebKey Copy-IdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetIdpId] <String><br>

Clone a Signing Credential Key

Clones a X.509 certificate for an IdP signing key credential from a source IdP to target IdP

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

$IdpId = "MyIdpId" # String | 
$KeyId = "MyKeyId" # String | 
$TargetIdpId = "MyTargetIdpId" # String | 

# Clone a Signing Credential Key
try {
    $Result = Copy-IdentityProviderKey -IdpId $IdpId -KeyId $KeyId -TargetIdpId $TargetIdpId
} catch {
    Write-Host ("Exception occurred when calling Copy-IdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **KeyId** | **String**|  | 
 **TargetIdpId** | **String**|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-IdentityProvider"></a>
# **New-IdentityProvider**
> IdentityProvider New-IdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProvider] <PSCustomObject><br>

Create an Identity Provider

Adds a new IdP to your organization.

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

$PolicyAccountLinkFilterGroups = Initialize-PolicyAccountLinkFilterGroups -Include "MyInclude"
$PolicyAccountLinkFilter = Initialize-PolicyAccountLinkFilter -Groups $PolicyAccountLinkFilterGroups

$PolicyAccountLink = Initialize-PolicyAccountLink -Action "AUTO" -VarFilter $PolicyAccountLinkFilter

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

$ProvisioningDeprovisionedCondition = Initialize-ProvisioningDeprovisionedCondition -Action "NONE"
$ProvisioningSuspendedCondition = Initialize-ProvisioningSuspendedCondition -Action "NONE"
$ProvisioningConditions = Initialize-ProvisioningConditions -Deprovisioned $ProvisioningDeprovisionedCondition -Suspended $ProvisioningSuspendedCondition

$ProvisioningGroups = Initialize-ProvisioningGroups -Action "APPEND" -Assignments "MyAssignments" -VarFilter "MyVarFilter" -SourceAttributeName "MySourceAttributeName"
$Provisioning = Initialize-Provisioning -Action "AUTO" -Conditions $ProvisioningConditions -Groups $ProvisioningGroups -ProfileMaster $false

$PolicyUserNameTemplate = Initialize-PolicyUserNameTemplate -Template "MyTemplate"
$PolicySubject = Initialize-PolicySubject -VarFilter "MyVarFilter" -Format "MyFormat" -MatchAttribute "MyMatchAttribute" -MatchType "CUSTOM_ATTRIBUTE" -UserNameTemplate $PolicyUserNameTemplate

$IdentityProviderPolicy = Initialize-IdentityProviderPolicy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } -AccountLink $PolicyAccountLink -Conditions $PolicyRuleConditions -MaxClockSkew 0 -Provisioning $Provisioning -Subject $PolicySubject

$ProtocolAlgorithmTypeSignature = Initialize-ProtocolAlgorithmTypeSignature -Algorithm "MyAlgorithm" -Scope "ANY"
$ProtocolAlgorithmType = Initialize-ProtocolAlgorithmType -Signature $ProtocolAlgorithmTypeSignature

$ProtocolAlgorithms = Initialize-ProtocolAlgorithms -Request $ProtocolAlgorithmType -Response $ProtocolAlgorithmType

$IdentityProviderCredentialsClient = Initialize-IdentityProviderCredentialsClient -ClientId "MyClientId" -ClientSecret "MyClientSecret"
$IdentityProviderCredentialsSigning = Initialize-IdentityProviderCredentialsSigning -Kid "MyKid"
$IdentityProviderCredentialsTrust = Initialize-IdentityProviderCredentialsTrust -Audience "MyAudience" -Issuer "MyIssuer" -Kid "MyKid" -Revocation "CRL" -RevocationCacheLifetime 0
$IdentityProviderCredentials = Initialize-IdentityProviderCredentials -Client $IdentityProviderCredentialsClient -Signing $IdentityProviderCredentialsSigning -Trust $IdentityProviderCredentialsTrust

$ProtocolEndpoint = Initialize-ProtocolEndpoint -Binding "HTTP-POST" -Destination "MyDestination" -Type "INSTANCE" -Url "MyUrl"
$ProtocolEndpoints = Initialize-ProtocolEndpoints -Acs $ProtocolEndpoint -Authorization $ProtocolEndpoint -Jwks $ProtocolEndpoint -Metadata $ProtocolEndpoint -Slo $ProtocolEndpoint -Sso $ProtocolEndpoint -Token $ProtocolEndpoint -UserInfo $ProtocolEndpoint

$ProtocolRelayState = Initialize-ProtocolRelayState -Format "FROM_URL"
$ProtocolSettings = Initialize-ProtocolSettings -NameFormat "MyNameFormat"
$Protocol = Initialize-Protocol -Algorithms $ProtocolAlgorithms -Credentials $IdentityProviderCredentials -Endpoints $ProtocolEndpoints -Issuer $ProtocolEndpoint -RelayState $ProtocolRelayState -Scopes "MyScopes" -Settings $ProtocolSettings -Type "MTLS"

$IdentityProvider = Initialize-IdentityProvider -Created (Get-Date) -Id "MyId" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Policy $IdentityProviderPolicy -Protocol $Protocol -Status "ACTIVE" -Type "AgentlessDSSO" -Links @{ key_example =  } # IdentityProvider | 

# Create an Identity Provider
try {
    $Result = New-IdentityProvider -IdentityProvider $IdentityProvider
} catch {
    Write-Host ("Exception occurred when calling New-IdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProvider** | [**IdentityProvider**](IdentityProvider.md)|  | 

### Return type

[**IdentityProvider**](IdentityProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-IdentityProviderKey"></a>
# **New-IdentityProviderKey**
> JsonWebKey New-IdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonWebKey] <PSCustomObject><br>

Create an X.509 Certificate Public Key

Adds a new X.509 certificate credential to the IdP key store.

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

$JsonWebKey = Initialize-JsonWebKey -Alg "MyAlg" -Created (Get-Date) -E "MyE" -ExpiresAt (Get-Date) -KeyOps "MyKeyOps" -Kid "MyKid" -Kty "MyKty" -LastUpdated (Get-Date) -N "MyN" -Status "MyStatus" -Use "MyUse" -X5c "MyX5c" -X5t "MyX5t" -X5tS256 "MyX5tS256" -X5u "MyX5u" -Links @{ key_example =  } # JsonWebKey | 

# Create an X.509 Certificate Public Key
try {
    $Result = New-IdentityProviderKey -JsonWebKey $JsonWebKey
} catch {
    Write-Host ("Exception occurred when calling New-IdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JsonWebKey** | [**JsonWebKey**](JsonWebKey.md)|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateIdentityProvider"></a>
# **Invoke-DeactivateIdentityProvider**
> IdentityProvider Invoke-DeactivateIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Deactivate an Identity Provider

Deactivates an active IdP.

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

$IdpId = "MyIdpId" # String | 

# Deactivate an Identity Provider
try {
    $Result = Invoke-DeactivateIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 

### Return type

[**IdentityProvider**](IdentityProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteIdentityProvider"></a>
# **Invoke-DeleteIdentityProvider**
> void Invoke-DeleteIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Delete an Identity Provider

Removes an IdP from your organization.

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

$IdpId = "MyIdpId" # String | 

# Delete an Identity Provider
try {
    $Result = Invoke-DeleteIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteIdentityProviderKey"></a>
# **Invoke-DeleteIdentityProviderKey**
> void Invoke-DeleteIdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Delete a Signing Credential Key

Deletes a specific IdP Key Credential by `kid` if it is not currently being used by an Active or Inactive IdP.

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

$KeyId = "MyKeyId" # String | 

# Delete a Signing Credential Key
try {
    $Result = Invoke-DeleteIdentityProviderKey -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteIdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KeyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-CsrForIdentityProvider"></a>
# **New-CsrForIdentityProvider**
> Csr New-CsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Metadata] <PSCustomObject><br>

Generate a Certificate Signing Request

Generates a new key pair and returns a Certificate Signing Request for it.

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

$IdpId = "MyIdpId" # String | 
$CsrMetadataSubject = Initialize-CsrMetadataSubject -CommonName "MyCommonName" -CountryName "MyCountryName" -LocalityName "MyLocalityName" -OrganizationalUnitName "MyOrganizationalUnitName" -OrganizationName "MyOrganizationName" -StateOrProvinceName "MyStateOrProvinceName"
$CsrMetadataSubjectAltNames = Initialize-CsrMetadataSubjectAltNames -DnsNames "MyDnsNames"
$CsrMetadata = Initialize-CsrMetadata -Subject $CsrMetadataSubject -SubjectAltNames $CsrMetadataSubjectAltNames # CsrMetadata | 

# Generate a Certificate Signing Request
try {
    $Result = New-CsrForIdentityProvider -IdpId $IdpId -Metadata $Metadata
} catch {
    Write-Host ("Exception occurred when calling New-CsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **Metadata** | [**CsrMetadata**](CsrMetadata.md)|  | 

### Return type

[**Csr**](Csr.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-IdentityProviderSigningKey"></a>
# **New-IdentityProviderSigningKey**
> JsonWebKey New-IdentityProviderSigningKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidityYears] <Int32><br>

Generate a new Signing Credential Key

Generates a new X.509 certificate for an IdP signing key credential to be used for signing assertions sent to the IdP

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

$IdpId = "MyIdpId" # String | 
$ValidityYears = 56 # Int32 | expiry of the IdP Key Credential

# Generate a new Signing Credential Key
try {
    $Result = New-IdentityProviderSigningKey -IdpId $IdpId -ValidityYears $ValidityYears
} catch {
    Write-Host ("Exception occurred when calling New-IdentityProviderSigningKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **ValidityYears** | **Int32**| expiry of the IdP Key Credential | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CsrForIdentityProvider"></a>
# **Get-CsrForIdentityProvider**
> Csr Get-CsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Retrieve a Certificate Signing Request

Gets a specific Certificate Signing Request model by id

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

$IdpId = "MyIdpId" # String | 
$CsrId = "MyCsrId" # String | 

# Retrieve a Certificate Signing Request
try {
    $Result = Get-CsrForIdentityProvider -IdpId $IdpId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Get-CsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **CsrId** | **String**|  | 

### Return type

[**Csr**](Csr.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IdentityProvider"></a>
# **Get-IdentityProvider**
> IdentityProvider Get-IdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Retrieve an Identity Provider

Fetches an IdP by `id`.

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

$IdpId = "MyIdpId" # String | 

# Retrieve an Identity Provider
try {
    $Result = Get-IdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Get-IdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 

### Return type

[**IdentityProvider**](IdentityProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IdentityProviderApplicationUser"></a>
# **Get-IdentityProviderApplicationUser**
> IdentityProviderApplicationUser Get-IdentityProviderApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Retrieve a User

Fetches a linked IdP user by ID

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

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 

# Retrieve a User
try {
    $Result = Get-IdentityProviderApplicationUser -IdpId $IdpId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Get-IdentityProviderApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **UserId** | **String**|  | 

### Return type

[**IdentityProviderApplicationUser**](IdentityProviderApplicationUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IdentityProviderKey"></a>
# **Get-IdentityProviderKey**
> JsonWebKey Get-IdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve an Credential Key

Gets a specific IdP Key Credential by `kid`

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

$KeyId = "MyKeyId" # String | 

# Retrieve an Credential Key
try {
    $Result = Get-IdentityProviderKey -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-IdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **KeyId** | **String**|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-IdentityProviderSigningKey"></a>
# **Get-IdentityProviderSigningKey**
> JsonWebKey Get-IdentityProviderSigningKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve a Signing Credential Key

Gets a specific IdP Key Credential by `kid`

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

$IdpId = "MyIdpId" # String | 
$KeyId = "MyKeyId" # String | 

# Retrieve a Signing Credential Key
try {
    $Result = Get-IdentityProviderSigningKey -IdpId $IdpId -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-IdentityProviderSigningKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **KeyId** | **String**|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-LinkUserToIdentityProvider"></a>
# **Invoke-LinkUserToIdentityProvider**
> IdentityProviderApplicationUser Invoke-LinkUserToIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserIdentityProviderLinkRequest] <PSCustomObject><br>

Link a User to a Social IdP

Links an Okta user to an existing Social Identity Provider. This does not support the SAML2 Identity Provider Type

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

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 
$UserIdentityProviderLinkRequest = Initialize-UserIdentityProviderLinkRequest -ExternalId "MyExternalId" # UserIdentityProviderLinkRequest | 

# Link a User to a Social IdP
try {
    $Result = Invoke-LinkUserToIdentityProvider -IdpId $IdpId -UserId $UserId -UserIdentityProviderLinkRequest $UserIdentityProviderLinkRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-LinkUserToIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **UserId** | **String**|  | 
 **UserIdentityProviderLinkRequest** | [**UserIdentityProviderLinkRequest**](UserIdentityProviderLinkRequest.md)|  | 

### Return type

[**IdentityProviderApplicationUser**](IdentityProviderApplicationUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListCsrsForIdentityProvider"></a>
# **Invoke-ListCsrsForIdentityProvider**
> Csr[] Invoke-ListCsrsForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

List all Certificate Signing Requests

Enumerates Certificate Signing Requests for an IdP

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

$IdpId = "MyIdpId" # String | 

# List all Certificate Signing Requests
try {
    $Result = Invoke-ListCsrsForIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListCsrsForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 

### Return type

[**Csr[]**](Csr.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListIdentityProviderApplicationUsers"></a>
# **Invoke-ListIdentityProviderApplicationUsers**
> IdentityProviderApplicationUser[] Invoke-ListIdentityProviderApplicationUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

List all Users

Find all the users linked to an identity provider

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

$IdpId = "MyIdpId" # String | 

# List all Users
try {
    $Result = Invoke-ListIdentityProviderApplicationUsers -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListIdentityProviderApplicationUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 

### Return type

[**IdentityProviderApplicationUser[]**](IdentityProviderApplicationUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListIdentityProviderKeys"></a>
# **Invoke-ListIdentityProviderKeys**
> JsonWebKey[] Invoke-ListIdentityProviderKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Credential Keys

Enumerates IdP key credentials.

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

$After = "MyAfter" # String | Specifies the pagination cursor for the next page of keys (optional)
$Limit = 56 # Int32 | Specifies the number of key results in a page (optional) (default to 20)

# List all Credential Keys
try {
    $Result = Invoke-ListIdentityProviderKeys -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListIdentityProviderKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**| Specifies the pagination cursor for the next page of keys | [optional] 
 **Limit** | **Int32**| Specifies the number of key results in a page | [optional] [default to 20]

### Return type

[**JsonWebKey[]**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListIdentityProviderSigningKeys"></a>
# **Invoke-ListIdentityProviderSigningKeys**
> JsonWebKey[] Invoke-ListIdentityProviderSigningKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

List all Signing Credential Keys

Enumerates signing key credentials for an IdP

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

$IdpId = "MyIdpId" # String | 

# List all Signing Credential Keys
try {
    $Result = Invoke-ListIdentityProviderSigningKeys -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListIdentityProviderSigningKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 

### Return type

[**JsonWebKey[]**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListIdentityProviders"></a>
# **Invoke-ListIdentityProviders**
> IdentityProvider[] Invoke-ListIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

List all Identity Providers

Enumerates IdPs in your organization with pagination. A subset of IdPs can be returned that match a supported filter expression or query.

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

$Q = "MyQ" # String | Searches the name property of IdPs for matching value (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of IdPs (optional)
$Limit = 56 # Int32 | Specifies the number of IdP results in a page (optional) (default to 20)
$Type = "MyType" # String | Filters IdPs by type (optional)

# List all Identity Providers
try {
    $Result = Invoke-ListIdentityProviders -Q $Q -After $After -Limit $Limit -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**| Searches the name property of IdPs for matching value | [optional] 
 **After** | **String**| Specifies the pagination cursor for the next page of IdPs | [optional] 
 **Limit** | **Int32**| Specifies the number of IdP results in a page | [optional] [default to 20]
 **Type** | **String**| Filters IdPs by type | [optional] 

### Return type

[**IdentityProvider[]**](IdentityProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListSocialAuthTokens"></a>
# **Invoke-ListSocialAuthTokens**
> SocialAuthToken[] Invoke-ListSocialAuthTokens<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Tokens from a OIDC Identity Provider

Fetches the tokens minted by the Social Authentication Provider when the user authenticates with Okta via Social Auth.

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

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 

# List all Tokens from a OIDC Identity Provider
try {
    $Result = Invoke-ListSocialAuthTokens -IdpId $IdpId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListSocialAuthTokens: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **UserId** | **String**|  | 

### Return type

[**SocialAuthToken[]**](SocialAuthToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Publish-CsrForIdentityProvider"></a>
# **Publish-CsrForIdentityProvider**
> JsonWebKey Publish-CsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.IO.FileInfo><br>

Publish a Certificate Signing Request

Update the Certificate Signing Request with a signed X.509 certificate and add it into the signing key credentials for the IdP.

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

$IdpId = "MyIdpId" # String | 
$CsrId = "MyCsrId" # String | 
$Body =  # System.IO.FileInfo | 

# Publish a Certificate Signing Request
try {
    $Result = Publish-CsrForIdentityProvider -IdpId $IdpId -CsrId $CsrId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Publish-CsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **CsrId** | **String**|  | 
 **Body** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/x-x509-ca-cert, application/pkix-cert, application/x-pem-file
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Revoke-CsrForIdentityProvider"></a>
# **Revoke-CsrForIdentityProvider**
> void Revoke-CsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Revoke a Certificate Signing Request

Revoke a Certificate Signing Request and delete the key pair from the IdP

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

$IdpId = "MyIdpId" # String | 
$CsrId = "MyCsrId" # String | 

# Revoke a Certificate Signing Request
try {
    $Result = Revoke-CsrForIdentityProvider -IdpId $IdpId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Revoke-CsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **CsrId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnlinkUserFromIdentityProvider"></a>
# **Invoke-UnlinkUserFromIdentityProvider**
> void Invoke-UnlinkUserFromIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unlink a User from IdP

Removes the link between the Okta user and the IdP user.

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

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 

# Unlink a User from IdP
try {
    $Result = Invoke-UnlinkUserFromIdentityProvider -IdpId $IdpId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnlinkUserFromIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-IdentityProvider"></a>
# **Update-IdentityProvider**
> IdentityProvider Update-IdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProvider] <PSCustomObject><br>

Replace an Identity Provider

Updates the configuration for an IdP.

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

$IdpId = "MyIdpId" # String | 
$PolicyAccountLinkFilterGroups = Initialize-PolicyAccountLinkFilterGroups -Include "MyInclude"
$PolicyAccountLinkFilter = Initialize-PolicyAccountLinkFilter -Groups $PolicyAccountLinkFilterGroups

$PolicyAccountLink = Initialize-PolicyAccountLink -Action "AUTO" -VarFilter $PolicyAccountLinkFilter

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

$ProvisioningDeprovisionedCondition = Initialize-ProvisioningDeprovisionedCondition -Action "NONE"
$ProvisioningSuspendedCondition = Initialize-ProvisioningSuspendedCondition -Action "NONE"
$ProvisioningConditions = Initialize-ProvisioningConditions -Deprovisioned $ProvisioningDeprovisionedCondition -Suspended $ProvisioningSuspendedCondition

$ProvisioningGroups = Initialize-ProvisioningGroups -Action "APPEND" -Assignments "MyAssignments" -VarFilter "MyVarFilter" -SourceAttributeName "MySourceAttributeName"
$Provisioning = Initialize-Provisioning -Action "AUTO" -Conditions $ProvisioningConditions -Groups $ProvisioningGroups -ProfileMaster $false

$PolicyUserNameTemplate = Initialize-PolicyUserNameTemplate -Template "MyTemplate"
$PolicySubject = Initialize-PolicySubject -VarFilter "MyVarFilter" -Format "MyFormat" -MatchAttribute "MyMatchAttribute" -MatchType "CUSTOM_ATTRIBUTE" -UserNameTemplate $PolicyUserNameTemplate

$IdentityProviderPolicy = Initialize-IdentityProviderPolicy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } -AccountLink $PolicyAccountLink -Conditions $PolicyRuleConditions -MaxClockSkew 0 -Provisioning $Provisioning -Subject $PolicySubject

$ProtocolAlgorithmTypeSignature = Initialize-ProtocolAlgorithmTypeSignature -Algorithm "MyAlgorithm" -Scope "ANY"
$ProtocolAlgorithmType = Initialize-ProtocolAlgorithmType -Signature $ProtocolAlgorithmTypeSignature

$ProtocolAlgorithms = Initialize-ProtocolAlgorithms -Request $ProtocolAlgorithmType -Response $ProtocolAlgorithmType

$IdentityProviderCredentialsClient = Initialize-IdentityProviderCredentialsClient -ClientId "MyClientId" -ClientSecret "MyClientSecret"
$IdentityProviderCredentialsSigning = Initialize-IdentityProviderCredentialsSigning -Kid "MyKid"
$IdentityProviderCredentialsTrust = Initialize-IdentityProviderCredentialsTrust -Audience "MyAudience" -Issuer "MyIssuer" -Kid "MyKid" -Revocation "CRL" -RevocationCacheLifetime 0
$IdentityProviderCredentials = Initialize-IdentityProviderCredentials -Client $IdentityProviderCredentialsClient -Signing $IdentityProviderCredentialsSigning -Trust $IdentityProviderCredentialsTrust

$ProtocolEndpoint = Initialize-ProtocolEndpoint -Binding "HTTP-POST" -Destination "MyDestination" -Type "INSTANCE" -Url "MyUrl"
$ProtocolEndpoints = Initialize-ProtocolEndpoints -Acs $ProtocolEndpoint -Authorization $ProtocolEndpoint -Jwks $ProtocolEndpoint -Metadata $ProtocolEndpoint -Slo $ProtocolEndpoint -Sso $ProtocolEndpoint -Token $ProtocolEndpoint -UserInfo $ProtocolEndpoint

$ProtocolRelayState = Initialize-ProtocolRelayState -Format "FROM_URL"
$ProtocolSettings = Initialize-ProtocolSettings -NameFormat "MyNameFormat"
$Protocol = Initialize-Protocol -Algorithms $ProtocolAlgorithms -Credentials $IdentityProviderCredentials -Endpoints $ProtocolEndpoints -Issuer $ProtocolEndpoint -RelayState $ProtocolRelayState -Scopes "MyScopes" -Settings $ProtocolSettings -Type "MTLS"

$IdentityProvider = Initialize-IdentityProvider -Created (Get-Date) -Id "MyId" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Policy $IdentityProviderPolicy -Protocol $Protocol -Status "ACTIVE" -Type "AgentlessDSSO" -Links @{ key_example =  } # IdentityProvider | 

# Replace an Identity Provider
try {
    $Result = Update-IdentityProvider -IdpId $IdpId -IdentityProvider $IdentityProvider
} catch {
    Write-Host ("Exception occurred when calling Update-IdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdpId** | **String**|  | 
 **IdentityProvider** | [**IdentityProvider**](IdentityProvider.md)|  | 

### Return type

[**IdentityProvider**](IdentityProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

