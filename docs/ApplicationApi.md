# PSOpenAPITools.PSOpenAPITools\Api.ApplicationApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateApplication**](ApplicationApi.md#Invoke-ActivateApplication) | **POST** /api/v1/apps/{appId}/lifecycle/activate | Activate an Application
[**Invoke-ActivateDefaultProvisioningConnectionForApplication**](ApplicationApi.md#Invoke-ActivateDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default/lifecycle/activate | Activate the default Provisioning Connection
[**Set-ApplicationPolicy**](ApplicationApi.md#Set-ApplicationPolicy) | **PUT** /api/v1/apps/{appId}/policies/{policyId} | Assign an application to a specific policy
[**Set-UserToApplication**](ApplicationApi.md#Set-UserToApplication) | **POST** /api/v1/apps/{appId}/users | Assign a User
[**Copy-ApplicationKey**](ApplicationApi.md#Copy-ApplicationKey) | **POST** /api/v1/apps/{appId}/credentials/keys/{keyId}/clone | Clone a Key Credential
[**New-Application**](ApplicationApi.md#New-Application) | **POST** /api/v1/apps | Create an Application
[**New-ApplicationGroupAssignment**](ApplicationApi.md#New-ApplicationGroupAssignment) | **PUT** /api/v1/apps/{appId}/groups/{groupId} | Assign a Group
[**Invoke-DeactivateApplication**](ApplicationApi.md#Invoke-DeactivateApplication) | **POST** /api/v1/apps/{appId}/lifecycle/deactivate | Deactivate an Application
[**Invoke-DeactivateDefaultProvisioningConnectionForApplication**](ApplicationApi.md#Invoke-DeactivateDefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default/lifecycle/deactivate | Deactivate the default Provisioning Connection for an Application
[**Invoke-DeleteApplication**](ApplicationApi.md#Invoke-DeleteApplication) | **DELETE** /api/v1/apps/{appId} | Delete an Application
[**Invoke-DeleteApplicationGroupAssignment**](ApplicationApi.md#Invoke-DeleteApplicationGroupAssignment) | **DELETE** /api/v1/apps/{appId}/groups/{groupId} | Unassign a Group
[**Invoke-DeleteApplicationUser**](ApplicationApi.md#Invoke-DeleteApplicationUser) | **DELETE** /api/v1/apps/{appId}/users/{userId} | Unassign a User
[**New-ApplicationKey**](ApplicationApi.md#New-ApplicationKey) | **POST** /api/v1/apps/{appId}/credentials/keys/generate | Generate a Key Credential
[**New-CsrForApplication**](ApplicationApi.md#New-CsrForApplication) | **POST** /api/v1/apps/{appId}/credentials/csrs | Generate a Certificate Signing Request
[**Get-Application**](ApplicationApi.md#Get-Application) | **GET** /api/v1/apps/{appId} | Retrieve an Application
[**Get-ApplicationGroupAssignment**](ApplicationApi.md#Get-ApplicationGroupAssignment) | **GET** /api/v1/apps/{appId}/groups/{groupId} | Retrieve an Assigned Group
[**Get-ApplicationKey**](ApplicationApi.md#Get-ApplicationKey) | **GET** /api/v1/apps/{appId}/credentials/keys/{keyId} | Retrieve a Key Credential
[**Get-ApplicationUser**](ApplicationApi.md#Get-ApplicationUser) | **GET** /api/v1/apps/{appId}/users/{userId} | Retrieve an Assigned User
[**Get-CsrForApplication**](ApplicationApi.md#Get-CsrForApplication) | **GET** /api/v1/apps/{appId}/credentials/csrs/{csrId} | Retrieve a Certificate Signing Request
[**Get-DefaultProvisioningConnectionForApplication**](ApplicationApi.md#Get-DefaultProvisioningConnectionForApplication) | **GET** /api/v1/apps/{appId}/connections/default | Retrieve the default Provisioning Connection
[**Get-FeatureForApplication**](ApplicationApi.md#Get-FeatureForApplication) | **GET** /api/v1/apps/{appId}/features/{name} | Retrieve a Feature
[**Get-OAuth2TokenForApplication**](ApplicationApi.md#Get-OAuth2TokenForApplication) | **GET** /api/v1/apps/{appId}/tokens/{tokenId} | Retrieve an OAuth 2.0 Token
[**Get-ScopeConsentGrant**](ApplicationApi.md#Get-ScopeConsentGrant) | **GET** /api/v1/apps/{appId}/grants/{grantId} | Retrieve a Scope Consent Grant
[**Grant-ConsentToScope**](ApplicationApi.md#Grant-ConsentToScope) | **POST** /api/v1/apps/{appId}/grants | Grant Consent to Scope
[**Invoke-ListApplicationGroupAssignments**](ApplicationApi.md#Invoke-ListApplicationGroupAssignments) | **GET** /api/v1/apps/{appId}/groups | List all Assigned Groups
[**Invoke-ListApplicationKeys**](ApplicationApi.md#Invoke-ListApplicationKeys) | **GET** /api/v1/apps/{appId}/credentials/keys | List all Key Credentials
[**Invoke-ListApplicationUsers**](ApplicationApi.md#Invoke-ListApplicationUsers) | **GET** /api/v1/apps/{appId}/users | List all Assigned Users
[**Invoke-ListApplications**](ApplicationApi.md#Invoke-ListApplications) | **GET** /api/v1/apps | List all Applications
[**Invoke-ListCsrsForApplication**](ApplicationApi.md#Invoke-ListCsrsForApplication) | **GET** /api/v1/apps/{appId}/credentials/csrs | List all Certificate Signing Requests
[**Invoke-ListFeaturesForApplication**](ApplicationApi.md#Invoke-ListFeaturesForApplication) | **GET** /api/v1/apps/{appId}/features | List all Features
[**Invoke-ListOAuth2TokensForApplication**](ApplicationApi.md#Invoke-ListOAuth2TokensForApplication) | **GET** /api/v1/apps/{appId}/tokens | List all OAuth 2.0 Tokens
[**Invoke-ListScopeConsentGrants**](ApplicationApi.md#Invoke-ListScopeConsentGrants) | **GET** /api/v1/apps/{appId}/grants | List all Scope Consent Grants
[**Publish-CsrFromApplication**](ApplicationApi.md#Publish-CsrFromApplication) | **POST** /api/v1/apps/{appId}/credentials/csrs/{csrId}/lifecycle/publish | Publish a Certificate Signing Request
[**Revoke-CsrFromApplication**](ApplicationApi.md#Revoke-CsrFromApplication) | **DELETE** /api/v1/apps/{appId}/credentials/csrs/{csrId} | Revoke a Certificate Signing Request
[**Revoke-OAuth2TokenForApplication**](ApplicationApi.md#Revoke-OAuth2TokenForApplication) | **DELETE** /api/v1/apps/{appId}/tokens/{tokenId} | Revoke an OAuth 2.0 Token
[**Revoke-OAuth2TokensForApplication**](ApplicationApi.md#Revoke-OAuth2TokensForApplication) | **DELETE** /api/v1/apps/{appId}/tokens | Revoke all OAuth 2.0 Tokens
[**Revoke-ScopeConsentGrant**](ApplicationApi.md#Revoke-ScopeConsentGrant) | **DELETE** /api/v1/apps/{appId}/grants/{grantId} | Revoke a Scope Consent Grant
[**Set-DefaultProvisioningConnectionForApplication**](ApplicationApi.md#Set-DefaultProvisioningConnectionForApplication) | **POST** /api/v1/apps/{appId}/connections/default | Update the default Provisioning Connection
[**Update-Application**](ApplicationApi.md#Update-Application) | **PUT** /api/v1/apps/{appId} | Replace an Application
[**Update-ApplicationUser**](ApplicationApi.md#Update-ApplicationUser) | **POST** /api/v1/apps/{appId}/users/{userId} | Update an Application Profile for Assigned User
[**Update-FeatureForApplication**](ApplicationApi.md#Update-FeatureForApplication) | **PUT** /api/v1/apps/{appId}/features/{name} | Update a Feature
[**Invoke-UploadApplicationLogo**](ApplicationApi.md#Invoke-UploadApplicationLogo) | **POST** /api/v1/apps/{appId}/logo | Upload a Logo


<a name="Invoke-ActivateApplication"></a>
# **Invoke-ActivateApplication**
> void Invoke-ActivateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Activate an Application

Activates an inactive application.

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

$AppId = "MyAppId" # String | 

# Activate an Application
try {
    $Result = Invoke-ActivateApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ActivateDefaultProvisioningConnectionForApplication"></a>
# **Invoke-ActivateDefaultProvisioningConnectionForApplication**
> void Invoke-ActivateDefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Activate the default Provisioning Connection

Activates the default Provisioning Connection for an application.

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

$AppId = "MyAppId" # String | 

# Activate the default Provisioning Connection
try {
    $Result = Invoke-ActivateDefaultProvisioningConnectionForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateDefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-ApplicationPolicy"></a>
# **Set-ApplicationPolicy**
> void Set-ApplicationPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyId] <String><br>

Assign an application to a specific policy

Assign an application to a specific policy. This unassigns the application from its currently assigned policy.

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

$AppId = "MyAppId" # String | 
$PolicyId = "MyPolicyId" # String | 

# Assign an application to a specific policy
try {
    $Result = Set-ApplicationPolicy -AppId $AppId -PolicyId $PolicyId
} catch {
    Write-Host ("Exception occurred when calling Set-ApplicationPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-UserToApplication"></a>
# **Set-UserToApplication**
> AppUser Set-UserToApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppUser] <PSCustomObject><br>

Assign a User

Assigns an user to an application with [credentials](#application-user-credentials-object) and an app-specific [profile](#application-user-profile-object). Profile mappings defined for the application are first applied before applying any profile properties specified in the request.

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

$AppId = "MyAppId" # String | 
$AppUserPasswordCredential = Initialize-AppUserPasswordCredential -Value "MyValue"
$AppUserCredentials = Initialize-AppUserCredentials -Password $AppUserPasswordCredential -UserName "MyUserName"

$AppUser = Initialize-AppUser -Created (Get-Date) -Credentials $AppUserCredentials -ExternalId "MyExternalId" -Id "MyId" -LastSync (Get-Date) -LastUpdated (Get-Date) -PasswordChanged (Get-Date) -VarProfile @{ key_example =  } -Scope "MyScope" -Status "MyStatus" -StatusChanged (Get-Date) -SyncState "MySyncState" -Embedded @{ key_example =  } -Links @{ key_example =  } # AppUser | 

# Assign a User
try {
    $Result = Set-UserToApplication -AppId $AppId -AppUser $AppUser
} catch {
    Write-Host ("Exception occurred when calling Set-UserToApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Copy-ApplicationKey"></a>
# **Copy-ApplicationKey**
> JsonWebKey Copy-ApplicationKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetAid] <String><br>

Clone a Key Credential

Clones a X.509 certificate for an application key credential from a source application to target application.

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

$AppId = "MyAppId" # String | 
$KeyId = "MyKeyId" # String | 
$TargetAid = "MyTargetAid" # String | Unique key of the target Application

# Clone a Key Credential
try {
    $Result = Copy-ApplicationKey -AppId $AppId -KeyId $KeyId -TargetAid $TargetAid
} catch {
    Write-Host ("Exception occurred when calling Copy-ApplicationKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="New-Application"></a>
# **New-Application**
> Application New-Application<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Application] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OktaAccessGatewayAgent] <String><br>

Create an Application

Adds a new application to your Okta organization.

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

$ApplicationAccessibility = Initialize-ApplicationAccessibility -ErrorRedirectUrl "MyErrorRedirectUrl" -LoginRedirectUrl "MyLoginRedirectUrl" -SelfService $false
$ApplicationLicensing = Initialize-ApplicationLicensing -SeatCount 0

$ApplicationVisibilityHide = Initialize-ApplicationVisibilityHide -IOS $false -Web $false
$ApplicationVisibility = Initialize-ApplicationVisibility -AppLinks @{ key_example = $false } -AutoLaunch $false -AutoSubmitToolbar $false -Hide $ApplicationVisibilityHide

$Application = Initialize-Application -Accessibility $ApplicationAccessibility -Created (Get-Date) -Features "MyFeatures" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Licensing $ApplicationLicensing -VarProfile @{ key_example =  } -SignOnMode "AUTO_LOGIN" -Status "ACTIVE" -Visibility $ApplicationVisibility -Embedded @{ key_example =  } -Links # Application | 
$Activate = $true # Boolean | Executes activation lifecycle operation when creating the app (optional) (default to $true)
$OktaAccessGatewayAgent = "MyOktaAccessGatewayAgent" # String |  (optional)

# Create an Application
try {
    $Result = New-Application -Application $Application -Activate $Activate -OktaAccessGatewayAgent $OktaAccessGatewayAgent
} catch {
    Write-Host ("Exception occurred when calling New-Application: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="New-ApplicationGroupAssignment"></a>
# **New-ApplicationGroupAssignment**
> ApplicationGroupAssignment New-ApplicationGroupAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationGroupAssignment] <PSCustomObject><br>

Assign a Group

Assigns a group to an application

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

$AppId = "MyAppId" # String | 
$GroupId = "MyGroupId" # String | 
$ApplicationGroupAssignment = Initialize-ApplicationGroupAssignment -Id "MyId" -LastUpdated (Get-Date) -Priority 0 -VarProfile @{ key_example =  } -Embedded @{ key_example =  } -Links @{ key_example =  } # ApplicationGroupAssignment |  (optional)

# Assign a Group
try {
    $Result = New-ApplicationGroupAssignment -AppId $AppId -GroupId $GroupId -ApplicationGroupAssignment $ApplicationGroupAssignment
} catch {
    Write-Host ("Exception occurred when calling New-ApplicationGroupAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeactivateApplication"></a>
# **Invoke-DeactivateApplication**
> void Invoke-DeactivateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Deactivate an Application

Deactivates an active application.

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

$AppId = "MyAppId" # String | 

# Deactivate an Application
try {
    $Result = Invoke-DeactivateApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeactivateDefaultProvisioningConnectionForApplication"></a>
# **Invoke-DeactivateDefaultProvisioningConnectionForApplication**
> void Invoke-DeactivateDefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Deactivate the default Provisioning Connection for an Application

Deactivates the default Provisioning Connection for an application.

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

$AppId = "MyAppId" # String | 

# Deactivate the default Provisioning Connection for an Application
try {
    $Result = Invoke-DeactivateDefaultProvisioningConnectionForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateDefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteApplication"></a>
# **Invoke-DeleteApplication**
> void Invoke-DeleteApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Delete an Application

Removes an inactive application.

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

$AppId = "MyAppId" # String | 

# Delete an Application
try {
    $Result = Invoke-DeleteApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteApplicationGroupAssignment"></a>
# **Invoke-DeleteApplicationGroupAssignment**
> void Invoke-DeleteApplicationGroupAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Unassign a Group

Removes a group assignment from an application.

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

$AppId = "MyAppId" # String | 
$GroupId = "MyGroupId" # String | 

# Unassign a Group
try {
    $Result = Invoke-DeleteApplicationGroupAssignment -AppId $AppId -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteApplicationGroupAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-DeleteApplicationUser"></a>
# **Invoke-DeleteApplicationUser**
> void Invoke-DeleteApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Unassign a User

Removes an assignment for a user from an application.

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

$AppId = "MyAppId" # String | 
$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $false)

# Unassign a User
try {
    $Result = Invoke-DeleteApplicationUser -AppId $AppId -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="New-ApplicationKey"></a>
# **New-ApplicationKey**
> JsonWebKey New-ApplicationKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ValidityYears] <System.Nullable[Int32]><br>

Generate a Key Credential

Generates a new X.509 certificate for an application key credential

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

$AppId = "MyAppId" # String | 
$ValidityYears = 56 # Int32 |  (optional)

# Generate a Key Credential
try {
    $Result = New-ApplicationKey -AppId $AppId -ValidityYears $ValidityYears
} catch {
    Write-Host ("Exception occurred when calling New-ApplicationKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="New-CsrForApplication"></a>
# **New-CsrForApplication**
> Csr New-CsrForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Metadata] <PSCustomObject><br>

Generate a Certificate Signing Request

Generates a new key pair and returns the Certificate Signing Request for it.

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

$AppId = "MyAppId" # String | 
$CsrMetadataSubject = Initialize-CsrMetadataSubject -CommonName "MyCommonName" -CountryName "MyCountryName" -LocalityName "MyLocalityName" -OrganizationalUnitName "MyOrganizationalUnitName" -OrganizationName "MyOrganizationName" -StateOrProvinceName "MyStateOrProvinceName"
$CsrMetadataSubjectAltNames = Initialize-CsrMetadataSubjectAltNames -DnsNames "MyDnsNames"
$CsrMetadata = Initialize-CsrMetadata -Subject $CsrMetadataSubject -SubjectAltNames $CsrMetadataSubjectAltNames # CsrMetadata | 

# Generate a Certificate Signing Request
try {
    $Result = New-CsrForApplication -AppId $AppId -Metadata $Metadata
} catch {
    Write-Host ("Exception occurred when calling New-CsrForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-Application"></a>
# **Get-Application**
> Application Get-Application<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an Application

Fetches an application from your Okta organization by `id`.

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

$AppId = "MyAppId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an Application
try {
    $Result = Get-Application -AppId $AppId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-Application: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-ApplicationGroupAssignment"></a>
# **Get-ApplicationGroupAssignment**
> ApplicationGroupAssignment Get-ApplicationGroupAssignment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an Assigned Group

Fetches an application group assignment

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

$AppId = "MyAppId" # String | 
$GroupId = "MyGroupId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an Assigned Group
try {
    $Result = Get-ApplicationGroupAssignment -AppId $AppId -GroupId $GroupId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-ApplicationGroupAssignment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-ApplicationKey"></a>
# **Get-ApplicationKey**
> JsonWebKey Get-ApplicationKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-KeyId] <String><br>

Retrieve a Key Credential

Gets a specific application key credential by kid

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

$AppId = "MyAppId" # String | 
$KeyId = "MyKeyId" # String | 

# Retrieve a Key Credential
try {
    $Result = Get-ApplicationKey -AppId $AppId -KeyId $KeyId
} catch {
    Write-Host ("Exception occurred when calling Get-ApplicationKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-ApplicationUser"></a>
# **Get-ApplicationUser**
> AppUser Get-ApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an Assigned User

Fetches a specific user assignment for application by `id`.

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

$AppId = "MyAppId" # String | 
$UserId = "MyUserId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an Assigned User
try {
    $Result = Get-ApplicationUser -AppId $AppId -UserId $UserId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-ApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-CsrForApplication"></a>
# **Get-CsrForApplication**
> Csr Get-CsrForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Retrieve a Certificate Signing Request

Fetches a certificate signing request for the app by `id`.

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

$AppId = "MyAppId" # String | 
$CsrId = "MyCsrId" # String | 

# Retrieve a Certificate Signing Request
try {
    $Result = Get-CsrForApplication -AppId $AppId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Get-CsrForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-DefaultProvisioningConnectionForApplication"></a>
# **Get-DefaultProvisioningConnectionForApplication**
> ProvisioningConnection Get-DefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Retrieve the default Provisioning Connection

Get default Provisioning Connection for application

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

$AppId = "MyAppId" # String | 

# Retrieve the default Provisioning Connection
try {
    $Result = Get-DefaultProvisioningConnectionForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Get-DefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-FeatureForApplication"></a>
# **Get-FeatureForApplication**
> ApplicationFeature Get-FeatureForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Retrieve a Feature

Fetches a Feature object for an application.

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

$AppId = "MyAppId" # String | 
$Name = "MyName" # String | 

# Retrieve a Feature
try {
    $Result = Get-FeatureForApplication -AppId $AppId -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-FeatureForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-OAuth2TokenForApplication"></a>
# **Get-OAuth2TokenForApplication**
> OAuth2Token Get-OAuth2TokenForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve an OAuth 2.0 Token

Gets a token for the specified application

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

$AppId = "MyAppId" # String | 
$TokenId = "MyTokenId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve an OAuth 2.0 Token
try {
    $Result = Get-OAuth2TokenForApplication -AppId $AppId -TokenId $TokenId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OAuth2TokenForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-ScopeConsentGrant"></a>
# **Get-ScopeConsentGrant**
> OAuth2ScopeConsentGrant Get-ScopeConsentGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Scope Consent Grant

Fetches a single scope consent grant for the application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$AppId = "MyAppId" # String | 
$GrantId = "MyGrantId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a Scope Consent Grant
try {
    $Result = Get-ScopeConsentGrant -AppId $AppId -GrantId $GrantId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-ScopeConsentGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Grant-ConsentToScope"></a>
# **Grant-ConsentToScope**
> OAuth2ScopeConsentGrant Grant-ConsentToScope<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OAuth2ScopeConsentGrant] <PSCustomObject><br>

Grant Consent to Scope

Grants consent for the application to request an OAuth 2.0 Okta scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$AppId = "MyAppId" # String | 
$OAuth2Actor = Initialize-OAuth2Actor -Id "MyId" -Type "MyType"
$OAuth2ScopeConsentGrant = Initialize-OAuth2ScopeConsentGrant -ClientId "MyClientId" -Created (Get-Date) -CreatedBy $OAuth2Actor -Id "MyId" -Issuer "MyIssuer" -LastUpdated (Get-Date) -ScopeId "MyScopeId" -Source "ADMIN" -Status "ACTIVE" -UserId "MyUserId" -Embedded @{ key_example =  } -Links @{ key_example =  } # OAuth2ScopeConsentGrant | 

# Grant Consent to Scope
try {
    $Result = Grant-ConsentToScope -AppId $AppId -OAuth2ScopeConsentGrant $OAuth2ScopeConsentGrant
} catch {
    Write-Host ("Exception occurred when calling Grant-ConsentToScope: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListApplicationGroupAssignments"></a>
# **Invoke-ListApplicationGroupAssignments**
> ApplicationGroupAssignment[] Invoke-ListApplicationGroupAssignments<br>
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
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AppId = "MyAppId" # String | 
$Q = "MyQ" # String |  (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of assignments (optional)
$Limit = 56 # Int32 | Specifies the number of results for a page (optional) (default to -1)
$Expand = "MyExpand" # String |  (optional)

# List all Assigned Groups
try {
    $Result = Invoke-ListApplicationGroupAssignments -AppId $AppId -Q $Q -After $After -Limit $Limit -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListApplicationGroupAssignments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListApplicationKeys"></a>
# **Invoke-ListApplicationKeys**
> JsonWebKey[] Invoke-ListApplicationKeys<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

List all Key Credentials

Enumerates key credentials for an application

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

$AppId = "MyAppId" # String | 

# List all Key Credentials
try {
    $Result = Invoke-ListApplicationKeys -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListApplicationKeys: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListApplicationUsers"></a>
# **Invoke-ListApplicationUsers**
> AppUser[] Invoke-ListApplicationUsers<br>
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
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AppId = "MyAppId" # String | 
$Q = "MyQ" # String |  (optional)
$QueryScope = "MyQueryScope" # String |  (optional)
$After = "MyAfter" # String | specifies the pagination cursor for the next page of assignments (optional)
$Limit = 56 # Int32 | specifies the number of results for a page (optional) (default to -1)
$Filter = "MyFilter" # String |  (optional)
$Expand = "MyExpand" # String |  (optional)

# List all Assigned Users
try {
    $Result = Invoke-ListApplicationUsers -AppId $AppId -Q $Q -QueryScope $QueryScope -After $After -Limit $Limit -Filter $Filter -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListApplicationUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListApplications"></a>
# **Invoke-ListApplications**
> Application[] Invoke-ListApplications<br>
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
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Q = "MyQ" # String |  (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of apps (optional)
$Limit = 56 # Int32 | Specifies the number of results for a page (optional) (default to -1)
$Filter = "MyFilter" # String | Filters apps by status, user.id, group.id or credentials.signing.kid expression (optional)
$Expand = "MyExpand" # String | Traverses users link relationship and optionally embeds Application User resource (optional)
$IncludeNonDeleted = $true # Boolean |  (optional) (default to $false)

# List all Applications
try {
    $Result = Invoke-ListApplications -Q $Q -After $After -Limit $Limit -Filter $Filter -Expand $Expand -IncludeNonDeleted $IncludeNonDeleted
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListCsrsForApplication"></a>
# **Invoke-ListCsrsForApplication**
> Csr[] Invoke-ListCsrsForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

List all Certificate Signing Requests

Enumerates Certificate Signing Requests for an application

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

$AppId = "MyAppId" # String | 

# List all Certificate Signing Requests
try {
    $Result = Invoke-ListCsrsForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListCsrsForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListFeaturesForApplication"></a>
# **Invoke-ListFeaturesForApplication**
> ApplicationFeature[] Invoke-ListFeaturesForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

List all Features

List Features for application

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

$AppId = "MyAppId" # String | 

# List all Features
try {
    $Result = Invoke-ListFeaturesForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFeaturesForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListOAuth2TokensForApplication"></a>
# **Invoke-ListOAuth2TokensForApplication**
> OAuth2Token[] Invoke-ListOAuth2TokensForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all OAuth 2.0 Tokens

Lists all tokens for the application

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

$AppId = "MyAppId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all OAuth 2.0 Tokens
try {
    $Result = Invoke-ListOAuth2TokensForApplication -AppId $AppId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListOAuth2TokensForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ListScopeConsentGrants"></a>
# **Invoke-ListScopeConsentGrants**
> OAuth2ScopeConsentGrant[] Invoke-ListScopeConsentGrants<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Scope Consent Grants

Lists all scope consent grants for the application

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$AppId = "MyAppId" # String | 
$Expand = "MyExpand" # String |  (optional)

# List all Scope Consent Grants
try {
    $Result = Invoke-ListScopeConsentGrants -AppId $AppId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListScopeConsentGrants: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Publish-CsrFromApplication"></a>
# **Publish-CsrFromApplication**
> JsonWebKey Publish-CsrFromApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.IO.FileInfo><br>

Publish a Certificate Signing Request

Updates a certificate signing request for the app with a signed X.509 certificate and adds it into the application key credentials

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

$AppId = "MyAppId" # String | 
$CsrId = "MyCsrId" # String | 
$Body =  # System.IO.FileInfo | 

# Publish a Certificate Signing Request
try {
    $Result = Publish-CsrFromApplication -AppId $AppId -CsrId $CsrId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Publish-CsrFromApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Revoke-CsrFromApplication"></a>
# **Revoke-CsrFromApplication**
> void Revoke-CsrFromApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CsrId] <String><br>

Revoke a Certificate Signing Request

Revokes a certificate signing request and deletes the key pair from the application.

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

$AppId = "MyAppId" # String | 
$CsrId = "MyCsrId" # String | 

# Revoke a Certificate Signing Request
try {
    $Result = Revoke-CsrFromApplication -AppId $AppId -CsrId $CsrId
} catch {
    Write-Host ("Exception occurred when calling Revoke-CsrFromApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Revoke-OAuth2TokenForApplication"></a>
# **Revoke-OAuth2TokenForApplication**
> void Revoke-OAuth2TokenForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

Revoke an OAuth 2.0 Token

Revokes the specified token for the specified application

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

$AppId = "MyAppId" # String | 
$TokenId = "MyTokenId" # String | 

# Revoke an OAuth 2.0 Token
try {
    $Result = Revoke-OAuth2TokenForApplication -AppId $AppId -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OAuth2TokenForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Revoke-OAuth2TokensForApplication"></a>
# **Revoke-OAuth2TokensForApplication**
> void Revoke-OAuth2TokensForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>

Revoke all OAuth 2.0 Tokens

Revokes all tokens for the specified application

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

$AppId = "MyAppId" # String | 

# Revoke all OAuth 2.0 Tokens
try {
    $Result = Revoke-OAuth2TokensForApplication -AppId $AppId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OAuth2TokensForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Revoke-ScopeConsentGrant"></a>
# **Revoke-ScopeConsentGrant**
> void Revoke-ScopeConsentGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>

Revoke a Scope Consent Grant

Revokes permission for the application to request the given scope

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$AppId = "MyAppId" # String | 
$GrantId = "MyGrantId" # String | 

# Revoke a Scope Consent Grant
try {
    $Result = Revoke-ScopeConsentGrant -AppId $AppId -GrantId $GrantId
} catch {
    Write-Host ("Exception occurred when calling Revoke-ScopeConsentGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-DefaultProvisioningConnectionForApplication"></a>
# **Set-DefaultProvisioningConnectionForApplication**
> ProvisioningConnection Set-DefaultProvisioningConnectionForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProvisioningConnectionRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>

Update the default Provisioning Connection

Set default Provisioning Connection for application

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

$AppId = "MyAppId" # String | 
$ProvisioningConnectionProfile = Initialize-ProvisioningConnectionProfile -AuthScheme "TOKEN" -Token "MyToken"
$ProvisioningConnectionRequest = Initialize-ProvisioningConnectionRequest -VarProfile $ProvisioningConnectionProfile # ProvisioningConnectionRequest | 
$Activate = $true # Boolean |  (optional)

# Update the default Provisioning Connection
try {
    $Result = Set-DefaultProvisioningConnectionForApplication -AppId $AppId -ProvisioningConnectionRequest $ProvisioningConnectionRequest -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling Set-DefaultProvisioningConnectionForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-Application"></a>
# **Update-Application**
> Application Update-Application<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Application] <PSCustomObject><br>

Replace an Application

Updates an application in your organization.

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

$AppId = "MyAppId" # String | 
$ApplicationAccessibility = Initialize-ApplicationAccessibility -ErrorRedirectUrl "MyErrorRedirectUrl" -LoginRedirectUrl "MyLoginRedirectUrl" -SelfService $false
$ApplicationLicensing = Initialize-ApplicationLicensing -SeatCount 0

$ApplicationVisibilityHide = Initialize-ApplicationVisibilityHide -IOS $false -Web $false
$ApplicationVisibility = Initialize-ApplicationVisibility -AppLinks @{ key_example = $false } -AutoLaunch $false -AutoSubmitToolbar $false -Hide $ApplicationVisibilityHide

$Application = Initialize-Application -Accessibility $ApplicationAccessibility -Created (Get-Date) -Features "MyFeatures" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Licensing $ApplicationLicensing -VarProfile @{ key_example =  } -SignOnMode "AUTO_LOGIN" -Status "ACTIVE" -Visibility $ApplicationVisibility -Embedded @{ key_example =  } -Links # Application | 

# Replace an Application
try {
    $Result = Update-Application -AppId $AppId -Application $Application
} catch {
    Write-Host ("Exception occurred when calling Update-Application: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-ApplicationUser"></a>
# **Update-ApplicationUser**
> AppUser Update-ApplicationUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppUser] <PSCustomObject><br>

Update an Application Profile for Assigned User

Updates a user's profile for an application

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

$AppId = "MyAppId" # String | 
$UserId = "MyUserId" # String | 
$AppUserPasswordCredential = Initialize-AppUserPasswordCredential -Value "MyValue"
$AppUserCredentials = Initialize-AppUserCredentials -Password $AppUserPasswordCredential -UserName "MyUserName"

$AppUser = Initialize-AppUser -Created (Get-Date) -Credentials $AppUserCredentials -ExternalId "MyExternalId" -Id "MyId" -LastSync (Get-Date) -LastUpdated (Get-Date) -PasswordChanged (Get-Date) -VarProfile @{ key_example =  } -Scope "MyScope" -Status "MyStatus" -StatusChanged (Get-Date) -SyncState "MySyncState" -Embedded @{ key_example =  } -Links @{ key_example =  } # AppUser | 

# Update an Application Profile for Assigned User
try {
    $Result = Update-ApplicationUser -AppId $AppId -UserId $UserId -AppUser $AppUser
} catch {
    Write-Host ("Exception occurred when calling Update-ApplicationUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-FeatureForApplication"></a>
# **Update-FeatureForApplication**
> ApplicationFeature Update-FeatureForApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CapabilitiesObject] <PSCustomObject><br>

Update a Feature

Updates a Feature object for an application.

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
    $Result = Update-FeatureForApplication -AppId $AppId -Name $Name -CapabilitiesObject $CapabilitiesObject
} catch {
    Write-Host ("Exception occurred when calling Update-FeatureForApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-UploadApplicationLogo"></a>
# **Invoke-UploadApplicationLogo**
> void Invoke-UploadApplicationLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload a Logo

The file must be in PNG, JPG, or GIF format, and less than 1 MB in size. For best results use landscape orientation, a transparent background, and a minimum size of 420px by 120px to prevent upscaling.

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

$AppId = "MyAppId" # String | 
$File =  # System.IO.FileInfo | 

# Upload a Logo
try {
    $Result = Invoke-UploadApplicationLogo -AppId $AppId -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadApplicationLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

