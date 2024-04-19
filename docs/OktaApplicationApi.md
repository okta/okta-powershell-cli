# Okta.PowerShell.Okta.PowerShell\Api.OktaApplicationApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateApplication**](OktaApplicationApi.md#Invoke-OktaActivateApplication) | **POST** /api/v1/apps/{appId}/lifecycle/activate | Activate an Application
[**Invoke-OktaActivateDefaultProvisioningConnectionForApplication**](OktaApplicationApi.md#Invoke-OktaActivateDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default/lifecycle/activate | Activate the default Provisioning Connection
[**Set-OktaApplicationPolicy**](OktaApplicationApi.md#Set-OktaApplicationPolicy) | **PUT** /api/v1/apps/{appId}/policies/{policyId} | Assign an application to a specific policy
[**Set-OktaUserToApplication**](OktaApplicationApi.md#Set-OktaUserToApplication) | **POST** /api/v1/apps/{appId}/users | Assign a User
[**Copy-OktaApplicationKey**](OktaApplicationApi.md#Copy-OktaApplicationKey) | **POST** /api/v1/apps/{appId}/credentials/keys/{keyId}/clone | Clone a Key Credential
[**New-OktaApplication**](OktaApplicationApi.md#New-OktaApplication) | **POST** /api/v1/apps | Create an Application
[**New-OktaApplicationGroupAssignment**](OktaApplicationApi.md#New-OktaApplicationGroupAssignment) | **PUT** /api/v1/apps/{appId}/groups/{groupId} | Assign a Group
[**Invoke-OktaDeactivateApplication**](OktaApplicationApi.md#Invoke-OktaDeactivateApplication) | **POST** /api/v1/apps/{appId}/lifecycle/deactivate | Deactivate an Application
[**Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication**](OktaApplicationApi.md#Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default/lifecycle/deactivate | Deactivate the default Provisioning Connection for an Application
[**Invoke-OktaDeleteApplication**](OktaApplicationApi.md#Invoke-OktaDeleteApplication) | **DELETE** /api/v1/apps/{appId} | Delete an Application
[**Invoke-OktaDeleteApplicationGroupAssignment**](OktaApplicationApi.md#Invoke-OktaDeleteApplicationGroupAssignment) | **DELETE** /api/v1/apps/{appId}/groups/{groupId} | Unassign a Group
[**Invoke-OktaDeleteApplicationUser**](OktaApplicationApi.md#Invoke-OktaDeleteApplicationUser) | **DELETE** /api/v1/apps/{appId}/users/{userId} | Unassign a User
[**New-OktaApplicationKey**](OktaApplicationApi.md#New-OktaApplicationKey) | **POST** /api/v1/apps/{appId}/credentials/keys/generate | Generate a Key Credential
[**New-OktaCsrForApplication**](OktaApplicationApi.md#New-OktaCsrForApplication) | **POST** /api/v1/apps/{appId}/credentials/csrs | Generate a Certificate Signing Request
[**Get-OktaApplication**](OktaApplicationApi.md#Get-OktaApplication) | **GET** /api/v1/apps/{appId} | Retrieve an Application
[**Get-OktaApplicationGroupAssignment**](OktaApplicationApi.md#Get-OktaApplicationGroupAssignment) | **GET** /api/v1/apps/{appId}/groups/{groupId} | Retrieve an Assigned Group
[**Get-OktaApplicationKey**](OktaApplicationApi.md#Get-OktaApplicationKey) | **GET** /api/v1/apps/{appId}/credentials/keys/{keyId} | Retrieve a Key Credential
[**Get-OktaApplicationUser**](OktaApplicationApi.md#Get-OktaApplicationUser) | **GET** /api/v1/apps/{appId}/users/{userId} | Retrieve an Assigned User
[**Get-OktaCsrForApplication**](OktaApplicationApi.md#Get-OktaCsrForApplication) | **GET** /api/v1/apps/{appId}/credentials/csrs/{csrId} | Retrieve a Certificate Signing Request
[**Get-OktaDefaultProvisioningConnectionForApplication**](OktaApplicationApi.md#Get-OktaDefaultProvisioningConnectionForApplication) | **GET** /api/v1/apps/{appId}/connections/default | Retrieve the default Provisioning Connection
[**Get-OktaFeatureForApplication**](OktaApplicationApi.md#Get-OktaFeatureForApplication) | **GET** /api/v1/apps/{appId}/features/{name} | Retrieve a Feature
[**Get-OktaOAuth2TokenForApplication**](OktaApplicationApi.md#Get-OktaOAuth2TokenForApplication) | **GET** /api/v1/apps/{appId}/tokens/{tokenId} | Retrieve an OAuth 2.0 Token
[**Get-OktaScopeConsentGrant**](OktaApplicationApi.md#Get-OktaScopeConsentGrant) | **GET** /api/v1/apps/{appId}/grants/{grantId} | Retrieve a Scope Consent Grant
[**Grant-OktaConsentToScope**](OktaApplicationApi.md#Grant-OktaConsentToScope) | **POST** /api/v1/apps/{appId}/grants | Grant Consent to Scope
[**Invoke-OktaListApplicationGroupAssignments**](OktaApplicationApi.md#Invoke-OktaListApplicationGroupAssignments) | **GET** /api/v1/apps/{appId}/groups | List all Assigned Groups
[**Invoke-OktaListApplicationKeys**](OktaApplicationApi.md#Invoke-OktaListApplicationKeys) | **GET** /api/v1/apps/{appId}/credentials/keys | List all Key Credentials
[**Invoke-OktaListApplicationUsers**](OktaApplicationApi.md#Invoke-OktaListApplicationUsers) | **GET** /api/v1/apps/{appId}/users | List all Assigned Users
[**Invoke-OktaListApplications**](OktaApplicationApi.md#Invoke-OktaListApplications) | **GET** /api/v1/apps | List all Applications
[**Invoke-OktaListCsrsForApplication**](OktaApplicationApi.md#Invoke-OktaListCsrsForApplication) | **GET** /api/v1/apps/{appId}/credentials/csrs | List all Certificate Signing Requests
[**Invoke-OktaListFeaturesForApplication**](OktaApplicationApi.md#Invoke-OktaListFeaturesForApplication) | **GET** /api/v1/apps/{appId}/features | List all Features
[**Invoke-OktaListOAuth2TokensForApplication**](OktaApplicationApi.md#Invoke-OktaListOAuth2TokensForApplication) | **GET** /api/v1/apps/{appId}/tokens | List all OAuth 2.0 Tokens
[**Invoke-OktaListScopeConsentGrants**](OktaApplicationApi.md#Invoke-OktaListScopeConsentGrants) | **GET** /api/v1/apps/{appId}/grants | List all Scope Consent Grants
[**Publish-OktaCsrFromApplication**](OktaApplicationApi.md#Publish-OktaCsrFromApplication) | **POST** /api/v1/apps/{appId}/credentials/csrs/{csrId}/lifecycle/publish | Publish a Certificate Signing Request
[**Revoke-OktaCsrFromApplication**](OktaApplicationApi.md#Revoke-OktaCsrFromApplication) | **DELETE** /api/v1/apps/{appId}/credentials/csrs/{csrId} | Revoke a Certificate Signing Request
[**Revoke-OktaOAuth2TokenForApplication**](OktaApplicationApi.md#Revoke-OktaOAuth2TokenForApplication) | **DELETE** /api/v1/apps/{appId}/tokens/{tokenId} | Revoke an OAuth 2.0 Token
[**Revoke-OktaOAuth2TokensForApplication**](OktaApplicationApi.md#Revoke-OktaOAuth2TokensForApplication) | **DELETE** /api/v1/apps/{appId}/tokens | Revoke all OAuth 2.0 Tokens
[**Revoke-OktaScopeConsentGrant**](OktaApplicationApi.md#Revoke-OktaScopeConsentGrant) | **DELETE** /api/v1/apps/{appId}/grants/{grantId} | Revoke a Scope Consent Grant
[**Set-OktaDefaultProvisioningConnectionForApplication**](OktaApplicationApi.md#Set-OktaDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default | Update the default Provisioning Connection
[**Update-OktaApplication**](OktaApplicationApi.md#Update-OktaApplication) | **PUT** /api/v1/apps/{appId} | Replace an Application
[**Update-OktaApplicationUser**](OktaApplicationApi.md#Update-OktaApplicationUser) | **POST** /api/v1/apps/{appId}/users/{userId} | Update an Application Profile for Assigned User
[**Update-OktaFeatureForApplication**](OktaApplicationApi.md#Update-OktaFeatureForApplication) | **PUT** /api/v1/apps/{appId}/features/{name} | Update a Feature
[**Invoke-OktaUploadApplicationLogo**](OktaApplicationApi.md#Invoke-OktaUploadApplicationLogo) | **POST** /api/v1/apps/{appId}/logo | Upload a Logo


<a id="Invoke-OktaActivateApplication"></a>
# **Invoke-OktaActivateApplication**
> void Invoke-OktaActivateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Activate an Application

Activates an inactive application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# Activate an Application
try {
    $Result = Invoke-OktaActivateApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaActivateDefaultProvisioningConnectionForApplication"></a>
# **Invoke-OktaActivateDefaultProvisioningConnectionForApplication**
> void Invoke-OktaActivateDefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Activate the default Provisioning Connection

Activates the default Provisioning Connection for an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# Activate the default Provisioning Connection
try {
    $Result = Invoke-OktaActivateDefaultProvisioningConnectionForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateDefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-OktaApplicationPolicy"></a>
# **Set-OktaApplicationPolicy**
> void Set-OktaApplicationPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Assign an application to a specific policy

Assign an application to a specific policy. This unassigns the application from its currently assigned policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Assign an application to a specific policy
try {
    $Result = Set-OktaApplicationPolicy -AppId $AppId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Set-OktaApplicationPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **PolicyId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-OktaUserToApplication"></a>
# **Set-OktaUserToApplication**
> AppUser Set-OktaUserToApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppUser] <PSCustomObject><br>

Assign a User

Assigns an user to an application with [credentials](#application-user-credentials-object) and an app-specific [profile](#application-user-profile-object). Profile mappings defined for the application are first applied before applying any profile properties specified in the request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$AppUserPasswordCredential = Initialize-AppUserPasswordCredential -Value "MyValue"
$AppUserCredentials = Initialize-AppUserCredentials -Password $AppUserPasswordCredential -UserName "MyUserName"

$AppUser = Initialize-AppUser -Created (Get-Date) -Credentials $AppUserCredentials -ExternalId "MyExternalId" -Id "MyId" -LastSync (Get-Date) -LastUpdated (Get-Date) -PasswordChanged (Get-Date) -VarProfile @{ key_example =  } -Scope "MyScope" -Status "MyStatus" -StatusChanged (Get-Date) -SyncState "MySyncState" -Embedded @{ key_example =  } -Links @{ key_example =  } # AppUser | 

# Assign a User
try {
    $Result = Set-OktaUserToApplication -AppId $AppId -AppUser $AppUser
} catch {
    Write-Host ("Exception occurred when calling Set-OktaUserToApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **AppUser** | [**AppUser**](AppUser.md)|  | 

### Return type

[**AppUser**](AppUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Copy-OktaApplicationKey"></a>
# **Copy-OktaApplicationKey**
> JsonWebKey Copy-OktaApplicationKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetAid] <String><br>

Clone a Key Credential

Clones a X.509 certificate for an application key credential from a source application to target application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$KeyId = "MyKeyId" # String | 
$TargetAid = "MyTargetAid" # String | Unique key of the target Application

# Clone a Key Credential
try {
    $Result = Copy-OktaApplicationKey -AppId $AppId -KeyId $KeyId -TargetAid $TargetAid
} catch {
    Write-Host ("Exception occurred when calling Copy-OktaApplicationKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **KeyId** | **String**|  | 
 **TargetAid** | **String**| Unique key of the target Application | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaApplication"></a>
# **New-OktaApplication**
> Application New-OktaApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Application] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OktaAccessGatewayAgent] <String><br>

Create an Application

Adds a new application to your Okta organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ApplicationAccessibility = Initialize-ApplicationAccessibility -ErrorRedirectUrl "MyErrorRedirectUrl" -LoginRedirectUrl "MyLoginRedirectUrl" -SelfService $false
$ApplicationLicensing = Initialize-ApplicationLicensing -SeatCount 0

$ApplicationVisibilityHide = Initialize-ApplicationVisibilityHide -IOS $false -Web $false
$ApplicationVisibility = Initialize-ApplicationVisibility -AppLinks @{ key_example = $false } -AutoLaunch $false -AutoSubmitToolbar $false -Hide $ApplicationVisibilityHide

$Application = Initialize-Application -Accessibility $ApplicationAccessibility -Created (Get-Date) -Features "MyFeatures" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Licensing $ApplicationLicensing -VarProfile @{ key_example =  } -SignOnMode "AUTO_LOGIN" -Status "ACTIVE" -Visibility $ApplicationVisibility -Embedded @{ key_example =  } -Links # Application | 
$Activate = $true # Boolean | Executes activation lifecycle operation when creating the app (optional) (default to $true)
$OktaAccessGatewayAgent = "MyOktaAccessGatewayAgent" # String |  (optional)

# Create an Application
try {
    $Result = New-OktaApplication -Application $Application -Activate $Activate -OktaAccessGatewayAgent $OktaAccessGatewayAgent
} catch {
    Write-Host ("Exception occurred when calling New-OktaApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Application** | [**Application**](Application.md)|  | 
 **Activate** | **Boolean**| Executes activation lifecycle operation when creating the app | [optional] [default to $true]
 **OktaAccessGatewayAgent** | **String**|  | [optional] 

### Return type

[**Application**](Application.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaApplicationGroupAssignment"></a>
# **New-OktaApplicationGroupAssignment**
> ApplicationGroupAssignment New-OktaApplicationGroupAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAssignment] <PSCustomObject><br>

Assign a Group

Assigns a group to an application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$GroupId = "MyGroupId" # String | 
$ApplicationGroupAssignment = Initialize-ApplicationGroupAssignment -Id "MyId" -LastUpdated (Get-Date) -Priority 0 -VarProfile @{ key_example =  } -Embedded @{ key_example =  } -Links @{ key_example =  } # ApplicationGroupAssignment |  (optional)

# Assign a Group
try {
    $Result = New-OktaApplicationGroupAssignment -AppId $AppId -GroupId $GroupId -ApplicationGroupAssignment $ApplicationGroupAssignment
} catch {
    Write-Host ("Exception occurred when calling New-OktaApplicationGroupAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **GroupId** | **String**|  | 
 **ApplicationGroupAssignment** | [**ApplicationGroupAssignment**](ApplicationGroupAssignment.md)|  | [optional] 

### Return type

[**ApplicationGroupAssignment**](ApplicationGroupAssignment.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateApplication"></a>
# **Invoke-OktaDeactivateApplication**
> void Invoke-OktaDeactivateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Deactivate an Application

Deactivates an active application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# Deactivate an Application
try {
    $Result = Invoke-OktaDeactivateApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication"></a>
# **Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication**
> void Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Deactivate the default Provisioning Connection for an Application

Deactivates the default Provisioning Connection for an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# Deactivate the default Provisioning Connection for an Application
try {
    $Result = Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateDefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteApplication"></a>
# **Invoke-OktaDeleteApplication**
> void Invoke-OktaDeleteApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Delete an Application

Removes an inactive application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# Delete an Application
try {
    $Result = Invoke-OktaDeleteApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteApplicationGroupAssignment"></a>
# **Invoke-OktaDeleteApplicationGroupAssignment**
> void Invoke-OktaDeleteApplicationGroupAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Unassign a Group

Removes a group assignment from an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$GroupId = "MyGroupId" # String | 

# Unassign a Group
try {
    $Result = Invoke-OktaDeleteApplicationGroupAssignment -AppId $AppId -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteApplicationGroupAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **GroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteApplicationUser"></a>
# **Invoke-OktaDeleteApplicationUser**
> void Invoke-OktaDeleteApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Unassign a User

Removes an assignment for a user from an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $false)

# Unassign a User
try {
    $Result = Invoke-OktaDeleteApplicationUser -AppId $AppId -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **UserId** | **String**|  | 
 **SendEmail** | **Boolean**|  | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaApplicationKey"></a>
# **New-OktaApplicationKey**
> JsonWebKey New-OktaApplicationKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidityYears] <System.Nullable[Int32]><br>

Generate a Key Credential

Generates a new X.509 certificate for an application key credential

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$ValidityYears = 56 # Int32 |  (optional)

# Generate a Key Credential
try {
    $Result = New-OktaApplicationKey -AppId $AppId -ValidityYears $ValidityYears
} catch {
    Write-Host ("Exception occurred when calling New-OktaApplicationKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **ValidityYears** | **Int32**|  | [optional] 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaCsrForApplication"></a>
# **New-OktaCsrForApplication**
> Csr New-OktaCsrForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Metadata] <PSCustomObject><br>

Generate a Certificate Signing Request

Generates a new key pair and returns the Certificate Signing Request for it.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$CsrMetadataSubject = Initialize-CsrMetadataSubject -CommonName "MyCommonName" -CountryName "MyCountryName" -LocalityName "MyLocalityName" -OrganizationalUnitName "MyOrganizationalUnitName" -OrganizationName "MyOrganizationName" -StateOrProvinceName "MyStateOrProvinceName"
$CsrMetadataSubjectAltNames = Initialize-CsrMetadataSubjectAltNames -DnsNames "MyDnsNames"
$CsrMetadata = Initialize-CsrMetadata -Subject $CsrMetadataSubject -SubjectAltNames $CsrMetadataSubjectAltNames # CsrMetadata | 

# Generate a Certificate Signing Request
try {
    $Result = New-OktaCsrForApplication -AppId $AppId -Metadata $Metadata
} catch {
    Write-Host ("Exception occurred when calling New-OktaCsrForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Metadata** | [**CsrMetadata**](CsrMetadata.md)|  | 

### Return type

[**Csr**](Csr.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaApplication"></a>
# **Get-OktaApplication**
> Application Get-OktaApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an Application

Fetches an application from your Okta organization by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an Application
try {
    $Result = Get-OktaApplication -AppId $AppId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**Application**](Application.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaApplicationGroupAssignment"></a>
# **Get-OktaApplicationGroupAssignment**
> ApplicationGroupAssignment Get-OktaApplicationGroupAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an Assigned Group

Fetches an application group assignment

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$GroupId = "MyGroupId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an Assigned Group
try {
    $Result = Get-OktaApplicationGroupAssignment -AppId $AppId -GroupId $GroupId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaApplicationGroupAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **GroupId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**ApplicationGroupAssignment**](ApplicationGroupAssignment.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaApplicationKey"></a>
# **Get-OktaApplicationKey**
> JsonWebKey Get-OktaApplicationKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve a Key Credential

Gets a specific application key credential by kid

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$KeyId = "MyKeyId" # String | 

# Retrieve a Key Credential
try {
    $Result = Get-OktaApplicationKey -AppId $AppId -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaApplicationKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **KeyId** | **String**|  | 

### Return type

[**JsonWebKey**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaApplicationUser"></a>
# **Get-OktaApplicationUser**
> AppUser Get-OktaApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an Assigned User

Fetches a specific user assignment for application by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$UserId = "MyUserId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an Assigned User
try {
    $Result = Get-OktaApplicationUser -AppId $AppId -UserId $UserId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **UserId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**AppUser**](AppUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaCsrForApplication"></a>
# **Get-OktaCsrForApplication**
> Csr Get-OktaCsrForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Retrieve a Certificate Signing Request

Fetches a certificate signing request for the app by `id`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$CsrId = "MyCsrId" # String | 

# Retrieve a Certificate Signing Request
try {
    $Result = Get-OktaCsrForApplication -AppId $AppId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaCsrForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **CsrId** | **String**|  | 

### Return type

[**Csr**](Csr.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaDefaultProvisioningConnectionForApplication"></a>
# **Get-OktaDefaultProvisioningConnectionForApplication**
> ProvisioningConnection Get-OktaDefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Retrieve the default Provisioning Connection

Get default Provisioning Connection for application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# Retrieve the default Provisioning Connection
try {
    $Result = Get-OktaDefaultProvisioningConnectionForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaDefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

[**ProvisioningConnection**](ProvisioningConnection.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaFeatureForApplication"></a>
# **Get-OktaFeatureForApplication**
> ApplicationFeature Get-OktaFeatureForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Retrieve a Feature

Fetches a Feature object for an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$Name = "MyName" # String | 

# Retrieve a Feature
try {
    $Result = Get-OktaFeatureForApplication -AppId $AppId -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-OktaFeatureForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Name** | **String**|  | 

### Return type

[**ApplicationFeature**](ApplicationFeature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOAuth2TokenForApplication"></a>
# **Get-OktaOAuth2TokenForApplication**
> OAuth2Token Get-OktaOAuth2TokenForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an OAuth 2.0 Token

Gets a token for the specified application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$TokenId = "MyTokenId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an OAuth 2.0 Token
try {
    $Result = Get-OktaOAuth2TokenForApplication -AppId $AppId -TokenId $TokenId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOAuth2TokenForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **TokenId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**OAuth2Token**](OAuth2Token.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaScopeConsentGrant"></a>
# **Get-OktaScopeConsentGrant**
> OAuth2ScopeConsentGrant Get-OktaScopeConsentGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Scope Consent Grant

Fetches a single scope consent grant for the application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

$AppId = "MyAppId" # String | 
$GrantId = "MyGrantId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a Scope Consent Grant
try {
    $Result = Get-OktaScopeConsentGrant -AppId $AppId -GrantId $GrantId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaScopeConsentGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **GrantId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**OAuth2ScopeConsentGrant**](OAuth2ScopeConsentGrant.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Grant-OktaConsentToScope"></a>
# **Grant-OktaConsentToScope**
> OAuth2ScopeConsentGrant Grant-OktaConsentToScope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2ScopeConsentGrant] <PSCustomObject><br>

Grant Consent to Scope

Grants consent for the application to request an OAuth 2.0 Okta scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

$AppId = "MyAppId" # String | 
$OAuth2Actor = Initialize-OAuth2Actor -Id "MyId" -Type "MyType"
$OAuth2ScopeConsentGrant = Initialize-OAuth2ScopeConsentGrant -ClientId "MyClientId" -Created (Get-Date) -CreatedBy $OAuth2Actor -Id "MyId" -Issuer "MyIssuer" -LastUpdated (Get-Date) -ScopeId "MyScopeId" -Source "ADMIN" -Status "ACTIVE" -UserId "MyUserId" -Embedded @{ key_example =  } -Links @{ key_example =  } # OAuth2ScopeConsentGrant | 

# Grant Consent to Scope
try {
    $Result = Grant-OktaConsentToScope -AppId $AppId -OAuth2ScopeConsentGrant $OAuth2ScopeConsentGrant
} catch {
    Write-Host ("Exception occurred when calling Grant-OktaConsentToScope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **OAuth2ScopeConsentGrant** | [**OAuth2ScopeConsentGrant**](OAuth2ScopeConsentGrant.md)|  | 

### Return type

[**OAuth2ScopeConsentGrant**](OAuth2ScopeConsentGrant.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListApplicationGroupAssignments"></a>
# **Invoke-OktaListApplicationGroupAssignments**
> ApplicationGroupAssignment[] Invoke-OktaListApplicationGroupAssignments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Assigned Groups

Enumerates group assignments for an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$Q = "MyQ" # String |  (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of assignments (optional)
$Limit = 56 # Int32 | Specifies the number of results for a page (optional) (default to -1)
$Expand = "MyExpand" # String |  (optional)

# List all Assigned Groups
try {
    $Result = Invoke-OktaListApplicationGroupAssignments -AppId $AppId -Q $Q -After $After -Limit $Limit -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListApplicationGroupAssignments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Q** | **String**|  | [optional] 
 **After** | **String**| Specifies the pagination cursor for the next page of assignments | [optional] 
 **Limit** | **Int32**| Specifies the number of results for a page | [optional] [default to -1]
 **Expand** | **String**|  | [optional] 

### Return type

[**ApplicationGroupAssignment[]**](ApplicationGroupAssignment.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListApplicationKeys"></a>
# **Invoke-OktaListApplicationKeys**
> JsonWebKey[] Invoke-OktaListApplicationKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

List all Key Credentials

Enumerates key credentials for an application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# List all Key Credentials
try {
    $Result = Invoke-OktaListApplicationKeys -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListApplicationKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

[**JsonWebKey[]**](JsonWebKey.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListApplicationUsers"></a>
# **Invoke-OktaListApplicationUsers**
> AppUser[] Invoke-OktaListApplicationUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryScope] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Assigned Users

Enumerates all assigned [application users](#application-user-model) for an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$Q = "MyQ" # String |  (optional)
$QueryScope = "MyQueryScope" # String |  (optional)
$After = "MyAfter" # String | specifies the pagination cursor for the next page of assignments (optional)
$Limit = 56 # Int32 | specifies the number of results for a page (optional) (default to -1)
$Filter = "MyFilter" # String |  (optional)
$Expand = "MyExpand" # String |  (optional)

# List all Assigned Users
try {
    $Result = Invoke-OktaListApplicationUsers -AppId $AppId -Q $Q -QueryScope $QueryScope -After $After -Limit $Limit -Filter $Filter -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListApplicationUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Q** | **String**|  | [optional] 
 **QueryScope** | **String**|  | [optional] 
 **After** | **String**| specifies the pagination cursor for the next page of assignments | [optional] 
 **Limit** | **Int32**| specifies the number of results for a page | [optional] [default to -1]
 **Filter** | **String**|  | [optional] 
 **Expand** | **String**|  | [optional] 

### Return type

[**AppUser[]**](AppUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListApplications"></a>
# **Invoke-OktaListApplications**
> Application[] Invoke-OktaListApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeNonDeleted] <System.Nullable[Boolean]><br>

List all Applications

Enumerates apps added to your organization with pagination. A subset of apps can be returned that match a supported filter expression or query.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Q = "MyQ" # String |  (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of apps (optional)
$Limit = 56 # Int32 | Specifies the number of results for a page (optional) (default to -1)
$Filter = "MyFilter" # String | Filters apps by status, user.id, group.id or credentials.signing.kid expression (optional)
$Expand = "MyExpand" # String | Traverses users link relationship and optionally embeds Application User resource (optional)
$IncludeNonDeleted = $true # Boolean |  (optional) (default to $false)

# List all Applications
try {
    $Result = Invoke-OktaListApplications -Q $Q -After $After -Limit $Limit -Filter $Filter -Expand $Expand -IncludeNonDeleted $IncludeNonDeleted
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**|  | [optional] 
 **After** | **String**| Specifies the pagination cursor for the next page of apps | [optional] 
 **Limit** | **Int32**| Specifies the number of results for a page | [optional] [default to -1]
 **Filter** | **String**| Filters apps by status, user.id, group.id or credentials.signing.kid expression | [optional] 
 **Expand** | **String**| Traverses users link relationship and optionally embeds Application User resource | [optional] 
 **IncludeNonDeleted** | **Boolean**|  | [optional] [default to $false]

### Return type

[**Application[]**](Application.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListCsrsForApplication"></a>
# **Invoke-OktaListCsrsForApplication**
> Csr[] Invoke-OktaListCsrsForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

List all Certificate Signing Requests

Enumerates Certificate Signing Requests for an application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# List all Certificate Signing Requests
try {
    $Result = Invoke-OktaListCsrsForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListCsrsForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

[**Csr[]**](Csr.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListFeaturesForApplication"></a>
# **Invoke-OktaListFeaturesForApplication**
> ApplicationFeature[] Invoke-OktaListFeaturesForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

List all Features

List Features for application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# List all Features
try {
    $Result = Invoke-OktaListFeaturesForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListFeaturesForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

[**ApplicationFeature[]**](ApplicationFeature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListOAuth2TokensForApplication"></a>
# **Invoke-OktaListOAuth2TokensForApplication**
> OAuth2Token[] Invoke-OktaListOAuth2TokensForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all OAuth 2.0 Tokens

Lists all tokens for the application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all OAuth 2.0 Tokens
try {
    $Result = Invoke-OktaListOAuth2TokensForApplication -AppId $AppId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListOAuth2TokensForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Expand** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**OAuth2Token[]**](OAuth2Token.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListScopeConsentGrants"></a>
# **Invoke-OktaListScopeConsentGrants**
> OAuth2ScopeConsentGrant[] Invoke-OktaListScopeConsentGrants<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Scope Consent Grants

Lists all scope consent grants for the application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

$AppId = "MyAppId" # String | 
$Expand = "MyExpand" # String |  (optional)

# List all Scope Consent Grants
try {
    $Result = Invoke-OktaListScopeConsentGrants -AppId $AppId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListScopeConsentGrants: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**OAuth2ScopeConsentGrant[]**](OAuth2ScopeConsentGrant.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Publish-OktaCsrFromApplication"></a>
# **Publish-OktaCsrFromApplication**
> JsonWebKey Publish-OktaCsrFromApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.IO.FileInfo><br>

Publish a Certificate Signing Request

Updates a certificate signing request for the app with a signed X.509 certificate and adds it into the application key credentials

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$CsrId = "MyCsrId" # String | 
$Body =  # System.IO.FileInfo | 

# Publish a Certificate Signing Request
try {
    $Result = Publish-OktaCsrFromApplication -AppId $AppId -CsrId $CsrId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Publish-OktaCsrFromApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
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

<a id="Revoke-OktaCsrFromApplication"></a>
# **Revoke-OktaCsrFromApplication**
> void Revoke-OktaCsrFromApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Revoke a Certificate Signing Request

Revokes a certificate signing request and deletes the key pair from the application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$CsrId = "MyCsrId" # String | 

# Revoke a Certificate Signing Request
try {
    $Result = Revoke-OktaCsrFromApplication -AppId $AppId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaCsrFromApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **CsrId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Revoke-OktaOAuth2TokenForApplication"></a>
# **Revoke-OktaOAuth2TokenForApplication**
> void Revoke-OktaOAuth2TokenForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

Revoke an OAuth 2.0 Token

Revokes the specified token for the specified application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$TokenId = "MyTokenId" # String | 

# Revoke an OAuth 2.0 Token
try {
    $Result = Revoke-OktaOAuth2TokenForApplication -AppId $AppId -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaOAuth2TokenForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **TokenId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Revoke-OktaOAuth2TokensForApplication"></a>
# **Revoke-OktaOAuth2TokensForApplication**
> void Revoke-OktaOAuth2TokensForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Revoke all OAuth 2.0 Tokens

Revokes all tokens for the specified application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 

# Revoke all OAuth 2.0 Tokens
try {
    $Result = Revoke-OktaOAuth2TokensForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaOAuth2TokensForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Revoke-OktaScopeConsentGrant"></a>
# **Revoke-OktaScopeConsentGrant**
> void Revoke-OktaScopeConsentGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>

Revoke a Scope Consent Grant

Revokes permission for the application to request the given scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

$AppId = "MyAppId" # String | 
$GrantId = "MyGrantId" # String | 

# Revoke a Scope Consent Grant
try {
    $Result = Revoke-OktaScopeConsentGrant -AppId $AppId -GrantId $GrantId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaScopeConsentGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **GrantId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-OktaDefaultProvisioningConnectionForApplication"></a>
# **Set-OktaDefaultProvisioningConnectionForApplication**
> ProvisioningConnection Set-OktaDefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningConnectionRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>

Update the default Provisioning Connection

Set default Provisioning Connection for application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$ProvisioningConnectionProfile = Initialize-ProvisioningConnectionProfile -AuthScheme "TOKEN" -Token "MyToken"
$ProvisioningConnectionRequest = Initialize-ProvisioningConnectionRequest -VarProfile $ProvisioningConnectionProfile # ProvisioningConnectionRequest | 
$Activate = $true # Boolean |  (optional)

# Update the default Provisioning Connection
try {
    $Result = Set-OktaDefaultProvisioningConnectionForApplication -AppId $AppId -ProvisioningConnectionRequest $ProvisioningConnectionRequest -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling Set-OktaDefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **ProvisioningConnectionRequest** | [**ProvisioningConnectionRequest**](ProvisioningConnectionRequest.md)|  | 
 **Activate** | **Boolean**|  | [optional] 

### Return type

[**ProvisioningConnection**](ProvisioningConnection.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaApplication"></a>
# **Update-OktaApplication**
> Application Update-OktaApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Application] <PSCustomObject><br>

Replace an Application

Updates an application in your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$ApplicationAccessibility = Initialize-ApplicationAccessibility -ErrorRedirectUrl "MyErrorRedirectUrl" -LoginRedirectUrl "MyLoginRedirectUrl" -SelfService $false
$ApplicationLicensing = Initialize-ApplicationLicensing -SeatCount 0

$ApplicationVisibilityHide = Initialize-ApplicationVisibilityHide -IOS $false -Web $false
$ApplicationVisibility = Initialize-ApplicationVisibility -AppLinks @{ key_example = $false } -AutoLaunch $false -AutoSubmitToolbar $false -Hide $ApplicationVisibilityHide

$Application = Initialize-Application -Accessibility $ApplicationAccessibility -Created (Get-Date) -Features "MyFeatures" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Licensing $ApplicationLicensing -VarProfile @{ key_example =  } -SignOnMode "AUTO_LOGIN" -Status "ACTIVE" -Visibility $ApplicationVisibility -Embedded @{ key_example =  } -Links # Application | 

# Replace an Application
try {
    $Result = Update-OktaApplication -AppId $AppId -Application $Application
} catch {
    Write-Host ("Exception occurred when calling Update-OktaApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Application** | [**Application**](Application.md)|  | 

### Return type

[**Application**](Application.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaApplicationUser"></a>
# **Update-OktaApplicationUser**
> AppUser Update-OktaApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppUser] <PSCustomObject><br>

Update an Application Profile for Assigned User

Updates a user's profile for an application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$UserId = "MyUserId" # String | 
$AppUserPasswordCredential = Initialize-AppUserPasswordCredential -Value "MyValue"
$AppUserCredentials = Initialize-AppUserCredentials -Password $AppUserPasswordCredential -UserName "MyUserName"

$AppUser = Initialize-AppUser -Created (Get-Date) -Credentials $AppUserCredentials -ExternalId "MyExternalId" -Id "MyId" -LastSync (Get-Date) -LastUpdated (Get-Date) -PasswordChanged (Get-Date) -VarProfile @{ key_example =  } -Scope "MyScope" -Status "MyStatus" -StatusChanged (Get-Date) -SyncState "MySyncState" -Embedded @{ key_example =  } -Links @{ key_example =  } # AppUser | 

# Update an Application Profile for Assigned User
try {
    $Result = Update-OktaApplicationUser -AppId $AppId -UserId $UserId -AppUser $AppUser
} catch {
    Write-Host ("Exception occurred when calling Update-OktaApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **UserId** | **String**|  | 
 **AppUser** | [**AppUser**](AppUser.md)|  | 

### Return type

[**AppUser**](AppUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaFeatureForApplication"></a>
# **Update-OktaFeatureForApplication**
> ApplicationFeature Update-OktaFeatureForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CapabilitiesObject] <PSCustomObject><br>

Update a Feature

Updates a Feature object for an application.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$Name = "MyName" # String | 
$LifecycleCreateSettingObject = Initialize-LifecycleCreateSettingObject -Status "DISABLED"
$CapabilitiesCreateObject = Initialize-CapabilitiesCreateObject -LifecycleCreate $LifecycleCreateSettingObject

$LifecycleDeactivateSettingObject = Initialize-LifecycleDeactivateSettingObject -Status "DISABLED"
$PasswordSettingObject = Initialize-PasswordSettingObject -Change "CHANGE" -Seed "OKTA" -Status "DISABLED"
$ProfileSettingObject = Initialize-ProfileSettingObject -Status "DISABLED"
$CapabilitiesUpdateObject = Initialize-CapabilitiesUpdateObject -LifecycleDeactivate $LifecycleDeactivateSettingObject -Password $PasswordSettingObject -VarProfile $ProfileSettingObject

$CapabilitiesObject = Initialize-CapabilitiesObject -Create $CapabilitiesCreateObject -Update $CapabilitiesUpdateObject # CapabilitiesObject | 

# Update a Feature
try {
    $Result = Update-OktaFeatureForApplication -AppId $AppId -Name $Name -CapabilitiesObject $CapabilitiesObject
} catch {
    Write-Host ("Exception occurred when calling Update-OktaFeatureForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **Name** | **String**|  | 
 **CapabilitiesObject** | [**CapabilitiesObject**](CapabilitiesObject.md)|  | 

### Return type

[**ApplicationFeature**](ApplicationFeature.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaUploadApplicationLogo"></a>
# **Invoke-OktaUploadApplicationLogo**
> void Invoke-OktaUploadApplicationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload a Logo

The file must be in PNG, JPG, or GIF format, and less than 1 MB in size. For best results use landscape orientation, a transparent background, and a minimum size of 420px by 120px to prevent upscaling.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AppId = "MyAppId" # String | 
$File =  # System.IO.FileInfo | 

# Upload a Logo
try {
    $Result = Invoke-OktaUploadApplicationLogo -AppId $AppId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUploadApplicationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppId** | **String**|  | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

