# Okta.PowerShell.Okta.PowerShell\Api.OktaIdentityProviderApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateIdentityProvider**](OktaIdentityProviderApi.md#Invoke-OktaActivateIdentityProvider) | **POST** /api/v1/idps/{idpId}/lifecycle/activate | Activate an Identity Provider
[**Copy-OktaIdentityProviderKey**](OktaIdentityProviderApi.md#Copy-OktaIdentityProviderKey) | **POST** /api/v1/idps/{idpId}/credentials/keys/{keyId}/clone | Clone a Signing Credential Key
[**New-OktaIdentityProvider**](OktaIdentityProviderApi.md#New-OktaIdentityProvider) | **POST** /api/v1/idps | Create an Identity Provider
[**New-OktaIdentityProviderKey**](OktaIdentityProviderApi.md#New-OktaIdentityProviderKey) | **POST** /api/v1/idps/credentials/keys | Create an X.509 Certificate Public Key
[**Invoke-OktaDeactivateIdentityProvider**](OktaIdentityProviderApi.md#Invoke-OktaDeactivateIdentityProvider) | **POST** /api/v1/idps/{idpId}/lifecycle/deactivate | Deactivate an Identity Provider
[**Invoke-OktaDeleteIdentityProvider**](OktaIdentityProviderApi.md#Invoke-OktaDeleteIdentityProvider) | **DELETE** /api/v1/idps/{idpId} | Delete an Identity Provider
[**Invoke-OktaDeleteIdentityProviderKey**](OktaIdentityProviderApi.md#Invoke-OktaDeleteIdentityProviderKey) | **DELETE** /api/v1/idps/credentials/keys/{keyId} | Delete a Signing Credential Key
[**New-OktaCsrForIdentityProvider**](OktaIdentityProviderApi.md#New-OktaCsrForIdentityProvider) | **POST** /api/v1/idps/{idpId}/credentials/csrs | Generate a Certificate Signing Request
[**New-OktaIdentityProviderSigningKey**](OktaIdentityProviderApi.md#New-OktaIdentityProviderSigningKey) | **POST** /api/v1/idps/{idpId}/credentials/keys/generate | Generate a new Signing Credential Key
[**Get-OktaCsrForIdentityProvider**](OktaIdentityProviderApi.md#Get-OktaCsrForIdentityProvider) | **GET** /api/v1/idps/{idpId}/credentials/csrs/{csrId} | Retrieve a Certificate Signing Request
[**Get-OktaIdentityProvider**](OktaIdentityProviderApi.md#Get-OktaIdentityProvider) | **GET** /api/v1/idps/{idpId} | Retrieve an Identity Provider
[**Get-OktaIdentityProviderApplicationUser**](OktaIdentityProviderApi.md#Get-OktaIdentityProviderApplicationUser) | **GET** /api/v1/idps/{idpId}/users/{userId} | Retrieve a User
[**Get-OktaIdentityProviderKey**](OktaIdentityProviderApi.md#Get-OktaIdentityProviderKey) | **GET** /api/v1/idps/credentials/keys/{keyId} | Retrieve an Credential Key
[**Get-OktaIdentityProviderSigningKey**](OktaIdentityProviderApi.md#Get-OktaIdentityProviderSigningKey) | **GET** /api/v1/idps/{idpId}/credentials/keys/{keyId} | Retrieve a Signing Credential Key
[**Invoke-OktaLinkUserToIdentityProvider**](OktaIdentityProviderApi.md#Invoke-OktaLinkUserToIdentityProvider) | **POST** /api/v1/idps/{idpId}/users/{userId} | Link a User to a Social IdP
[**Invoke-OktaListCsrsForIdentityProvider**](OktaIdentityProviderApi.md#Invoke-OktaListCsrsForIdentityProvider) | **GET** /api/v1/idps/{idpId}/credentials/csrs | List all Certificate Signing Requests
[**Invoke-OktaListIdentityProviderApplicationUsers**](OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviderApplicationUsers) | **GET** /api/v1/idps/{idpId}/users | List all Users
[**Invoke-OktaListIdentityProviderKeys**](OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviderKeys) | **GET** /api/v1/idps/credentials/keys | List all Credential Keys
[**Invoke-OktaListIdentityProviderSigningKeys**](OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviderSigningKeys) | **GET** /api/v1/idps/{idpId}/credentials/keys | List all Signing Credential Keys
[**Invoke-OktaListIdentityProviders**](OktaIdentityProviderApi.md#Invoke-OktaListIdentityProviders) | **GET** /api/v1/idps | List all Identity Providers
[**Invoke-OktaListSocialAuthTokens**](OktaIdentityProviderApi.md#Invoke-OktaListSocialAuthTokens) | **GET** /api/v1/idps/{idpId}/users/{userId}/credentials/tokens | List all Tokens from a OIDC Identity Provider
[**Publish-OktaCsrForIdentityProvider**](OktaIdentityProviderApi.md#Publish-OktaCsrForIdentityProvider) | **POST** /api/v1/idps/{idpId}/credentials/csrs/{csrId}/lifecycle/publish | Publish a Certificate Signing Request
[**Revoke-OktaCsrForIdentityProvider**](OktaIdentityProviderApi.md#Revoke-OktaCsrForIdentityProvider) | **DELETE** /api/v1/idps/{idpId}/credentials/csrs/{csrId} | Revoke a Certificate Signing Request
[**Invoke-OktaUnlinkUserFromIdentityProvider**](OktaIdentityProviderApi.md#Invoke-OktaUnlinkUserFromIdentityProvider) | **DELETE** /api/v1/idps/{idpId}/users/{userId} | Unlink a User from IdP
[**Update-OktaIdentityProvider**](OktaIdentityProviderApi.md#Update-OktaIdentityProvider) | **PUT** /api/v1/idps/{idpId} | Replace an Identity Provider


<a id="Invoke-OktaActivateIdentityProvider"></a>
# **Invoke-OktaActivateIdentityProvider**
> IdentityProvider Invoke-OktaActivateIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Activate an Identity Provider

Activates an inactive IdP.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 

# Activate an Identity Provider
try {
    $Result = Invoke-OktaActivateIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Copy-OktaIdentityProviderKey"></a>
# **Copy-OktaIdentityProviderKey**
> JsonWebKey Copy-OktaIdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetIdpId] <String><br>

Clone a Signing Credential Key

Clones a X.509 certificate for an IdP signing key credential from a source IdP to target IdP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$KeyId = "MyKeyId" # String | 
$TargetIdpId = "MyTargetIdpId" # String | 

# Clone a Signing Credential Key
try {
    $Result = Copy-OktaIdentityProviderKey -IdpId $IdpId -KeyId $KeyId -TargetIdpId $TargetIdpId
} catch {
    Write-Host ("Exception occurred when calling Copy-OktaIdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaIdentityProvider"></a>
# **New-OktaIdentityProvider**
> IdentityProvider New-OktaIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProvider] <PSCustomObject><br>

Create an Identity Provider

Adds a new IdP to your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PolicyAccountLinkFilterGroups = Initialize-OktaPolicyAccountLinkFilterGroups -Include "MyInclude"
$PolicyAccountLinkFilter = Initialize-OktaPolicyAccountLinkFilter -Groups $PolicyAccountLinkFilterGroups

$PolicyAccountLink = Initialize-OktaPolicyAccountLink -Action "AUTO" -VarFilter $PolicyAccountLinkFilter

$AppAndInstanceConditionEvaluatorAppOrInstance = Initialize-OktaAppAndInstanceConditionEvaluatorAppOrInstance -Id "MyId" -Name "MyName" -Type "APP"
$AppAndInstancePolicyRuleCondition = Initialize-OktaAppAndInstancePolicyRuleCondition -Exclude $AppAndInstanceConditionEvaluatorAppOrInstance -Include $AppAndInstanceConditionEvaluatorAppOrInstance

$AppInstancePolicyRuleCondition = Initialize-OktaAppInstancePolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyRuleAuthContextCondition = Initialize-OktaPolicyRuleAuthContextCondition -AuthType "ANY"
$PasswordPolicyAuthenticationProviderCondition = Initialize-OktaPasswordPolicyAuthenticationProviderCondition -Include "MyInclude" -Provider "ACTIVE_DIRECTORY"

$Duration = Initialize-OktaDuration -Number 0 -Unit "MyUnit"
$ScheduledUserLifecycleAction = Initialize-OktaScheduledUserLifecycleAction -Status "ACTIVATING"
$BeforeScheduledActionPolicyRuleCondition = Initialize-OktaBeforeScheduledActionPolicyRuleCondition -Duration $Duration -LifecycleAction $ScheduledUserLifecycleAction

$ClientPolicyCondition = Initialize-OktaClientPolicyCondition -Include "MyInclude"

$DevicePolicyRuleConditionPlatform = Initialize-OktaDevicePolicyRuleConditionPlatform -SupportedMDMFrameworks "AFW" -Types "ANDROID"
$ContextPolicyRuleCondition = Initialize-OktaContextPolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY" -Expression "MyExpression"

$DevicePolicyRuleCondition = Initialize-OktaDevicePolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY"

$GrantTypePolicyRuleCondition = Initialize-OktaGrantTypePolicyRuleCondition -Include "MyInclude"
$GroupPolicyRuleCondition = Initialize-OktaGroupPolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$IdentityProviderPolicyRuleCondition = Initialize-OktaIdentityProviderPolicyRuleCondition -IdpIds "MyIdpIds" -Provider "ANY"
$MDMEnrollmentPolicyRuleCondition = Initialize-OktaMDMEnrollmentPolicyRuleCondition -BlockNonSafeAndroid $false -Enrollment "ANY_OR_NONE"
$PolicyNetworkCondition = Initialize-OktaPolicyNetworkCondition -Connection "ANYWHERE" -Exclude "MyExclude" -Include "MyInclude"

$GroupCondition = Initialize-OktaGroupCondition -Exclude "MyExclude" -Include "MyInclude"
$UserCondition = Initialize-OktaUserCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyPeopleCondition = Initialize-OktaPolicyPeopleCondition -Groups $GroupCondition -Users $UserCondition

$PlatformConditionEvaluatorPlatformOperatingSystemVersion = Initialize-OktaPlatformConditionEvaluatorPlatformOperatingSystemVersion -MatchType "EXPRESSION" -Value "MyValue"
$PlatformConditionEvaluatorPlatformOperatingSystem = Initialize-OktaPlatformConditionEvaluatorPlatformOperatingSystem -Expression "MyExpression" -Type "ANDROID" -Version $PlatformConditionEvaluatorPlatformOperatingSystemVersion

$PlatformConditionEvaluatorPlatform = Initialize-OktaPlatformConditionEvaluatorPlatform -Os $PlatformConditionEvaluatorPlatformOperatingSystem -Type "ANY"

$PlatformPolicyRuleCondition = Initialize-OktaPlatformPolicyRuleCondition -Exclude $PlatformConditionEvaluatorPlatform -Include $PlatformConditionEvaluatorPlatform

$RiskPolicyRuleCondition = Initialize-OktaRiskPolicyRuleCondition -Behaviors "MyBehaviors"
$RiskScorePolicyRuleCondition = Initialize-OktaRiskScorePolicyRuleCondition -Level "MyLevel"
$OAuth2ScopesMediationPolicyRuleCondition = Initialize-OktaOAuth2ScopesMediationPolicyRuleCondition -Include "MyInclude"

$UserIdentifierConditionEvaluatorPattern = Initialize-OktaUserIdentifierConditionEvaluatorPattern -MatchType "CONTAINS" -Value "MyValue"
$UserIdentifierPolicyRuleCondition = Initialize-OktaUserIdentifierPolicyRuleCondition -Attribute "MyAttribute" -Patterns $UserIdentifierConditionEvaluatorPattern -Type "ATTRIBUTE"

$InactivityPolicyRuleCondition = Initialize-OktaInactivityPolicyRuleCondition -Number 0 -Unit "MyUnit"
$LifecycleExpirationPolicyRuleCondition = Initialize-OktaLifecycleExpirationPolicyRuleCondition -LifecycleStatus "MyLifecycleStatus" -Number 0 -Unit "MyUnit"
$PasswordExpirationPolicyRuleCondition = Initialize-OktaPasswordExpirationPolicyRuleCondition -Number 0 -Unit "MyUnit"
$UserLifecycleAttributePolicyRuleCondition = Initialize-OktaUserLifecycleAttributePolicyRuleCondition -AttributeName "MyAttributeName" -MatchingValue "MyMatchingValue"
$UserPolicyRuleCondition = Initialize-OktaUserPolicyRuleCondition -Exclude "MyExclude" -Inactivity $InactivityPolicyRuleCondition -Include "MyInclude" -LifecycleExpiration $LifecycleExpirationPolicyRuleCondition -PasswordExpiration $PasswordExpirationPolicyRuleCondition -UserLifecycleAttribute $UserLifecycleAttributePolicyRuleCondition

$UserStatusPolicyRuleCondition = Initialize-OktaUserStatusPolicyRuleCondition -Value "ACTIVATING"
$PolicyRuleConditions = Initialize-OktaPolicyRuleConditions -App $AppAndInstancePolicyRuleCondition -Apps $AppInstancePolicyRuleCondition -AuthContext $PolicyRuleAuthContextCondition -AuthProvider $PasswordPolicyAuthenticationProviderCondition -BeforeScheduledAction $BeforeScheduledActionPolicyRuleCondition -Clients $ClientPolicyCondition -Context $ContextPolicyRuleCondition -Device $DevicePolicyRuleCondition -GrantTypes $GrantTypePolicyRuleCondition -Groups $GroupPolicyRuleCondition -IdentityProvider $IdentityProviderPolicyRuleCondition -MdmEnrollment $MDMEnrollmentPolicyRuleCondition -Network $PolicyNetworkCondition -People $PolicyPeopleCondition -Platform $PlatformPolicyRuleCondition -Risk $RiskPolicyRuleCondition -RiskScore $RiskScorePolicyRuleCondition -Scopes $OAuth2ScopesMediationPolicyRuleCondition -UserIdentifier $UserIdentifierPolicyRuleCondition -Users $UserPolicyRuleCondition -UserStatus $UserStatusPolicyRuleCondition

$ProvisioningDeprovisionedCondition = Initialize-OktaProvisioningDeprovisionedCondition -Action "NONE"
$ProvisioningSuspendedCondition = Initialize-OktaProvisioningSuspendedCondition -Action "NONE"
$ProvisioningConditions = Initialize-OktaProvisioningConditions -Deprovisioned $ProvisioningDeprovisionedCondition -Suspended $ProvisioningSuspendedCondition

$ProvisioningGroups = Initialize-OktaProvisioningGroups -Action "APPEND" -Assignments "MyAssignments" -VarFilter "MyVarFilter" -SourceAttributeName "MySourceAttributeName"
$Provisioning = Initialize-OktaProvisioning -Action "AUTO" -Conditions $ProvisioningConditions -Groups $ProvisioningGroups -ProfileMaster $false

$PolicyUserNameTemplate = Initialize-OktaPolicyUserNameTemplate -Template "MyTemplate"
$PolicySubject = Initialize-OktaPolicySubject -VarFilter "MyVarFilter" -Format "MyFormat" -MatchAttribute "MyMatchAttribute" -MatchType "CUSTOM_ATTRIBUTE" -UserNameTemplate $PolicyUserNameTemplate

$IdentityProviderPolicy = Initialize-OktaIdentityProviderPolicy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } -AccountLink $PolicyAccountLink -Conditions $PolicyRuleConditions -MaxClockSkew 0 -Provisioning $Provisioning -Subject $PolicySubject

$ProtocolAlgorithmTypeSignature = Initialize-OktaProtocolAlgorithmTypeSignature -Algorithm "MyAlgorithm" -Scope "ANY"
$ProtocolAlgorithmType = Initialize-OktaProtocolAlgorithmType -Signature $ProtocolAlgorithmTypeSignature

$ProtocolAlgorithms = Initialize-OktaProtocolAlgorithms -Request $ProtocolAlgorithmType -Response $ProtocolAlgorithmType

$IdentityProviderCredentialsClient = Initialize-OktaIdentityProviderCredentialsClient -ClientId "MyClientId" -ClientSecret "MyClientSecret"
$IdentityProviderCredentialsSigning = Initialize-OktaIdentityProviderCredentialsSigning -Kid "MyKid"
$IdentityProviderCredentialsTrust = Initialize-OktaIdentityProviderCredentialsTrust -Audience "MyAudience" -Issuer "MyIssuer" -Kid "MyKid" -Revocation "CRL" -RevocationCacheLifetime 0
$IdentityProviderCredentials = Initialize-OktaIdentityProviderCredentials -Client $IdentityProviderCredentialsClient -Signing $IdentityProviderCredentialsSigning -Trust $IdentityProviderCredentialsTrust

$ProtocolEndpoint = Initialize-OktaProtocolEndpoint -Binding "HTTP-POST" -Destination "MyDestination" -Type "INSTANCE" -Url "MyUrl"
$ProtocolEndpoints = Initialize-OktaProtocolEndpoints -Acs $ProtocolEndpoint -Authorization $ProtocolEndpoint -Jwks $ProtocolEndpoint -Metadata $ProtocolEndpoint -Slo $ProtocolEndpoint -Sso $ProtocolEndpoint -Token $ProtocolEndpoint -UserInfo $ProtocolEndpoint

$ProtocolRelayState = Initialize-OktaProtocolRelayState -Format "FROM_URL"
$ProtocolSettings = Initialize-OktaProtocolSettings -NameFormat "MyNameFormat"
$Protocol = Initialize-OktaProtocol -Algorithms $ProtocolAlgorithms -Credentials $IdentityProviderCredentials -Endpoints $ProtocolEndpoints -Issuer $ProtocolEndpoint -RelayState $ProtocolRelayState -Scopes "MyScopes" -Settings $ProtocolSettings -Type "MTLS"

$IdentityProvider = Initialize-OktaIdentityProvider -Created (Get-Date) -Id "MyId" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Policy $IdentityProviderPolicy -Protocol $Protocol -Status "ACTIVE" -Type "AgentlessDSSO" -Links @{ key_example =  } # IdentityProvider | 

# Create an Identity Provider
try {
    $Result = New-OktaIdentityProvider -IdentityProvider $IdentityProvider
} catch {
    Write-Host ("Exception occurred when calling New-OktaIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaIdentityProviderKey"></a>
# **New-OktaIdentityProviderKey**
> JsonWebKey New-OktaIdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonWebKey] <PSCustomObject><br>

Create an X.509 Certificate Public Key

Adds a new X.509 certificate credential to the IdP key store.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$JsonWebKey = Initialize-OktaJsonWebKey -Alg "MyAlg" -Created (Get-Date) -E "MyE" -ExpiresAt (Get-Date) -KeyOps "MyKeyOps" -Kid "MyKid" -Kty "MyKty" -LastUpdated (Get-Date) -N "MyN" -Status "MyStatus" -Use "MyUse" -X5c "MyX5c" -X5t "MyX5t" -X5tS256 "MyX5tS256" -X5u "MyX5u" -Links @{ key_example =  } # JsonWebKey | 

# Create an X.509 Certificate Public Key
try {
    $Result = New-OktaIdentityProviderKey -JsonWebKey $JsonWebKey
} catch {
    Write-Host ("Exception occurred when calling New-OktaIdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateIdentityProvider"></a>
# **Invoke-OktaDeactivateIdentityProvider**
> IdentityProvider Invoke-OktaDeactivateIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Deactivate an Identity Provider

Deactivates an active IdP.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 

# Deactivate an Identity Provider
try {
    $Result = Invoke-OktaDeactivateIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteIdentityProvider"></a>
# **Invoke-OktaDeleteIdentityProvider**
> void Invoke-OktaDeleteIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Delete an Identity Provider

Removes an IdP from your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 

# Delete an Identity Provider
try {
    $Result = Invoke-OktaDeleteIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteIdentityProviderKey"></a>
# **Invoke-OktaDeleteIdentityProviderKey**
> void Invoke-OktaDeleteIdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Delete a Signing Credential Key

Deletes a specific IdP Key Credential by `kid` if it is not currently being used by an Active or Inactive IdP.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$KeyId = "MyKeyId" # String | 

# Delete a Signing Credential Key
try {
    $Result = Invoke-OktaDeleteIdentityProviderKey -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteIdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaCsrForIdentityProvider"></a>
# **New-OktaCsrForIdentityProvider**
> Csr New-OktaCsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Metadata] <PSCustomObject><br>

Generate a Certificate Signing Request

Generates a new key pair and returns a Certificate Signing Request for it.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$CsrMetadataSubject = Initialize-OktaCsrMetadataSubject -CommonName "MyCommonName" -CountryName "MyCountryName" -LocalityName "MyLocalityName" -OrganizationalUnitName "MyOrganizationalUnitName" -OrganizationName "MyOrganizationName" -StateOrProvinceName "MyStateOrProvinceName"
$CsrMetadataSubjectAltNames = Initialize-OktaCsrMetadataSubjectAltNames -DnsNames "MyDnsNames"
$CsrMetadata = Initialize-OktaCsrMetadata -Subject $CsrMetadataSubject -SubjectAltNames $CsrMetadataSubjectAltNames # CsrMetadata | 

# Generate a Certificate Signing Request
try {
    $Result = New-OktaCsrForIdentityProvider -IdpId $IdpId -Metadata $Metadata
} catch {
    Write-Host ("Exception occurred when calling New-OktaCsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaIdentityProviderSigningKey"></a>
# **New-OktaIdentityProviderSigningKey**
> JsonWebKey New-OktaIdentityProviderSigningKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidityYears] <Int32><br>

Generate a new Signing Credential Key

Generates a new X.509 certificate for an IdP signing key credential to be used for signing assertions sent to the IdP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$ValidityYears = 56 # Int32 | expiry of the IdP Key Credential

# Generate a new Signing Credential Key
try {
    $Result = New-OktaIdentityProviderSigningKey -IdpId $IdpId -ValidityYears $ValidityYears
} catch {
    Write-Host ("Exception occurred when calling New-OktaIdentityProviderSigningKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaCsrForIdentityProvider"></a>
# **Get-OktaCsrForIdentityProvider**
> Csr Get-OktaCsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Retrieve a Certificate Signing Request

Gets a specific Certificate Signing Request model by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$CsrId = "MyCsrId" # String | 

# Retrieve a Certificate Signing Request
try {
    $Result = Get-OktaCsrForIdentityProvider -IdpId $IdpId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaCsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaIdentityProvider"></a>
# **Get-OktaIdentityProvider**
> IdentityProvider Get-OktaIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

Retrieve an Identity Provider

Fetches an IdP by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 

# Retrieve an Identity Provider
try {
    $Result = Get-OktaIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaIdentityProviderApplicationUser"></a>
# **Get-OktaIdentityProviderApplicationUser**
> IdentityProviderApplicationUser Get-OktaIdentityProviderApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Retrieve a User

Fetches a linked IdP user by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 

# Retrieve a User
try {
    $Result = Get-OktaIdentityProviderApplicationUser -IdpId $IdpId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaIdentityProviderApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaIdentityProviderKey"></a>
# **Get-OktaIdentityProviderKey**
> JsonWebKey Get-OktaIdentityProviderKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve an Credential Key

Gets a specific IdP Key Credential by `kid`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$KeyId = "MyKeyId" # String | 

# Retrieve an Credential Key
try {
    $Result = Get-OktaIdentityProviderKey -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaIdentityProviderKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaIdentityProviderSigningKey"></a>
# **Get-OktaIdentityProviderSigningKey**
> JsonWebKey Get-OktaIdentityProviderSigningKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve a Signing Credential Key

Gets a specific IdP Key Credential by `kid`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$KeyId = "MyKeyId" # String | 

# Retrieve a Signing Credential Key
try {
    $Result = Get-OktaIdentityProviderSigningKey -IdpId $IdpId -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaIdentityProviderSigningKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaLinkUserToIdentityProvider"></a>
# **Invoke-OktaLinkUserToIdentityProvider**
> IdentityProviderApplicationUser Invoke-OktaLinkUserToIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserIdentityProviderLinkRequest] <PSCustomObject><br>

Link a User to a Social IdP

Links an Okta user to an existing Social Identity Provider. This does not support the SAML2 Identity Provider Type

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 
$UserIdentityProviderLinkRequest = Initialize-OktaUserIdentityProviderLinkRequest -ExternalId "MyExternalId" # UserIdentityProviderLinkRequest | 

# Link a User to a Social IdP
try {
    $Result = Invoke-OktaLinkUserToIdentityProvider -IdpId $IdpId -UserId $UserId -UserIdentityProviderLinkRequest $UserIdentityProviderLinkRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaLinkUserToIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListCsrsForIdentityProvider"></a>
# **Invoke-OktaListCsrsForIdentityProvider**
> Csr[] Invoke-OktaListCsrsForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

List all Certificate Signing Requests

Enumerates Certificate Signing Requests for an IdP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 

# List all Certificate Signing Requests
try {
    $Result = Invoke-OktaListCsrsForIdentityProvider -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListCsrsForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListIdentityProviderApplicationUsers"></a>
# **Invoke-OktaListIdentityProviderApplicationUsers**
> IdentityProviderApplicationUser[] Invoke-OktaListIdentityProviderApplicationUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

List all Users

Find all the users linked to an identity provider

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 

# List all Users
try {
    $Result = Invoke-OktaListIdentityProviderApplicationUsers -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListIdentityProviderApplicationUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListIdentityProviderKeys"></a>
# **Invoke-OktaListIdentityProviderKeys**
> JsonWebKey[] Invoke-OktaListIdentityProviderKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Credential Keys

Enumerates IdP key credentials.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String | Specifies the pagination cursor for the next page of keys (optional)
$Limit = 56 # Int32 | Specifies the number of key results in a page (optional) (default to 20)

# List all Credential Keys
try {
    $Result = Invoke-OktaListIdentityProviderKeys -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListIdentityProviderKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListIdentityProviderSigningKeys"></a>
# **Invoke-OktaListIdentityProviderSigningKeys**
> JsonWebKey[] Invoke-OktaListIdentityProviderSigningKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>

List all Signing Credential Keys

Enumerates signing key credentials for an IdP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 

# List all Signing Credential Keys
try {
    $Result = Invoke-OktaListIdentityProviderSigningKeys -IdpId $IdpId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListIdentityProviderSigningKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListIdentityProviders"></a>
# **Invoke-OktaListIdentityProviders**
> IdentityProvider[] Invoke-OktaListIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

List all Identity Providers

Enumerates IdPs in your organization with pagination. A subset of IdPs can be returned that match a supported filter expression or query.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Q = "MyQ" # String | Searches the name property of IdPs for matching value (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of IdPs (optional)
$Limit = 56 # Int32 | Specifies the number of IdP results in a page (optional) (default to 20)
$Type = "MyType" # String | Filters IdPs by type (optional)

# List all Identity Providers
try {
    $Result = Invoke-OktaListIdentityProviders -Q $Q -After $After -Limit $Limit -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListSocialAuthTokens"></a>
# **Invoke-OktaListSocialAuthTokens**
> SocialAuthToken[] Invoke-OktaListSocialAuthTokens<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Tokens from a OIDC Identity Provider

Fetches the tokens minted by the Social Authentication Provider when the user authenticates with Okta via Social Auth.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 

# List all Tokens from a OIDC Identity Provider
try {
    $Result = Invoke-OktaListSocialAuthTokens -IdpId $IdpId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListSocialAuthTokens: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Publish-OktaCsrForIdentityProvider"></a>
# **Publish-OktaCsrForIdentityProvider**
> JsonWebKey Publish-OktaCsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.IO.FileInfo><br>

Publish a Certificate Signing Request

Update the Certificate Signing Request with a signed X.509 certificate and add it into the signing key credentials for the IdP.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$CsrId = "MyCsrId" # String | 
$Body =  # System.IO.FileInfo | 

# Publish a Certificate Signing Request
try {
    $Result = Publish-OktaCsrForIdentityProvider -IdpId $IdpId -CsrId $CsrId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Publish-OktaCsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaCsrForIdentityProvider"></a>
# **Revoke-OktaCsrForIdentityProvider**
> void Revoke-OktaCsrForIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Revoke a Certificate Signing Request

Revoke a Certificate Signing Request and delete the key pair from the IdP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$CsrId = "MyCsrId" # String | 

# Revoke a Certificate Signing Request
try {
    $Result = Revoke-OktaCsrForIdentityProvider -IdpId $IdpId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaCsrForIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnlinkUserFromIdentityProvider"></a>
# **Invoke-OktaUnlinkUserFromIdentityProvider**
> void Invoke-OktaUnlinkUserFromIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unlink a User from IdP

Removes the link between the Okta user and the IdP user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$UserId = "MyUserId" # String | 

# Unlink a User from IdP
try {
    $Result = Invoke-OktaUnlinkUserFromIdentityProvider -IdpId $IdpId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnlinkUserFromIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaIdentityProvider"></a>
# **Update-OktaIdentityProvider**
> IdentityProvider Update-OktaIdentityProvider<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdpId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProvider] <PSCustomObject><br>

Replace an Identity Provider

Updates the configuration for an IdP.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$IdpId = "MyIdpId" # String | 
$PolicyAccountLinkFilterGroups = Initialize-OktaPolicyAccountLinkFilterGroups -Include "MyInclude"
$PolicyAccountLinkFilter = Initialize-OktaPolicyAccountLinkFilter -Groups $PolicyAccountLinkFilterGroups

$PolicyAccountLink = Initialize-OktaPolicyAccountLink -Action "AUTO" -VarFilter $PolicyAccountLinkFilter

$AppAndInstanceConditionEvaluatorAppOrInstance = Initialize-OktaAppAndInstanceConditionEvaluatorAppOrInstance -Id "MyId" -Name "MyName" -Type "APP"
$AppAndInstancePolicyRuleCondition = Initialize-OktaAppAndInstancePolicyRuleCondition -Exclude $AppAndInstanceConditionEvaluatorAppOrInstance -Include $AppAndInstanceConditionEvaluatorAppOrInstance

$AppInstancePolicyRuleCondition = Initialize-OktaAppInstancePolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyRuleAuthContextCondition = Initialize-OktaPolicyRuleAuthContextCondition -AuthType "ANY"
$PasswordPolicyAuthenticationProviderCondition = Initialize-OktaPasswordPolicyAuthenticationProviderCondition -Include "MyInclude" -Provider "ACTIVE_DIRECTORY"

$Duration = Initialize-OktaDuration -Number 0 -Unit "MyUnit"
$ScheduledUserLifecycleAction = Initialize-OktaScheduledUserLifecycleAction -Status "ACTIVATING"
$BeforeScheduledActionPolicyRuleCondition = Initialize-OktaBeforeScheduledActionPolicyRuleCondition -Duration $Duration -LifecycleAction $ScheduledUserLifecycleAction

$ClientPolicyCondition = Initialize-OktaClientPolicyCondition -Include "MyInclude"

$DevicePolicyRuleConditionPlatform = Initialize-OktaDevicePolicyRuleConditionPlatform -SupportedMDMFrameworks "AFW" -Types "ANDROID"
$ContextPolicyRuleCondition = Initialize-OktaContextPolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY" -Expression "MyExpression"

$DevicePolicyRuleCondition = Initialize-OktaDevicePolicyRuleCondition -Migrated $false -Platform $DevicePolicyRuleConditionPlatform -Rooted $false -TrustLevel "ANY"

$GrantTypePolicyRuleCondition = Initialize-OktaGrantTypePolicyRuleCondition -Include "MyInclude"
$GroupPolicyRuleCondition = Initialize-OktaGroupPolicyRuleCondition -Exclude "MyExclude" -Include "MyInclude"
$IdentityProviderPolicyRuleCondition = Initialize-OktaIdentityProviderPolicyRuleCondition -IdpIds "MyIdpIds" -Provider "ANY"
$MDMEnrollmentPolicyRuleCondition = Initialize-OktaMDMEnrollmentPolicyRuleCondition -BlockNonSafeAndroid $false -Enrollment "ANY_OR_NONE"
$PolicyNetworkCondition = Initialize-OktaPolicyNetworkCondition -Connection "ANYWHERE" -Exclude "MyExclude" -Include "MyInclude"

$GroupCondition = Initialize-OktaGroupCondition -Exclude "MyExclude" -Include "MyInclude"
$UserCondition = Initialize-OktaUserCondition -Exclude "MyExclude" -Include "MyInclude"
$PolicyPeopleCondition = Initialize-OktaPolicyPeopleCondition -Groups $GroupCondition -Users $UserCondition

$PlatformConditionEvaluatorPlatformOperatingSystemVersion = Initialize-OktaPlatformConditionEvaluatorPlatformOperatingSystemVersion -MatchType "EXPRESSION" -Value "MyValue"
$PlatformConditionEvaluatorPlatformOperatingSystem = Initialize-OktaPlatformConditionEvaluatorPlatformOperatingSystem -Expression "MyExpression" -Type "ANDROID" -Version $PlatformConditionEvaluatorPlatformOperatingSystemVersion

$PlatformConditionEvaluatorPlatform = Initialize-OktaPlatformConditionEvaluatorPlatform -Os $PlatformConditionEvaluatorPlatformOperatingSystem -Type "ANY"

$PlatformPolicyRuleCondition = Initialize-OktaPlatformPolicyRuleCondition -Exclude $PlatformConditionEvaluatorPlatform -Include $PlatformConditionEvaluatorPlatform

$RiskPolicyRuleCondition = Initialize-OktaRiskPolicyRuleCondition -Behaviors "MyBehaviors"
$RiskScorePolicyRuleCondition = Initialize-OktaRiskScorePolicyRuleCondition -Level "MyLevel"
$OAuth2ScopesMediationPolicyRuleCondition = Initialize-OktaOAuth2ScopesMediationPolicyRuleCondition -Include "MyInclude"

$UserIdentifierConditionEvaluatorPattern = Initialize-OktaUserIdentifierConditionEvaluatorPattern -MatchType "CONTAINS" -Value "MyValue"
$UserIdentifierPolicyRuleCondition = Initialize-OktaUserIdentifierPolicyRuleCondition -Attribute "MyAttribute" -Patterns $UserIdentifierConditionEvaluatorPattern -Type "ATTRIBUTE"

$InactivityPolicyRuleCondition = Initialize-OktaInactivityPolicyRuleCondition -Number 0 -Unit "MyUnit"
$LifecycleExpirationPolicyRuleCondition = Initialize-OktaLifecycleExpirationPolicyRuleCondition -LifecycleStatus "MyLifecycleStatus" -Number 0 -Unit "MyUnit"
$PasswordExpirationPolicyRuleCondition = Initialize-OktaPasswordExpirationPolicyRuleCondition -Number 0 -Unit "MyUnit"
$UserLifecycleAttributePolicyRuleCondition = Initialize-OktaUserLifecycleAttributePolicyRuleCondition -AttributeName "MyAttributeName" -MatchingValue "MyMatchingValue"
$UserPolicyRuleCondition = Initialize-OktaUserPolicyRuleCondition -Exclude "MyExclude" -Inactivity $InactivityPolicyRuleCondition -Include "MyInclude" -LifecycleExpiration $LifecycleExpirationPolicyRuleCondition -PasswordExpiration $PasswordExpirationPolicyRuleCondition -UserLifecycleAttribute $UserLifecycleAttributePolicyRuleCondition

$UserStatusPolicyRuleCondition = Initialize-OktaUserStatusPolicyRuleCondition -Value "ACTIVATING"
$PolicyRuleConditions = Initialize-OktaPolicyRuleConditions -App $AppAndInstancePolicyRuleCondition -Apps $AppInstancePolicyRuleCondition -AuthContext $PolicyRuleAuthContextCondition -AuthProvider $PasswordPolicyAuthenticationProviderCondition -BeforeScheduledAction $BeforeScheduledActionPolicyRuleCondition -Clients $ClientPolicyCondition -Context $ContextPolicyRuleCondition -Device $DevicePolicyRuleCondition -GrantTypes $GrantTypePolicyRuleCondition -Groups $GroupPolicyRuleCondition -IdentityProvider $IdentityProviderPolicyRuleCondition -MdmEnrollment $MDMEnrollmentPolicyRuleCondition -Network $PolicyNetworkCondition -People $PolicyPeopleCondition -Platform $PlatformPolicyRuleCondition -Risk $RiskPolicyRuleCondition -RiskScore $RiskScorePolicyRuleCondition -Scopes $OAuth2ScopesMediationPolicyRuleCondition -UserIdentifier $UserIdentifierPolicyRuleCondition -Users $UserPolicyRuleCondition -UserStatus $UserStatusPolicyRuleCondition

$ProvisioningDeprovisionedCondition = Initialize-OktaProvisioningDeprovisionedCondition -Action "NONE"
$ProvisioningSuspendedCondition = Initialize-OktaProvisioningSuspendedCondition -Action "NONE"
$ProvisioningConditions = Initialize-OktaProvisioningConditions -Deprovisioned $ProvisioningDeprovisionedCondition -Suspended $ProvisioningSuspendedCondition

$ProvisioningGroups = Initialize-OktaProvisioningGroups -Action "APPEND" -Assignments "MyAssignments" -VarFilter "MyVarFilter" -SourceAttributeName "MySourceAttributeName"
$Provisioning = Initialize-OktaProvisioning -Action "AUTO" -Conditions $ProvisioningConditions -Groups $ProvisioningGroups -ProfileMaster $false

$PolicyUserNameTemplate = Initialize-OktaPolicyUserNameTemplate -Template "MyTemplate"
$PolicySubject = Initialize-OktaPolicySubject -VarFilter "MyVarFilter" -Format "MyFormat" -MatchAttribute "MyMatchAttribute" -MatchType "CUSTOM_ATTRIBUTE" -UserNameTemplate $PolicyUserNameTemplate

$IdentityProviderPolicy = Initialize-OktaIdentityProviderPolicy -Created (Get-Date) -Description "MyDescription" -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Priority 0 -Status "ACTIVE" -System $false -Type "ACCESS_POLICY" -Embedded @{ key_example =  } -Links @{ key_example =  } -AccountLink $PolicyAccountLink -Conditions $PolicyRuleConditions -MaxClockSkew 0 -Provisioning $Provisioning -Subject $PolicySubject

$ProtocolAlgorithmTypeSignature = Initialize-OktaProtocolAlgorithmTypeSignature -Algorithm "MyAlgorithm" -Scope "ANY"
$ProtocolAlgorithmType = Initialize-OktaProtocolAlgorithmType -Signature $ProtocolAlgorithmTypeSignature

$ProtocolAlgorithms = Initialize-OktaProtocolAlgorithms -Request $ProtocolAlgorithmType -Response $ProtocolAlgorithmType

$IdentityProviderCredentialsClient = Initialize-OktaIdentityProviderCredentialsClient -ClientId "MyClientId" -ClientSecret "MyClientSecret"
$IdentityProviderCredentialsSigning = Initialize-OktaIdentityProviderCredentialsSigning -Kid "MyKid"
$IdentityProviderCredentialsTrust = Initialize-OktaIdentityProviderCredentialsTrust -Audience "MyAudience" -Issuer "MyIssuer" -Kid "MyKid" -Revocation "CRL" -RevocationCacheLifetime 0
$IdentityProviderCredentials = Initialize-OktaIdentityProviderCredentials -Client $IdentityProviderCredentialsClient -Signing $IdentityProviderCredentialsSigning -Trust $IdentityProviderCredentialsTrust

$ProtocolEndpoint = Initialize-OktaProtocolEndpoint -Binding "HTTP-POST" -Destination "MyDestination" -Type "INSTANCE" -Url "MyUrl"
$ProtocolEndpoints = Initialize-OktaProtocolEndpoints -Acs $ProtocolEndpoint -Authorization $ProtocolEndpoint -Jwks $ProtocolEndpoint -Metadata $ProtocolEndpoint -Slo $ProtocolEndpoint -Sso $ProtocolEndpoint -Token $ProtocolEndpoint -UserInfo $ProtocolEndpoint

$ProtocolRelayState = Initialize-OktaProtocolRelayState -Format "FROM_URL"
$ProtocolSettings = Initialize-OktaProtocolSettings -NameFormat "MyNameFormat"
$Protocol = Initialize-OktaProtocol -Algorithms $ProtocolAlgorithms -Credentials $IdentityProviderCredentials -Endpoints $ProtocolEndpoints -Issuer $ProtocolEndpoint -RelayState $ProtocolRelayState -Scopes "MyScopes" -Settings $ProtocolSettings -Type "MTLS"

$IdentityProvider = Initialize-OktaIdentityProvider -Created (Get-Date) -Id "MyId" -IssuerMode "CUSTOM_URL" -LastUpdated (Get-Date) -Name "MyName" -Policy $IdentityProviderPolicy -Protocol $Protocol -Status "ACTIVE" -Type "AgentlessDSSO" -Links @{ key_example =  } # IdentityProvider | 

# Replace an Identity Provider
try {
    $Result = Update-OktaIdentityProvider -IdpId $IdpId -IdentityProvider $IdentityProvider
} catch {
    Write-Host ("Exception occurred when calling Update-OktaIdentityProvider: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

