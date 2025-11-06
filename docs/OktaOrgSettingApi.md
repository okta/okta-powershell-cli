# Okta.PowerShell.Okta.PowerShell\Api.OktaOrgSettingApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaBulkRemoveEmailAddressBounces**](OktaOrgSettingApi.md#Invoke-OktaBulkRemoveEmailAddressBounces) | **POST** /api/v1/org/email/bounces/remove-list | Remove Emails from Email Provider Bounce List
[**Invoke-OktaExtendOktaSupport**](OktaOrgSettingApi.md#Invoke-OktaExtendOktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/extend | Extend Okta Support Access
[**Get-OktaOktaCommunicationSettings**](OktaOrgSettingApi.md#Get-OktaOktaCommunicationSettings) | **GET** /api/v1/org/privacy/oktaCommunication | Retreive the Okta Communication Settings
[**Get-OktaOrgContactTypes**](OktaOrgSettingApi.md#Get-OktaOrgContactTypes) | **GET** /api/v1/org/contacts | Retrieve the Org Contact Types
[**Get-OktaOrgContactUser**](OktaOrgSettingApi.md#Get-OktaOrgContactUser) | **GET** /api/v1/org/contacts/{contactType} | Retrieve the User of the Contact Type
[**Get-OktaOrgOktaSupportSettings**](OktaOrgSettingApi.md#Get-OktaOrgOktaSupportSettings) | **GET** /api/v1/org/privacy/oktaSupport | Retrieve the Okta Support Settings
[**Get-OktaOrgPreferences**](OktaOrgSettingApi.md#Get-OktaOrgPreferences) | **GET** /api/v1/org/preferences | Retrieve the Org Preferences
[**Get-OktaOrgSettings**](OktaOrgSettingApi.md#Get-OktaOrgSettings) | **GET** /api/v1/org | Retrieve the Org Settings
[**Grant-OktaOktaSupport**](OktaOrgSettingApi.md#Grant-OktaOktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/grant | Grant Okta Support Access to your Org
[**Hide-OktaOktaUIFooter**](OktaOrgSettingApi.md#Hide-OktaOktaUIFooter) | **POST** /api/v1/org/preferences/hideEndUserFooter | Update the Preference to Hide the Okta Dashboard Footer
[**Invoke-OktaOptInUsersToOktaCommunicationEmails**](OktaOrgSettingApi.md#Invoke-OktaOptInUsersToOktaCommunicationEmails) | **POST** /api/v1/org/privacy/oktaCommunication/optIn | Opt in all Users to Okta Communication emails
[**Invoke-OktaOptOutUsersFromOktaCommunicationEmails**](OktaOrgSettingApi.md#Invoke-OktaOptOutUsersFromOktaCommunicationEmails) | **POST** /api/v1/org/privacy/oktaCommunication/optOut | Opt out all Users from Okta Communication emails
[**Invoke-OktaPartialUpdateOrgSetting**](OktaOrgSettingApi.md#Invoke-OktaPartialUpdateOrgSetting) | **POST** /api/v1/org | Update the Org Settings
[**Revoke-OktaOktaSupport**](OktaOrgSettingApi.md#Revoke-OktaOktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/revoke | Revoke Okta Support Access
[**Show-OktaOktaUIFooter**](OktaOrgSettingApi.md#Show-OktaOktaUIFooter) | **POST** /api/v1/org/preferences/showEndUserFooter | Update the Preference to Show the Okta Dashboard Footer
[**Update-OktaOrgContactUser**](OktaOrgSettingApi.md#Update-OktaOrgContactUser) | **PUT** /api/v1/org/contacts/{contactType} | Replace the User of the Contact Type
[**Update-OktaOrgLogo**](OktaOrgSettingApi.md#Update-OktaOrgLogo) | **POST** /api/v1/org/logo | Upload the Org Logo
[**Update-OktaOrgSetting**](OktaOrgSettingApi.md#Update-OktaOrgSetting) | **PUT** /api/v1/org | Replace the Org Settings
[**Invoke-OktaWellknownOrgMetadata**](OktaOrgSettingApi.md#Invoke-OktaWellknownOrgMetadata) | **GET** /.well-known/okta-organization | Retrieve the Well-Known Org Metadata


<a id="Invoke-OktaBulkRemoveEmailAddressBounces"></a>
# **Invoke-OktaBulkRemoveEmailAddressBounces**
> BouncesRemoveListResult Invoke-OktaBulkRemoveEmailAddressBounces<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BouncesRemoveListObj] <PSCustomObject><br>

Remove Emails from Email Provider Bounce List

A list of email addresses to be removed from the set of email addresses that are bounced.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$BouncesRemoveListObj = Initialize-OktaBouncesRemoveListObj -EmailAddresses "MyEmailAddresses" # BouncesRemoveListObj |  (optional)

# Remove Emails from Email Provider Bounce List
try {
    $Result = Invoke-OktaBulkRemoveEmailAddressBounces -BouncesRemoveListObj $BouncesRemoveListObj
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaBulkRemoveEmailAddressBounces: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BouncesRemoveListObj** | [**BouncesRemoveListObj**](BouncesRemoveListObj.md)|  | [optional] 

### Return type

[**BouncesRemoveListResult**](BouncesRemoveListResult.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaExtendOktaSupport"></a>
# **Invoke-OktaExtendOktaSupport**
> OrgOktaSupportSettingsObj Invoke-OktaExtendOktaSupport<br>

Extend Okta Support Access

Extends the length of time that Okta Support can access your org by 24 hours. This means that 24 hours are added to the remaining access time.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Extend Okta Support Access
try {
    $Result = Invoke-OktaExtendOktaSupport
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaExtendOktaSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgOktaSupportSettingsObj**](OrgOktaSupportSettingsObj.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOktaCommunicationSettings"></a>
# **Get-OktaOktaCommunicationSettings**
> OrgOktaCommunicationSetting Get-OktaOktaCommunicationSettings<br>

Retreive the Okta Communication Settings

Gets Okta Communication Settings of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retreive the Okta Communication Settings
try {
    $Result = Get-OktaOktaCommunicationSettings
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOktaCommunicationSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgOktaCommunicationSetting**](OrgOktaCommunicationSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOrgContactTypes"></a>
# **Get-OktaOrgContactTypes**
> OrgContactTypeObj[] Get-OktaOrgContactTypes<br>

Retrieve the Org Contact Types

Gets Contact Types of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retrieve the Org Contact Types
try {
    $Result = Get-OktaOrgContactTypes
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOrgContactTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgContactTypeObj[]**](OrgContactTypeObj.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOrgContactUser"></a>
# **Get-OktaOrgContactUser**
> OrgContactUser Get-OktaOrgContactUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContactType] <String><br>

Retrieve the User of the Contact Type

Retrieves the URL of the User associated with the specified Contact Type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ContactType = "MyContactType" # String | 

# Retrieve the User of the Contact Type
try {
    $Result = Get-OktaOrgContactUser -ContactType $ContactType
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOrgContactUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ContactType** | **String**|  | 

### Return type

[**OrgContactUser**](OrgContactUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOrgOktaSupportSettings"></a>
# **Get-OktaOrgOktaSupportSettings**
> OrgOktaSupportSettingsObj Get-OktaOrgOktaSupportSettings<br>

Retrieve the Okta Support Settings

Gets Okta Support Settings of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retrieve the Okta Support Settings
try {
    $Result = Get-OktaOrgOktaSupportSettings
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOrgOktaSupportSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgOktaSupportSettingsObj**](OrgOktaSupportSettingsObj.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOrgPreferences"></a>
# **Get-OktaOrgPreferences**
> OrgPreferences Get-OktaOrgPreferences<br>

Retrieve the Org Preferences

Gets preferences of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retrieve the Org Preferences
try {
    $Result = Get-OktaOrgPreferences
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOrgPreferences: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgPreferences**](OrgPreferences.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaOrgSettings"></a>
# **Get-OktaOrgSettings**
> OrgSetting Get-OktaOrgSettings<br>

Retrieve the Org Settings

Get settings of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Retrieve the Org Settings
try {
    $Result = Get-OktaOrgSettings
} catch {
    Write-Host ("Exception occurred when calling Get-OktaOrgSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgSetting**](OrgSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Grant-OktaOktaSupport"></a>
# **Grant-OktaOktaSupport**
> OrgOktaSupportSettingsObj Grant-OktaOktaSupport<br>

Grant Okta Support Access to your Org

Enables you to temporarily allow Okta Support to access your org as an administrator for eight hours.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Grant Okta Support Access to your Org
try {
    $Result = Grant-OktaOktaSupport
} catch {
    Write-Host ("Exception occurred when calling Grant-OktaOktaSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgOktaSupportSettingsObj**](OrgOktaSupportSettingsObj.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Hide-OktaOktaUIFooter"></a>
# **Hide-OktaOktaUIFooter**
> OrgPreferences Hide-OktaOktaUIFooter<br>

Update the Preference to Hide the Okta Dashboard Footer

Hide the Okta UI footer for all end users of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Update the Preference to Hide the Okta Dashboard Footer
try {
    $Result = Hide-OktaOktaUIFooter
} catch {
    Write-Host ("Exception occurred when calling Hide-OktaOktaUIFooter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgPreferences**](OrgPreferences.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaOptInUsersToOktaCommunicationEmails"></a>
# **Invoke-OktaOptInUsersToOktaCommunicationEmails**
> OrgOktaCommunicationSetting Invoke-OktaOptInUsersToOktaCommunicationEmails<br>

Opt in all Users to Okta Communication emails

Opts in all users of this org to Okta Communication emails.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Opt in all Users to Okta Communication emails
try {
    $Result = Invoke-OktaOptInUsersToOktaCommunicationEmails
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaOptInUsersToOktaCommunicationEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgOktaCommunicationSetting**](OrgOktaCommunicationSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaOptOutUsersFromOktaCommunicationEmails"></a>
# **Invoke-OktaOptOutUsersFromOktaCommunicationEmails**
> OrgOktaCommunicationSetting Invoke-OktaOptOutUsersFromOktaCommunicationEmails<br>

Opt out all Users from Okta Communication emails

Opts out all users of this org from Okta Communication emails.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Opt out all Users from Okta Communication emails
try {
    $Result = Invoke-OktaOptOutUsersFromOktaCommunicationEmails
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaOptOutUsersFromOktaCommunicationEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgOktaCommunicationSetting**](OrgOktaCommunicationSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaPartialUpdateOrgSetting"></a>
# **Invoke-OktaPartialUpdateOrgSetting**
> OrgSetting Invoke-OktaPartialUpdateOrgSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgSetting] <PSCustomObject><br>

Update the Org Settings

Partial update settings of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$OrgSetting = Initialize-OktaOrgSetting -Address1 "MyAddress1" -Address2 "MyAddress2" -City "MyCity" -CompanyName "MyCompanyName" -Country "MyCountry" -Created (Get-Date) -EndUserSupportHelpURL "MyEndUserSupportHelpURL" -ExpiresAt (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -PhoneNumber "MyPhoneNumber" -PostalCode "MyPostalCode" -State "MyState" -Status "MyStatus" -Subdomain "MySubdomain" -SupportPhoneNumber "MySupportPhoneNumber" -Website "MyWebsite" -Links @{ key_example =  } # OrgSetting |  (optional)

# Update the Org Settings
try {
    $Result = Invoke-OktaPartialUpdateOrgSetting -OrgSetting $OrgSetting
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaPartialUpdateOrgSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrgSetting** | [**OrgSetting**](OrgSetting.md)|  | [optional] 

### Return type

[**OrgSetting**](OrgSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Revoke-OktaOktaSupport"></a>
# **Revoke-OktaOktaSupport**
> OrgOktaSupportSettingsObj Revoke-OktaOktaSupport<br>

Revoke Okta Support Access

Revokes Okta Support access to your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Revoke Okta Support Access
try {
    $Result = Revoke-OktaOktaSupport
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaOktaSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgOktaSupportSettingsObj**](OrgOktaSupportSettingsObj.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Show-OktaOktaUIFooter"></a>
# **Show-OktaOktaUIFooter**
> OrgPreferences Show-OktaOktaUIFooter<br>

Update the Preference to Show the Okta Dashboard Footer

Makes the Okta UI footer visible for all end users of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# Update the Preference to Show the Okta Dashboard Footer
try {
    $Result = Show-OktaOktaUIFooter
} catch {
    Write-Host ("Exception occurred when calling Show-OktaOktaUIFooter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgPreferences**](OrgPreferences.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaOrgContactUser"></a>
# **Update-OktaOrgContactUser**
> OrgContactUser Update-OktaOrgContactUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContactType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgContactUser] <PSCustomObject><br>

Replace the User of the Contact Type

Updates the User associated with the specified Contact Type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ContactType = "MyContactType" # String | 
$OrgContactUser = Initialize-OktaOrgContactUser -UserId "MyUserId" -Links @{ key_example =  } # OrgContactUser | 

# Replace the User of the Contact Type
try {
    $Result = Update-OktaOrgContactUser -ContactType $ContactType -OrgContactUser $OrgContactUser
} catch {
    Write-Host ("Exception occurred when calling Update-OktaOrgContactUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ContactType** | **String**|  | 
 **OrgContactUser** | [**OrgContactUser**](OrgContactUser.md)|  | 

### Return type

[**OrgContactUser**](OrgContactUser.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaOrgLogo"></a>
# **Update-OktaOrgLogo**
> void Update-OktaOrgLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Org Logo

Updates the logo for your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$File =  # System.IO.FileInfo | 

# Upload the Org Logo
try {
    $Result = Update-OktaOrgLogo -File $File
} catch {
    Write-Host ("Exception occurred when calling Update-OktaOrgLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-OktaOrgSetting"></a>
# **Update-OktaOrgSetting**
> OrgSetting Update-OktaOrgSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgSetting] <PSCustomObject><br>

Replace the Org Settings

Update settings of your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$OrgSetting = Initialize-OktaOrgSetting -Address1 "MyAddress1" -Address2 "MyAddress2" -City "MyCity" -CompanyName "MyCompanyName" -Country "MyCountry" -Created (Get-Date) -EndUserSupportHelpURL "MyEndUserSupportHelpURL" -ExpiresAt (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -PhoneNumber "MyPhoneNumber" -PostalCode "MyPostalCode" -State "MyState" -Status "MyStatus" -Subdomain "MySubdomain" -SupportPhoneNumber "MySupportPhoneNumber" -Website "MyWebsite" -Links @{ key_example =  } # OrgSetting | 

# Replace the Org Settings
try {
    $Result = Update-OktaOrgSetting -OrgSetting $OrgSetting
} catch {
    Write-Host ("Exception occurred when calling Update-OktaOrgSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrgSetting** | [**OrgSetting**](OrgSetting.md)|  | 

### Return type

[**OrgSetting**](OrgSetting.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaWellknownOrgMetadata"></a>
# **Invoke-OktaWellknownOrgMetadata**
> WellKnownOrgMetadata Invoke-OktaWellknownOrgMetadata<br>

Retrieve the Well-Known Org Metadata

Retrieves the well-known org metadata, which includes the id, configured custom domains, authentication pipeline, and various other org settings.

### Example
```powershell

# Retrieve the Well-Known Org Metadata
try {
    $Result = Invoke-OktaWellknownOrgMetadata
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaWellknownOrgMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WellKnownOrgMetadata**](WellKnownOrgMetadata.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

