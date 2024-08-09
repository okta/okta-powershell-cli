# Okta.PowerShell.Okta.PowerShell/Api.OktaUserApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateUser**](OktaUserApi.md#Invoke-OktaActivateUser) | **POST** /api/v1/users/{userId}/lifecycle/activate | Activate a User
[**Rename-OktaPassword**](OktaUserApi.md#Rename-OktaPassword) | **POST** /api/v1/users/{userId}/credentials/change_password | Change Password
[**Rename-OktaRecoveryQuestion**](OktaUserApi.md#Rename-OktaRecoveryQuestion) | **POST** /api/v1/users/{userId}/credentials/change_recovery_question | Change Recovery Question
[**Clear-OktaUserSessions**](OktaUserApi.md#Clear-OktaUserSessions) | **DELETE** /api/v1/users/{userId}/sessions | Delete all User Sessions
[**New-OktaUser**](OktaUserApi.md#New-OktaUser) | **POST** /api/v1/users | Create a User
[**Invoke-OktaDeactivateOrDeleteUser**](OktaUserApi.md#Invoke-OktaDeactivateOrDeleteUser) | **DELETE** /api/v1/users/{userId} | Delete a User
[**Invoke-OktaDeactivateUser**](OktaUserApi.md#Invoke-OktaDeactivateUser) | **POST** /api/v1/users/{userId}/lifecycle/deactivate | Deactivate a User
[**Invoke-OktaExpirePassword**](OktaUserApi.md#Invoke-OktaExpirePassword) | **POST** /api/v1/users/{userId}/lifecycle/expire_password | Expire Password
[**Invoke-OktaExpirePasswordAndGetTemporaryPassword**](OktaUserApi.md#Invoke-OktaExpirePasswordAndGetTemporaryPassword) | **POST** /api/v1/users/{userId}/lifecycle/expire_password_with_temp_password | Expire Password and Set Temporary Password
[**Invoke-OktaForgotPassword**](OktaUserApi.md#Invoke-OktaForgotPassword) | **POST** /api/v1/users/{userId}/credentials/forgot_password | Initiate Forgot Password
[**Invoke-OktaForgotPasswordSetNewPassword**](OktaUserApi.md#Invoke-OktaForgotPasswordSetNewPassword) | **POST** /api/v1/users/{userId}/credentials/forgot_password_recovery_question | Reset Password with Recovery Question
[**Get-OktaLinkedObjectsForUser**](OktaUserApi.md#Get-OktaLinkedObjectsForUser) | **GET** /api/v1/users/{userId}/linkedObjects/{relationshipName} | List all Linked Objects
[**Get-OktaRefreshTokenForUserAndClient**](OktaUserApi.md#Get-OktaRefreshTokenForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId} | Retrieve a Refresh Token for a Client
[**Get-OktaUser**](OktaUserApi.md#Get-OktaUser) | **GET** /api/v1/users/{userId} | Retrieve a User
[**Get-OktaUserGrant**](OktaUserApi.md#Get-OktaUserGrant) | **GET** /api/v1/users/{userId}/grants/{grantId} | Retrieve a User Grant
[**Invoke-OktaListAppLinks**](OktaUserApi.md#Invoke-OktaListAppLinks) | **GET** /api/v1/users/{userId}/appLinks | List all Assigned Application Links
[**Invoke-OktaListGrantsForUserAndClient**](OktaUserApi.md#Invoke-OktaListGrantsForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/grants | List all Grants for a Client
[**Invoke-OktaListRefreshTokensForUserAndClient**](OktaUserApi.md#Invoke-OktaListRefreshTokensForUserAndClient) | **GET** /api/v1/users/{userId}/clients/{clientId}/tokens | List all Refresh Tokens for a Client
[**Invoke-OktaListUserClients**](OktaUserApi.md#Invoke-OktaListUserClients) | **GET** /api/v1/users/{userId}/clients | List all Clients
[**Invoke-OktaListUserGrants**](OktaUserApi.md#Invoke-OktaListUserGrants) | **GET** /api/v1/users/{userId}/grants | List all User Grants
[**Invoke-OktaListUserGroups**](OktaUserApi.md#Invoke-OktaListUserGroups) | **GET** /api/v1/users/{userId}/groups | List all Groups
[**Invoke-OktaListUserIdentityProviders**](OktaUserApi.md#Invoke-OktaListUserIdentityProviders) | **GET** /api/v1/users/{userId}/idps | List all Identity Providers
[**Invoke-OktaListUsers**](OktaUserApi.md#Invoke-OktaListUsers) | **GET** /api/v1/users | List all Users
[**Invoke-OktaPartialUpdateUser**](OktaUserApi.md#Invoke-OktaPartialUpdateUser) | **POST** /api/v1/users/{userId} | Update a User
[**Invoke-OktaReactivateUser**](OktaUserApi.md#Invoke-OktaReactivateUser) | **POST** /api/v1/users/{userId}/lifecycle/reactivate | Reactivate a User
[**Remove-OktaLinkedObjectForUser**](OktaUserApi.md#Remove-OktaLinkedObjectForUser) | **DELETE** /api/v1/users/{userId}/linkedObjects/{relationshipName} | Delete a Linked Object
[**Reset-OktaFactors**](OktaUserApi.md#Reset-OktaFactors) | **POST** /api/v1/users/{userId}/lifecycle/reset_factors | Reset all Factors
[**Reset-OktaPassword**](OktaUserApi.md#Reset-OktaPassword) | **POST** /api/v1/users/{userId}/lifecycle/reset_password | Reset Password
[**Revoke-OktaGrantsForUserAndClient**](OktaUserApi.md#Revoke-OktaGrantsForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/grants | Revoke all Grants for a Client
[**Revoke-OktaTokenForUserAndClient**](OktaUserApi.md#Revoke-OktaTokenForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/tokens/{tokenId} | Revoke a Token for a Client
[**Revoke-OktaTokensForUserAndClient**](OktaUserApi.md#Revoke-OktaTokensForUserAndClient) | **DELETE** /api/v1/users/{userId}/clients/{clientId}/tokens | Revoke all Refresh Tokens for a Client
[**Revoke-OktaUserGrant**](OktaUserApi.md#Revoke-OktaUserGrant) | **DELETE** /api/v1/users/{userId}/grants/{grantId} | Revoke a User Grant
[**Revoke-OktaUserGrants**](OktaUserApi.md#Revoke-OktaUserGrants) | **DELETE** /api/v1/users/{userId}/grants | Revoke all User Grants
[**Set-OktaLinkedObjectForUser**](OktaUserApi.md#Set-OktaLinkedObjectForUser) | **PUT** /api/v1/users/{associatedUserId}/linkedObjects/{primaryRelationshipName}/{primaryUserId} | Create a Linked Object for two User
[**Suspend-OktaUser**](OktaUserApi.md#Suspend-OktaUser) | **POST** /api/v1/users/{userId}/lifecycle/suspend | Suspend a User
[**Unlock-OktaUser**](OktaUserApi.md#Unlock-OktaUser) | **POST** /api/v1/users/{userId}/lifecycle/unlock | Unlock a User
[**Invoke-OktaUnsuspendUser**](OktaUserApi.md#Invoke-OktaUnsuspendUser) | **POST** /api/v1/users/{userId}/lifecycle/unsuspend | Unsuspend a User
[**Update-OktaUser**](OktaUserApi.md#Update-OktaUser) | **PUT** /api/v1/users/{userId} | Replace a User


<a id="Invoke-OktaActivateUser"></a>
# **Invoke-OktaActivateUser**
> UserActivationToken Invoke-OktaActivateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <Boolean><br>

Activate a User

Activates a user.  This operation can only be performed on users with a `STAGED` status.  Activation of a user is an asynchronous operation. The user will have the `transitioningToStatus` property with a value of `ACTIVE` during activation to indicate that the user hasn't completed the asynchronous operation.  The user will have a status of `ACTIVE` when the activation process is complete.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean | Sends an activation email to the user if true (default to $true)

# Activate a User
try {
    $Result = Invoke-OktaActivateUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Rename-OktaPassword"></a>
# **Rename-OktaPassword**
> UserCredentials Rename-OktaPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChangePasswordRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>

Change Password

Changes a user's password by validating the user's current password. This operation can only be performed on users in `STAGED`, `ACTIVE`, `PASSWORD_EXPIRED`, or `RECOVERY` status that have a valid password credential

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$ChangePasswordRequest = Initialize-ChangePasswordRequest -NewPassword $PasswordCredential -OldPassword $PasswordCredential -RevokeSessions $false # ChangePasswordRequest | 
$Strict = $true # Boolean |  (optional)

# Change Password
try {
    $Result = Rename-OktaPassword -UserId $UserId -ChangePasswordRequest $ChangePasswordRequest -Strict $Strict
} catch {
    Write-Host ("Exception occurred when calling Rename-OktaPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Rename-OktaRecoveryQuestion"></a>
# **Rename-OktaRecoveryQuestion**
> UserCredentials Rename-OktaRecoveryQuestion<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserCredentials] <PSCustomObject><br>

Change Recovery Question

Changes a user's recovery question & answer credential by validating the user's current password.  This operation can only be performed on users in **STAGED**, **ACTIVE** or **RECOVERY** `status` that have a valid password credential

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$AuthenticationProvider = Initialize-AuthenticationProvider -Name "MyName" -Type "ACTIVE_DIRECTORY"
$RecoveryQuestionCredential = Initialize-RecoveryQuestionCredential -Answer "MyAnswer" -Question "MyQuestion"
$UserCredentials = Initialize-UserCredentials -Password $PasswordCredential -Provider $AuthenticationProvider -RecoveryQuestion $RecoveryQuestionCredential # UserCredentials | 

# Change Recovery Question
try {
    $Result = Rename-OktaRecoveryQuestion -UserId $UserId -UserCredentials $UserCredentials
} catch {
    Write-Host ("Exception occurred when calling Rename-OktaRecoveryQuestion: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Clear-OktaUserSessions"></a>
# **Clear-OktaUserSessions**
> void Clear-OktaUserSessions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OauthTokens] <System.Nullable[Boolean]><br>

Delete all User Sessions

Removes all active identity provider sessions. This forces the user to authenticate on the next operation. Optionally revokes OpenID Connect and OAuth refresh and access tokens issued to the user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$OauthTokens = $true # Boolean | Revoke issued OpenID Connect and OAuth refresh and access tokens (optional) (default to $false)

# Delete all User Sessions
try {
    $Result = Clear-OktaUserSessions -UserId $UserId -OauthTokens $OauthTokens
} catch {
    Write-Host ("Exception occurred when calling Clear-OktaUserSessions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaUser"></a>
# **New-OktaUser**
> User New-OktaUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Provider] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NextLogin] <PSCustomObject><br>

Create a User

Creates a new user in your Okta organization with or without credentials.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

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
    $Result = New-OktaUser -Body $Body -Activate $Activate -Provider $Provider -NextLogin $NextLogin
} catch {
    Write-Host ("Exception occurred when calling New-OktaUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateOrDeleteUser"></a>
# **Invoke-OktaDeactivateOrDeleteUser**
> void Invoke-OktaDeactivateOrDeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Delete a User

Deletes a user permanently.  This operation can only be performed on users that have a `DEPROVISIONED` status.  **This action cannot be recovered!**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $false)

# Delete a User
try {
    $Result = Invoke-OktaDeactivateOrDeleteUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateOrDeleteUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateUser"></a>
# **Invoke-OktaDeactivateUser**
> void Invoke-OktaDeactivateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Deactivate a User

Deactivates a user. This operation can only be performed on users that do not have a `DEPROVISIONED` status. While the asynchronous operation (triggered by HTTP header `Prefer: respond-async`) is proceeding the user's `transitioningToStatus` property is `DEPROVISIONED`. The user's status is `DEPROVISIONED` when the deactivation process is complete.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $false)

# Deactivate a User
try {
    $Result = Invoke-OktaDeactivateUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaExpirePassword"></a>
# **Invoke-OktaExpirePassword**
> User Invoke-OktaExpirePassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Expire Password

This operation transitions the user to the status of `PASSWORD_EXPIRED` so that the user is required to change their password at their next login.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Expire Password
try {
    $Result = Invoke-OktaExpirePassword -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaExpirePassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaExpirePasswordAndGetTemporaryPassword"></a>
# **Invoke-OktaExpirePasswordAndGetTemporaryPassword**
> TempPassword Invoke-OktaExpirePasswordAndGetTemporaryPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Expire Password and Set Temporary Password

This operation transitions the user to the status of `PASSWORD_EXPIRED` so that the user is required to change their password at their next login, and also sets the user's password to a temporary password returned in the response.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Expire Password and Set Temporary Password
try {
    $Result = Invoke-OktaExpirePasswordAndGetTemporaryPassword -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaExpirePasswordAndGetTemporaryPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaForgotPassword"></a>
# **Invoke-OktaForgotPassword**
> ForgotPasswordResponse Invoke-OktaForgotPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Initiate Forgot Password

Initiate forgot password flow. Generates a one-time token (OTT) that can be used to reset a user's password.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean |  (optional) (default to $true)

# Initiate Forgot Password
try {
    $Result = Invoke-OktaForgotPassword -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaForgotPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaForgotPasswordSetNewPassword"></a>
# **Invoke-OktaForgotPasswordSetNewPassword**
> UserCredentials Invoke-OktaForgotPasswordSetNewPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserCredentials] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Reset Password with Recovery Question

Resets the user's password to the specified password if the provided answer to the recovery question is correct.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

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
    $Result = Invoke-OktaForgotPasswordSetNewPassword -UserId $UserId -UserCredentials $UserCredentials -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaForgotPasswordSetNewPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaLinkedObjectsForUser"></a>
# **Get-OktaLinkedObjectsForUser**
> SystemCollectionsHashtable[] Get-OktaLinkedObjectsForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RelationshipName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Linked Objects

Get linked objects for a user, relationshipName can be a primary or associated relationship name

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RelationshipName = "MyRelationshipName" # String | 
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)

# List all Linked Objects
try {
    $Result = Get-OktaLinkedObjectsForUser -UserId $UserId -RelationshipName $RelationshipName -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-OktaLinkedObjectsForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaRefreshTokenForUserAndClient"></a>
# **Get-OktaRefreshTokenForUserAndClient**
> OAuth2RefreshToken Get-OktaRefreshTokenForUserAndClient<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 
$Expand = "MyExpand" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)
$After = "MyAfter" # String |  (optional)

# Retrieve a Refresh Token for a Client
try {
    $Result = Get-OktaRefreshTokenForUserAndClient -UserId $UserId -ClientId $ClientId -TokenId $TokenId -Expand $Expand -Limit $Limit -After $After
} catch {
    Write-Host ("Exception occurred when calling Get-OktaRefreshTokenForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaUser"></a>
# **Get-OktaUser**
> User Get-OktaUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Retrieve a User

Fetches a user from your Okta organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Retrieve a User
try {
    $Result = Get-OktaUser -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaUserGrant"></a>
# **Get-OktaUserGrant**
> OAuth2ScopeConsentGrant Get-OktaUserGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a User Grant

Gets a grant for the specified user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$GrantId = "MyGrantId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a User Grant
try {
    $Result = Get-OktaUserGrant -UserId $UserId -GrantId $GrantId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaUserGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAppLinks"></a>
# **Invoke-OktaListAppLinks**
> AppLink[] Invoke-OktaListAppLinks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Assigned Application Links

Fetches appLinks for all direct or indirect (via group membership) assigned applications.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# List all Assigned Application Links
try {
    $Result = Invoke-OktaListAppLinks -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAppLinks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListGrantsForUserAndClient"></a>
# **Invoke-OktaListGrantsForUserAndClient**
> OAuth2ScopeConsentGrant[] Invoke-OktaListGrantsForUserAndClient<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Grants for a Client
try {
    $Result = Invoke-OktaListGrantsForUserAndClient -UserId $UserId -ClientId $ClientId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListGrantsForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListRefreshTokensForUserAndClient"></a>
# **Invoke-OktaListRefreshTokensForUserAndClient**
> OAuth2RefreshToken[] Invoke-OktaListRefreshTokensForUserAndClient<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Refresh Tokens for a Client
try {
    $Result = Invoke-OktaListRefreshTokensForUserAndClient -UserId $UserId -ClientId $ClientId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListRefreshTokensForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListUserClients"></a>
# **Invoke-OktaListUserClients**
> OAuth2Client[] Invoke-OktaListUserClients<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Clients

Lists all client resources for which the specified user has grants or tokens.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# List all Clients
try {
    $Result = Invoke-OktaListUserClients -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListUserClients: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListUserGrants"></a>
# **Invoke-OktaListUserGrants**
> OAuth2ScopeConsentGrant[] Invoke-OktaListUserGrants<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$ScopeId = "MyScopeId" # String |  (optional)
$Expand = "MyExpand" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all User Grants
try {
    $Result = Invoke-OktaListUserGrants -UserId $UserId -ScopeId $ScopeId -Expand $Expand -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListUserGrants: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListUserGroups"></a>
# **Invoke-OktaListUserGroups**
> Group[] Invoke-OktaListUserGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Groups

Fetches the groups of which the user is a member.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# List all Groups
try {
    $Result = Invoke-OktaListUserGroups -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListUserGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListUserIdentityProviders"></a>
# **Invoke-OktaListUserIdentityProviders**
> IdentityProvider[] Invoke-OktaListUserIdentityProviders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Identity Providers

Lists the IdPs associated with the user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# List all Identity Providers
try {
    $Result = Invoke-OktaListUserIdentityProviders -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListUserIdentityProviders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListUsers"></a>
# **Invoke-OktaListUsers**
> User[] Invoke-OktaListUsers<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Q = "MyQ" # String | Finds a user that matches firstName, lastName, and email properties (optional)
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | Specifies the number of results returned. Defaults to 10 if `q` is provided. (optional) (default to 200)
$Filter = "MyFilter" # String | Filters users with a supported expression for a subset of properties (optional)
$Search = "MySearch" # String | Searches for users with a supported filtering expression for most properties. Okta recommends using this parameter for search for best performance. (optional)
$SortBy = "MySortBy" # String |  (optional)
$SortOrder = "MySortOrder" # String |  (optional)

# List all Users
try {
    $Result = Invoke-OktaListUsers -Q $Q -After $After -Limit $Limit -Filter $Filter -Search $Search -SortBy $SortBy -SortOrder $SortOrder
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaPartialUpdateUser"></a>
# **Invoke-OktaPartialUpdateUser**
> User Invoke-OktaPartialUpdateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>

Update a User

Fetch a user by `id`, `login`, or `login shortname` if the short name is unambiguous.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

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
    $Result = Invoke-OktaPartialUpdateUser -UserId $UserId -User $User -Strict $Strict
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaPartialUpdateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReactivateUser"></a>
# **Invoke-OktaReactivateUser**
> UserActivationToken Invoke-OktaReactivateUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <System.Nullable[Boolean]><br>

Reactivate a User

Reactivates a user.  This operation can only be performed on users with a `PROVISIONED` status.  This operation restarts the activation workflow if for some reason the user activation was not completed when using the activationToken from [Activate User](#activate-user).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean | Sends an activation email to the user if true (optional) (default to $false)

# Reactivate a User
try {
    $Result = Invoke-OktaReactivateUser -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReactivateUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-OktaLinkedObjectForUser"></a>
# **Remove-OktaLinkedObjectForUser**
> void Remove-OktaLinkedObjectForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RelationshipName] <String><br>

Delete a Linked Object

Delete linked objects for a user, relationshipName can be ONLY a primary relationship name

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$RelationshipName = "MyRelationshipName" # String | 

# Delete a Linked Object
try {
    $Result = Remove-OktaLinkedObjectForUser -UserId $UserId -RelationshipName $RelationshipName
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaLinkedObjectForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Reset-OktaFactors"></a>
# **Reset-OktaFactors**
> void Reset-OktaFactors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Reset all Factors

This operation resets all factors for the specified user. All MFA factor enrollments returned to the unenrolled state. The user's status remains ACTIVE. This link is present only if the user is currently enrolled in one or more MFA factors.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Reset all Factors
try {
    $Result = Reset-OktaFactors -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Reset-OktaFactors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Reset-OktaPassword"></a>
# **Reset-OktaPassword**
> ResetPasswordToken Reset-OktaPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendEmail] <Boolean><br>

Reset Password

Generates a one-time token (OTT) that can be used to reset a user's password.  The OTT link can be automatically emailed to the user or returned to the API caller and distributed using a custom flow.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$SendEmail = $true # Boolean | 

# Reset Password
try {
    $Result = Reset-OktaPassword -UserId $UserId -SendEmail $SendEmail
} catch {
    Write-Host ("Exception occurred when calling Reset-OktaPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaGrantsForUserAndClient"></a>
# **Revoke-OktaGrantsForUserAndClient**
> void Revoke-OktaGrantsForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>

Revoke all Grants for a Client

Revokes all grants for the specified user and client

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 

# Revoke all Grants for a Client
try {
    $Result = Revoke-OktaGrantsForUserAndClient -UserId $UserId -ClientId $ClientId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaGrantsForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaTokenForUserAndClient"></a>
# **Revoke-OktaTokenForUserAndClient**
> void Revoke-OktaTokenForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenId] <String><br>

Revoke a Token for a Client

Revokes the specified refresh token.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 
$TokenId = "MyTokenId" # String | 

# Revoke a Token for a Client
try {
    $Result = Revoke-OktaTokenForUserAndClient -UserId $UserId -ClientId $ClientId -TokenId $TokenId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaTokenForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaTokensForUserAndClient"></a>
# **Revoke-OktaTokensForUserAndClient**
> void Revoke-OktaTokensForUserAndClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>

Revoke all Refresh Tokens for a Client

Revokes all refresh tokens issued for the specified User and Client.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$ClientId = "MyClientId" # String | 

# Revoke all Refresh Tokens for a Client
try {
    $Result = Revoke-OktaTokensForUserAndClient -UserId $UserId -ClientId $ClientId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaTokensForUserAndClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaUserGrant"></a>
# **Revoke-OktaUserGrant**
> void Revoke-OktaUserGrant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GrantId] <String><br>

Revoke a User Grant

Revokes one grant for a specified user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$GrantId = "MyGrantId" # String | 

# Revoke a User Grant
try {
    $Result = Revoke-OktaUserGrant -UserId $UserId -GrantId $GrantId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaUserGrant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Revoke-OktaUserGrants"></a>
# **Revoke-OktaUserGrants**
> void Revoke-OktaUserGrants<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Revoke all User Grants

Revokes all grants for a specified user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Revoke all User Grants
try {
    $Result = Revoke-OktaUserGrants -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaUserGrants: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Set-OktaLinkedObjectForUser"></a>
# **Set-OktaLinkedObjectForUser**
> void Set-OktaLinkedObjectForUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssociatedUserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrimaryRelationshipName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrimaryUserId] <String><br>

Create a Linked Object for two User

Sets a linked object for two users.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration
# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$AssociatedUserId = "MyAssociatedUserId" # String | 
$PrimaryRelationshipName = "MyPrimaryRelationshipName" # String | 
$PrimaryUserId = "MyPrimaryUserId" # String | 

# Create a Linked Object for two User
try {
    $Result = Set-OktaLinkedObjectForUser -AssociatedUserId $AssociatedUserId -PrimaryRelationshipName $PrimaryRelationshipName -PrimaryUserId $PrimaryUserId
} catch {
    Write-Host ("Exception occurred when calling Set-OktaLinkedObjectForUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Suspend-OktaUser"></a>
# **Suspend-OktaUser**
> void Suspend-OktaUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Suspend a User

Suspends a user.  This operation can only be performed on users with an `ACTIVE` status.  The user will have a status of `SUSPENDED` when the process is complete.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Suspend a User
try {
    $Result = Suspend-OktaUser -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Suspend-OktaUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Unlock-OktaUser"></a>
# **Unlock-OktaUser**
> void Unlock-OktaUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unlock a User

Unlocks a user with a `LOCKED_OUT` status and returns them to `ACTIVE` status.  Users will be able to login with their current password.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Unlock a User
try {
    $Result = Unlock-OktaUser -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Unlock-OktaUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnsuspendUser"></a>
# **Invoke-OktaUnsuspendUser**
> void Invoke-OktaUnsuspendUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unsuspend a User

Unsuspends a user and returns them to the `ACTIVE` state.  This operation can only be performed on users that have a `SUSPENDED` status.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# Unsuspend a User
try {
    $Result = Invoke-OktaUnsuspendUser -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnsuspendUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaUser"></a>
# **Update-OktaUser**
> User Update-OktaUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Strict] <System.Nullable[Boolean]><br>

Replace a User

Update a user's profile and/or credentials using strict-update semantics.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$PasswordCredentialHash = Initialize-PasswordCredentialHash -Algorithm "BCRYPT" -Salt "MySalt" -SaltOrder "MySaltOrder" -Value "MyValue" -WorkFactor 0
$PasswordCredentialHook = Initialize-PasswordCredentialHook -Type "MyType"
$PasswordCredential = Initialize-PasswordCredential -Hash $PasswordCredentialHash -Hook $PasswordCredentialHook -Value "MyValue"

$AuthenticationProvider = Initialize-AuthenticationProvider -Name "MyName" -Type "ACTIVE_DIRECTORY"
$RecoveryQuestionCredential = Initialize-RecoveryQuestionCredential -Answer "MyAnswer" -Question "MyQuestion"
$UserCredentials = Initialize-UserCredentials -Password $PasswordCredential -Provider $AuthenticationProvider -RecoveryQuestion $RecoveryQuestionCredential

$UserType = Initialize-UserType -Created (Get-Date) -CreatedBy "MyCreatedBy" -Default $false -Description "MyDescription" -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -Name "MyName" -Links @{ key_example =  }
$User = Initialize-User -Activated (Get-Date) -Created (Get-Date) -Credentials $UserCredentials -Id "MyId" -LastLogin (Get-Date) -LastUpdated (Get-Date) -PasswordChanged (Get-Date) -VarProfile  -Status "ACTIVE" -StatusChanged (Get-Date) -TransitioningToStatus "ACTIVE" -Type $UserType -Embedded @{ key_example =  } -Links @{ key_example =  } # User | 
$Strict = $true # Boolean |  (optional)

# Replace a User
try {
    $Result = Update-OktaUser -UserId $UserId -User $User -Strict $Strict
} catch {
    Write-Host ("Exception occurred when calling Update-OktaUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **User** | [**User**](User.md)|  | 
 **Strict** | **Boolean**|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

