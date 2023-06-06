# PSOpenAPITools.PSOpenAPITools\Api.UserApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateUser**](UserApi.md#Invoke-ActivateUser) | **POST** /api/v1/users/{userId}/lifecycle/activate | Activate a User
[**Rename-Password**](UserApi.md#Rename-Password) | **POST** /api/v1/users/{userId}/credentials/change_password | Change Password
[**Rename-RecoveryQuestion**](UserApi.md#Rename-RecoveryQuestion) | **POST** /api/v1/users/{userId}/credentials/change_recovery_question | Change Recovery Question
[**Clear-UserSessions**](UserApi.md#Clear-UserSessions) | **DELETE** /api/v1/users/{userId}/sessions | Delete all User Sessions
[**New-User**](UserApi.md#New-User) | **POST** /api/v1/users | Create a User
[**Invoke-DeactivateOrDeleteUser**](UserApi.md#Invoke-DeactivateOrDeleteUser) | **DELETE** /api/v1/users/{userId} | Delete a User
[**Invoke-DeactivateUser**](UserApi.md#Invoke-DeactivateUser) | **POST** /api/v1/users/{userId}/lifecycle/deactivate | Deactivate a User
[**Invoke-ExpirePassword**](UserApi.md#Invoke-ExpirePassword) | **POST** /api/v1/users/{userId}/lifecycle/expire_password | Expire Password
[**Invoke-ExpirePasswordAndGetTemporaryPassword**](UserApi.md#Invoke-ExpirePasswordAndGetTemporaryPassword) | **POST** /api/v1/users/{userId}/lifecycle/expire_password_with_temp_password | Expire Password and Set Temporary Password
[**Invoke-ForgotPassword**](UserApi.md#Invoke-ForgotPassword) | **POST** /api/v1/users/{userId}/credentials/forgot_password | Initiate Forgot Password
[**Invoke-ForgotPasswordSetNewPassword**](UserApi.md#Invoke-ForgotPasswordSetNewPassword) | **POST** /api/v1/users/{userId}/credentials/forgot_password_recovery_question | Reset Password with Recovery Question
[**Get-LinkedObjectsForUser**](UserApi.md#Get-LinkedObjectsForUser) | **GET** /api/v1/users/{userId}/linkedObjects/{relationshipName} | List all Linked Objects
[**Get-RefreshTokenForUserAndClient**](UserApi.md#Get-RefreshTokenForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId} | Retrieve a Refresh Token for a Client
[**Get-User**](UserApi.md#Get-User) | **GET** /api/v1/users/{userId} | Retrieve a User
[**Get-UserGrant**](UserApi.md#Get-UserGrant) | **GET** /api/v1/users/{userId}/grants/{grantId} | Retrieve a User Grant
[**Invoke-ListAppLinks**](UserApi.md#Invoke-ListAppLinks) | **GET** /api/v1/users/{userId}/appLinks | List all Assigned Application Links
[**Invoke-ListGrantsForUserAndClient**](UserApi.md#Invoke-ListGrantsForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/grants | List all Grants for a Client
[**Invoke-ListRefreshTokensForUserAndClient**](UserApi.md#Invoke-ListRefreshTokensForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/tokens | List all Refresh Tokens for a Client
[**Invoke-ListUserClients**](UserApi.md#Invoke-ListUserClients) | **GET** /api/v1/users/{userId}/clients | List all Clients
[**Invoke-ListUserGrants**](UserApi.md#Invoke-ListUserGrants) | **GET** /api/v1/users/{userId}/grants | List all User Grants
[**Invoke-ListUserGroups**](UserApi.md#Invoke-ListUserGroups) | **GET** /api/v1/users/{userId}/groups | List all Groups
[**Invoke-ListUserIdentityProviders**](UserApi.md#Invoke-ListUserIdentityProviders) | **GET** /api/v1/users/{userId}/idps | List all Identity Providers
[**Invoke-ListUsers**](UserApi.md#Invoke-ListUsers) | **GET** /api/v1/users | List all Users
[**Invoke-PartialUpdateUser**](UserApi.md#Invoke-PartialUpdateUser) | **POST** /api/v1/users/{userId} | Update a User
[**Invoke-ReactivateUser**](UserApi.md#Invoke-ReactivateUser) | **POST** /api/v1/users/{userId}/lifecycle/reactivate | Reactivate a User
[**Remove-LinkedObjectForUser**](UserApi.md#Remove-LinkedObjectForUser) | **DELETE** /api/v1/users/{userId}/linkedObjects/{relationshipName} | Delete a Linked Object
[**Reset-Factors**](UserApi.md#Reset-Factors) | **POST** /api/v1/users/{userId}/lifecycle/reset_factors | Reset all Factors
[**Reset-Password**](UserApi.md#Reset-Password) | **POST** /api/v1/users/{userId}/lifecycle/reset_password | Reset Password
[**Revoke-GrantsForUserAndClient**](UserApi.md#Revoke-GrantsForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/grants | Revoke all Grants for a Client
[**Revoke-TokenForUserAndClient**](UserApi.md#Revoke-TokenForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId} | Revoke a Token for a Client
[**Revoke-TokensForUserAndClient**](UserApi.md#Revoke-TokensForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/tokens | Revoke all Refresh Tokens for a Client
[**Revoke-UserGrant**](UserApi.md#Revoke-UserGrant) | **DELETE** /api/v1/users/{userId}/grants/{grantId} | Revoke a User Grant
[**Revoke-UserGrants**](UserApi.md#Revoke-UserGrants) | **DELETE** /api/v1/users/{userId}/grants | Revoke all User Grants
[**Set-LinkedObjectForUser**](UserApi.md#Set-LinkedObjectForUser) | **PUT** /api/v1/users/{associatedUserId}/linkedObjects/{primaryRelationshipName}/{primaryUserId} | Create a Linked Object for two User
[**Suspend-User**](UserApi.md#Suspend-User) | **POST** /api/v1/users/{userId}/lifecycle/suspend | Suspend a User
[**Unlock-User**](UserApi.md#Unlock-User) | **POST** /api/v1/users/{userId}/lifecycle/unlock | Unlock a User
[**Invoke-UnsuspendUser**](UserApi.md#Invoke-UnsuspendUser) | **POST** /api/v1/users/{userId}/lifecycle/unsuspend | Unsuspend a User
[**Update-User**](UserApi.md#Update-User) | **PUT** /api/v1/users/{userId} | Replace a User


<a name="Invoke-ActivateUser"></a>
# **Invoke-ActivateUser**
> UserActivationToken Invoke-ActivateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <Boolean><br>

Activate a User

Activates a user.  This operation can only be performed on users with a `STAGED` status.  Activation of a user is an asynchronous operation. The user will have the `transitioningToStatus` property with a value of `ACTIVE` during activation to indicate that the user hasn't completed the asynchronous operation.  The user will have a status of `ACTIVE` when the activation process is complete.

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

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean | Sends an activation email to the user if true (default to $true)

# Activate a User
try {
    $Result = Invoke-ActivateUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **SendEmail** | **Boolean**| Sends an activation email to the user if true | [default to $true]

### Return type

[**UserActivationToken**](UserActivationToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Rename-Password"></a>
# **Rename-Password**
> UserCredentials Rename-Password<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChangePasswordRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>

Change Password

Changes a user's password by validating the user's current password. This operation can only be performed on users in `STAGED`, `ACTIVE`, `PASSWORD_EXPIRED`, or `RECOVERY` status that have a valid password credential

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

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$ChangePasswordRequest = Initialize-ChangePasswordRequest -NewPassword $PasswordCredential -OldPassword $PasswordCredential # ChangePasswordRequest | 
$Strict = $true # Boolean |  (optional)

# Change Password
try {
    $Result = Rename-Password -UserId $UserId -ChangePasswordRequest $ChangePasswordRequest -Strict $Strict
} catch {
    Write-Host ("Exception occurred when calling Rename-Password: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **ChangePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md)|  | 
 **Strict** | **Boolean**|  | [optional] 

### Return type

[**UserCredentials**](UserCredentials.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Rename-RecoveryQuestion"></a>
# **Rename-RecoveryQuestion**
> UserCredentials Rename-RecoveryQuestion<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserCredentials] <PSCustomObject><br>

Change Recovery Question

Changes a user's recovery question & answer credential by validating the user's current password.  This operation can only be performed on users in **STAGED**, **ACTIVE** or **RECOVERY** `status` that have a valid password credential

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

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$AuthenticationProvider = Initialize-AuthenticationProvider -Name "MyName" -Type "ACTIVE_DIRECTORY"
$RecoveryQuestionCredential = Initialize-RecoveryQuestionCredential -Answer "MyAnswer" -Question "MyQuestion"
$UserCredentials = Initialize-UserCredentials -Password $PasswordCredential -Provider $AuthenticationProvider -RecoveryQuestion $RecoveryQuestionCredential # UserCredentials | 

# Change Recovery Question
try {
    $Result = Rename-RecoveryQuestion -UserId $UserId -UserCredentials $UserCredentials
} catch {
    Write-Host ("Exception occurred when calling Rename-RecoveryQuestion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **UserCredentials** | [**UserCredentials**](UserCredentials.md)|  | 

### Return type

[**UserCredentials**](UserCredentials.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Clear-UserSessions"></a>
# **Clear-UserSessions**
> void Clear-UserSessions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OauthTokens] <System.Nullable[Boolean]><br>

Delete all User Sessions

Removes all active identity provider sessions. This forces the user to authenticate on the next operation. Optionally revokes OpenID Connect and OAuth refresh and access tokens issued to the user.

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

$UserId = "MyUserId" # String | 
$OauthTokens = $true # Boolean | Revoke issued OpenID Connect and OAuth refresh and access tokens (optional) (default to $false)

# Delete all User Sessions
try {
    $Result = Clear-UserSessions -UserId $UserId -OauthTokens $OauthTokens
} catch {
    Write-Host ("Exception occurred when calling Clear-UserSessions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **OauthTokens** | **Boolean**| Revoke issued OpenID Connect and OAuth refresh and access tokens | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-User"></a>
# **New-User**
> User New-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextLogin] <PSCustomObject><br>

Create a User

Creates a new user in your Okta organization with or without credentials.

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

$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$AuthenticationProvider = Initialize-AuthenticationProvider -Name "MyName" -Type "ACTIVE_DIRECTORY"
$RecoveryQuestionCredential = Initialize-RecoveryQuestionCredential -Answer "MyAnswer" -Question "MyQuestion"
$UserCredentials = Initialize-UserCredentials -Password $PasswordCredential -Provider $AuthenticationProvider -RecoveryQuestion $RecoveryQuestionCredential

$UserType = Initialize-UserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  }
$CreateUserRequest = Initialize-CreateUserRequest -Credentials $UserCredentials -GroupIds "MyGroupIds" -VarProfile  -Type $UserType # CreateUserRequest | 
$Activate = $true # Boolean | Executes activation lifecycle operation when creating the user (optional) (default to $true)
$Provider = $true # Boolean | Indicates whether to create a user with a specified authentication provider (optional) (default to $false)
$NextLogin = "changePassword" # UserNextLogin | With activate=true, set nextLogin to ""changePassword"" to have the password be EXPIRED, so user must change it the next time they log in. (optional)

# Create a User
try {
    $Result = New-User -Body $Body -Activate $Activate -Provider $Provider -NextLogin $NextLogin
} catch {
    Write-Host ("Exception occurred when calling New-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | [**CreateUserRequest**](CreateUserRequest.md)|  | 
 **Activate** | **Boolean**| Executes activation lifecycle operation when creating the user | [optional] [default to $true]
 **Provider** | **Boolean**| Indicates whether to create a user with a specified authentication provider | [optional] [default to $false]
 **NextLogin** | [**UserNextLogin**](UserNextLogin.md)| With activate&#x3D;true, set nextLogin to &quot;&quot;changePassword&quot;&quot; to have the password be EXPIRED, so user must change it the next time they log in. | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateOrDeleteUser"></a>
# **Invoke-DeactivateOrDeleteUser**
> void Invoke-DeactivateOrDeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Delete a User

Deletes a user permanently.  This operation can only be performed on users that have a `DEPROVISIONED` status.  **This action cannot be recovered!**

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

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $false)

# Delete a User
try {
    $Result = Invoke-DeactivateOrDeleteUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateOrDeleteUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

<a name="Invoke-DeactivateUser"></a>
# **Invoke-DeactivateUser**
> void Invoke-DeactivateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Deactivate a User

Deactivates a user. This operation can only be performed on users that do not have a `DEPROVISIONED` status. While the asynchronous operation (triggered by HTTP header `Prefer: respond-async`) is proceeding the user's `transitioningToStatus` property is `DEPROVISIONED`. The user's status is `DEPROVISIONED` when the deactivation process is complete.

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

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $false)

# Deactivate a User
try {
    $Result = Invoke-DeactivateUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

<a name="Invoke-ExpirePassword"></a>
# **Invoke-ExpirePassword**
> User Invoke-ExpirePassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Expire Password

This operation transitions the user to the status of `PASSWORD_EXPIRED` so that the user is required to change their password at their next login.

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

$UserId = "MyUserId" # String | 

# Expire Password
try {
    $Result = Invoke-ExpirePassword -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ExpirePassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ExpirePasswordAndGetTemporaryPassword"></a>
# **Invoke-ExpirePasswordAndGetTemporaryPassword**
> TempPassword Invoke-ExpirePasswordAndGetTemporaryPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Expire Password and Set Temporary Password

This operation transitions the user to the status of `PASSWORD_EXPIRED` so that the user is required to change their password at their next login, and also sets the user's password to a temporary password returned in the response.

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

$UserId = "MyUserId" # String | 

# Expire Password and Set Temporary Password
try {
    $Result = Invoke-ExpirePasswordAndGetTemporaryPassword -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ExpirePasswordAndGetTemporaryPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**TempPassword**](TempPassword.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ForgotPassword"></a>
# **Invoke-ForgotPassword**
> ForgotPasswordResponse Invoke-ForgotPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Initiate Forgot Password

Initiate forgot password flow. Generates a one-time token (OTT) that can be used to reset a user's password.

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

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $true)

# Initiate Forgot Password
try {
    $Result = Invoke-ForgotPassword -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-ForgotPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **SendEmail** | **Boolean**|  | [optional] [default to $true]

### Return type

[**ForgotPasswordResponse**](ForgotPasswordResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ForgotPasswordSetNewPassword"></a>
# **Invoke-ForgotPasswordSetNewPassword**
> UserCredentials Invoke-ForgotPasswordSetNewPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserCredentials] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Reset Password with Recovery Question

Resets the user's password to the specified password if the provided answer to the recovery question is correct.

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

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$AuthenticationProvider = Initialize-AuthenticationProvider -Name "MyName" -Type "ACTIVE_DIRECTORY"
$RecoveryQuestionCredential = Initialize-RecoveryQuestionCredential -Answer "MyAnswer" -Question "MyQuestion"
$UserCredentials = Initialize-UserCredentials -Password $PasswordCredential -Provider $AuthenticationProvider -RecoveryQuestion $RecoveryQuestionCredential # UserCredentials | 
$SendEmail = $true # Boolean |  (optional) (default to $true)

# Reset Password with Recovery Question
try {
    $Result = Invoke-ForgotPasswordSetNewPassword -UserId $UserId -UserCredentials $UserCredentials -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-ForgotPasswordSetNewPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **UserCredentials** | [**UserCredentials**](UserCredentials.md)|  | 
 **SendEmail** | **Boolean**|  | [optional] [default to $true]

### Return type

[**UserCredentials**](UserCredentials.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-LinkedObjectsForUser"></a>
# **Get-LinkedObjectsForUser**
> SystemCollectionsHashtable[] Get-LinkedObjectsForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RelationshipName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Linked Objects

Get linked objects for a user, relationshipName can be a primary or associated relationship name

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

$UserId = "MyUserId" # String | 
$RelationshipName = "MyRelationshipName" # String | 
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Linked Objects
try {
    $Result = Get-LinkedObjectsForUser -UserId $UserId -RelationshipName $RelationshipName -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-LinkedObjectsForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RelationshipName** | **String**|  | 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to -1]

### Return type

[**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-RefreshTokenForUserAndClient"></a>
# **Get-RefreshTokenForUserAndClient**
> OAuth2RefreshToken Get-RefreshTokenForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

Retrieve a Refresh Token for a Client

Gets a refresh token issued for the specified User and Client.

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

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 
$Expand = "MyExpand" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)
$After = "MyAfter" # String |  (optional)

# Retrieve a Refresh Token for a Client
try {
    $Result = Get-RefreshTokenForUserAndClient -UserId $UserId -ClientId $ClientId -TokenId $TokenId -Expand $Expand -Limit $Limit -After $After
} catch {
    Write-Host ("Exception occurred when calling Get-RefreshTokenForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **ClientId** | **String**|  | 
 **TokenId** | **String**|  | 
 **Expand** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]
 **After** | **String**|  | [optional] 

### Return type

[**OAuth2RefreshToken**](OAuth2RefreshToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-User"></a>
# **Get-User**
> User Get-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Retrieve a User

Fetches a user from your Okta organization.

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

$UserId = "MyUserId" # String | 

# Retrieve a User
try {
    $Result = Get-User -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Get-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserGrant"></a>
# **Get-UserGrant**
> OAuth2ScopeConsentGrant Get-UserGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a User Grant

Gets a grant for the specified user

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

$UserId = "MyUserId" # String | 
$GrantId = "MyGrantId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a User Grant
try {
    $Result = Get-UserGrant -UserId $UserId -GrantId $GrantId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-UserGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **GrantId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**OAuth2ScopeConsentGrant**](OAuth2ScopeConsentGrant.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAppLinks"></a>
# **Invoke-ListAppLinks**
> AppLink[] Invoke-ListAppLinks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Assigned Application Links

Fetches appLinks for all direct or indirect (via group membership) assigned applications.

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

$UserId = "MyUserId" # String | 

# List all Assigned Application Links
try {
    $Result = Invoke-ListAppLinks -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAppLinks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**AppLink[]**](AppLink.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListGrantsForUserAndClient"></a>
# **Invoke-ListGrantsForUserAndClient**
> OAuth2ScopeConsentGrant[] Invoke-ListGrantsForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Grants for a Client

Lists all grants for a specified user and client

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

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Grants for a Client
try {
    $Result = Invoke-ListGrantsForUserAndClient -UserId $UserId -ClientId $ClientId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListGrantsForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **ClientId** | **String**|  | 
 **Expand** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**OAuth2ScopeConsentGrant[]**](OAuth2ScopeConsentGrant.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListRefreshTokensForUserAndClient"></a>
# **Invoke-ListRefreshTokensForUserAndClient**
> OAuth2RefreshToken[] Invoke-ListRefreshTokensForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Refresh Tokens for a Client

Lists all refresh tokens issued for the specified User and Client.

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

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Refresh Tokens for a Client
try {
    $Result = Invoke-ListRefreshTokensForUserAndClient -UserId $UserId -ClientId $ClientId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListRefreshTokensForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **ClientId** | **String**|  | 
 **Expand** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**OAuth2RefreshToken[]**](OAuth2RefreshToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListUserClients"></a>
# **Invoke-ListUserClients**
> OAuth2Client[] Invoke-ListUserClients<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Clients

Lists all client resources for which the specified user has grants or tokens.

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

$UserId = "MyUserId" # String | 

# List all Clients
try {
    $Result = Invoke-ListUserClients -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUserClients: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**OAuth2Client[]**](OAuth2Client.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListUserGrants"></a>
# **Invoke-ListUserGrants**
> OAuth2ScopeConsentGrant[] Invoke-ListUserGrants<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScopeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all User Grants

Lists all grants for the specified user

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

$UserId = "MyUserId" # String | 
$ScopeId = "MyScopeId" # String |  (optional)
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all User Grants
try {
    $Result = Invoke-ListUserGrants -UserId $UserId -ScopeId $ScopeId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUserGrants: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **ScopeId** | **String**|  | [optional] 
 **Expand** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**OAuth2ScopeConsentGrant[]**](OAuth2ScopeConsentGrant.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListUserGroups"></a>
# **Invoke-ListUserGroups**
> Group[] Invoke-ListUserGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Groups

Fetches the groups of which the user is a member.

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

$UserId = "MyUserId" # String | 

# List all Groups
try {
    $Result = Invoke-ListUserGroups -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUserGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**Group[]**](Group.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListUserIdentityProviders"></a>
# **Invoke-ListUserIdentityProviders**
> IdentityProvider[] Invoke-ListUserIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Identity Providers

Lists the IdPs associated with the user.

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

$UserId = "MyUserId" # String | 

# List all Identity Providers
try {
    $Result = Invoke-ListUserIdentityProviders -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUserIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**IdentityProvider[]**](IdentityProvider.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListUsers"></a>
# **Invoke-ListUsers**
> User[] Invoke-ListUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <String><br>

List all Users

Lists users in your organization with pagination in most cases.  A subset of users can be returned that match a supported filter expression or search criteria.

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

$Q = "MyQ" # String | Finds a user that matches firstName, lastName, and email properties (optional)
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | Specifies the number of results returned. Defaults to 10 if `q` is provided. (optional) (default to 200)
$Filter = "MyFilter" # String | Filters users with a supported expression for a subset of properties (optional)
$Search = "MySearch" # String | Searches for users with a supported filtering expression for most properties. Okta recommends using this parameter for search for best performance. (optional)
$SortBy = "MySortBy" # String |  (optional)
$SortOrder = "MySortOrder" # String |  (optional)

# List all Users
try {
    $Result = Invoke-ListUsers -Q $Q -After $After -Limit $Limit -Filter $Filter -Search $Search -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**| Finds a user that matches firstName, lastName, and email properties | [optional] 
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 
 **Limit** | **Int32**| Specifies the number of results returned. Defaults to 10 if &#x60;q&#x60; is provided. | [optional] [default to 200]
 **Filter** | **String**| Filters users with a supported expression for a subset of properties | [optional] 
 **Search** | **String**| Searches for users with a supported filtering expression for most properties. Okta recommends using this parameter for search for best performance. | [optional] 
 **SortBy** | **String**|  | [optional] 
 **SortOrder** | **String**|  | [optional] 

### Return type

[**User[]**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-PartialUpdateUser"></a>
# **Invoke-PartialUpdateUser**
> User Invoke-PartialUpdateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>

Update a User

Fetch a user by `id`, `login`, or `login shortname` if the short name is unambiguous.

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

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$AuthenticationProvider = Initialize-AuthenticationProvider -Name "MyName" -Type "ACTIVE_DIRECTORY"
$RecoveryQuestionCredential = Initialize-RecoveryQuestionCredential -Answer "MyAnswer" -Question "MyQuestion"
$UserCredentials = Initialize-UserCredentials -Password $PasswordCredential -Provider $AuthenticationProvider -RecoveryQuestion $RecoveryQuestionCredential

$UpdateUserRequest = Initialize-UpdateUserRequest -Credentials $UserCredentials -VarProfile # UpdateUserRequest | 
$Strict = $true # Boolean |  (optional)

# Update a User
try {
    $Result = Invoke-PartialUpdateUser -UserId $UserId -User $User -Strict $Strict
} catch {
    Write-Host ("Exception occurred when calling Invoke-PartialUpdateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **User** | [**UpdateUserRequest**](UpdateUserRequest.md)|  | 
 **Strict** | **Boolean**|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReactivateUser"></a>
# **Invoke-ReactivateUser**
> UserActivationToken Invoke-ReactivateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Reactivate a User

Reactivates a user.  This operation can only be performed on users with a `PROVISIONED` status.  This operation restarts the activation workflow if for some reason the user activation was not completed when using the activationToken from [Activate User](#activate-user).

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

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean | Sends an activation email to the user if true (optional) (default to $false)

# Reactivate a User
try {
    $Result = Invoke-ReactivateUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReactivateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **SendEmail** | **Boolean**| Sends an activation email to the user if true | [optional] [default to $false]

### Return type

[**UserActivationToken**](UserActivationToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-LinkedObjectForUser"></a>
# **Remove-LinkedObjectForUser**
> void Remove-LinkedObjectForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RelationshipName] <String><br>

Delete a Linked Object

Delete linked objects for a user, relationshipName can be ONLY a primary relationship name

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

$UserId = "MyUserId" # String | 
$RelationshipName = "MyRelationshipName" # String | 

# Delete a Linked Object
try {
    $Result = Remove-LinkedObjectForUser -UserId $UserId -RelationshipName $RelationshipName
} catch {
    Write-Host ("Exception occurred when calling Remove-LinkedObjectForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **RelationshipName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Reset-Factors"></a>
# **Reset-Factors**
> void Reset-Factors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Reset all Factors

This operation resets all factors for the specified user. All MFA factor enrollments returned to the unenrolled state. The user's status remains ACTIVE. This link is present only if the user is currently enrolled in one or more MFA factors.

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

$UserId = "MyUserId" # String | 

# Reset all Factors
try {
    $Result = Reset-Factors -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Reset-Factors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Reset-Password"></a>
# **Reset-Password**
> ResetPasswordToken Reset-Password<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <Boolean><br>

Reset Password

Generates a one-time token (OTT) that can be used to reset a user's password.  The OTT link can be automatically emailed to the user or returned to the API caller and distributed using a custom flow.

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

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean | 

# Reset Password
try {
    $Result = Reset-Password -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Reset-Password: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **SendEmail** | **Boolean**|  | 

### Return type

[**ResetPasswordToken**](ResetPasswordToken.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Revoke-GrantsForUserAndClient"></a>
# **Revoke-GrantsForUserAndClient**
> void Revoke-GrantsForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>

Revoke all Grants for a Client

Revokes all grants for the specified user and client

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

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 

# Revoke all Grants for a Client
try {
    $Result = Revoke-GrantsForUserAndClient -UserId $UserId -ClientId $ClientId
} catch {
    Write-Host ("Exception occurred when calling Revoke-GrantsForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **ClientId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Revoke-TokenForUserAndClient"></a>
# **Revoke-TokenForUserAndClient**
> void Revoke-TokenForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

Revoke a Token for a Client

Revokes the specified refresh token.

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

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 

# Revoke a Token for a Client
try {
    $Result = Revoke-TokenForUserAndClient -UserId $UserId -ClientId $ClientId -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Revoke-TokenForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
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

<a name="Revoke-TokensForUserAndClient"></a>
# **Revoke-TokensForUserAndClient**
> void Revoke-TokensForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>

Revoke all Refresh Tokens for a Client

Revokes all refresh tokens issued for the specified User and Client.

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

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 

# Revoke all Refresh Tokens for a Client
try {
    $Result = Revoke-TokensForUserAndClient -UserId $UserId -ClientId $ClientId
} catch {
    Write-Host ("Exception occurred when calling Revoke-TokensForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **ClientId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Revoke-UserGrant"></a>
# **Revoke-UserGrant**
> void Revoke-UserGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>

Revoke a User Grant

Revokes one grant for a specified user

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

$UserId = "MyUserId" # String | 
$GrantId = "MyGrantId" # String | 

# Revoke a User Grant
try {
    $Result = Revoke-UserGrant -UserId $UserId -GrantId $GrantId
} catch {
    Write-Host ("Exception occurred when calling Revoke-UserGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **GrantId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Revoke-UserGrants"></a>
# **Revoke-UserGrants**
> void Revoke-UserGrants<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Revoke all User Grants

Revokes all grants for a specified user

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

$UserId = "MyUserId" # String | 

# Revoke all User Grants
try {
    $Result = Revoke-UserGrants -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Revoke-UserGrants: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-LinkedObjectForUser"></a>
# **Set-LinkedObjectForUser**
> void Set-LinkedObjectForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssociatedUserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrimaryRelationshipName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrimaryUserId] <String><br>

Create a Linked Object for two User

Sets a linked object for two users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AssociatedUserId = "MyAssociatedUserId" # String | 
$PrimaryRelationshipName = "MyPrimaryRelationshipName" # String | 
$PrimaryUserId = "MyPrimaryUserId" # String | 

# Create a Linked Object for two User
try {
    $Result = Set-LinkedObjectForUser -AssociatedUserId $AssociatedUserId -PrimaryRelationshipName $PrimaryRelationshipName -PrimaryUserId $PrimaryUserId
} catch {
    Write-Host ("Exception occurred when calling Set-LinkedObjectForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssociatedUserId** | **String**|  | 
 **PrimaryRelationshipName** | **String**|  | 
 **PrimaryUserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Suspend-User"></a>
# **Suspend-User**
> void Suspend-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Suspend a User

Suspends a user.  This operation can only be performed on users with an `ACTIVE` status.  The user will have a status of `SUSPENDED` when the process is complete.

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

$UserId = "MyUserId" # String | 

# Suspend a User
try {
    $Result = Suspend-User -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Suspend-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Unlock-User"></a>
# **Unlock-User**
> void Unlock-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unlock a User

Unlocks a user with a `LOCKED_OUT` status and returns them to `ACTIVE` status.  Users will be able to login with their current password.

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

$UserId = "MyUserId" # String | 

# Unlock a User
try {
    $Result = Unlock-User -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Unlock-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnsuspendUser"></a>
# **Invoke-UnsuspendUser**
> void Invoke-UnsuspendUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unsuspend a User

Unsuspends a user and returns them to the `ACTIVE` state.  This operation can only be performed on users that have a `SUSPENDED` status.

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

$UserId = "MyUserId" # String | 

# Unsuspend a User
try {
    $Result = Invoke-UnsuspendUser -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnsuspendUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-User"></a>
# **Update-User**
> User Update-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>

Replace a User

Update a user's profile and/or credentials using strict-update semantics.

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

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$AuthenticationProvider = Initialize-AuthenticationProvider -Name "MyName" -Type "ACTIVE_DIRECTORY"
$RecoveryQuestionCredential = Initialize-RecoveryQuestionCredential -Answer "MyAnswer" -Question "MyQuestion"
$UserCredentials = Initialize-UserCredentials -Password $PasswordCredential -Provider $AuthenticationProvider -RecoveryQuestion $RecoveryQuestionCredential

$UpdateUserRequest = Initialize-UpdateUserRequest -Credentials $UserCredentials -VarProfile # UpdateUserRequest | 
$Strict = $true # Boolean |  (optional)

# Replace a User
try {
    $Result = Update-User -UserId $UserId -User $User -Strict $Strict
} catch {
    Write-Host ("Exception occurred when calling Update-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **User** | [**UpdateUserRequest**](UpdateUserRequest.md)|  | 
 **Strict** | **Boolean**|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

