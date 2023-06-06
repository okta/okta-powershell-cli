# PSOpenAPITools.PSOpenAPITools\Api.OrgSettingApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BulkRemoveEmailAddressBounces**](OrgSettingApi.md#Invoke-BulkRemoveEmailAddressBounces) | **POST** /api/v1/org/email/bounces/remove-list | Remove Emails from Email Provider Bounce List
[**Invoke-ExtendOktaSupport**](OrgSettingApi.md#Invoke-ExtendOktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/extend | Extend Okta Support Access
[**Get-OktaCommunicationSettings**](OrgSettingApi.md#Get-OktaCommunicationSettings) | **GET** /api/v1/org/privacy/oktaCommunication | Retreive the Okta Communication Settings
[**Get-OrgContactTypes**](OrgSettingApi.md#Get-OrgContactTypes) | **GET** /api/v1/org/contacts | Retrieve the Org Contact Types
[**Get-OrgContactUser**](OrgSettingApi.md#Get-OrgContactUser) | **GET** /api/v1/org/contacts/{contactType} | Retrieve the User of the Contact Type
[**Get-OrgOktaSupportSettings**](OrgSettingApi.md#Get-OrgOktaSupportSettings) | **GET** /api/v1/org/privacy/oktaSupport | Retrieve the Okta Support Settings
[**Get-OrgPreferences**](OrgSettingApi.md#Get-OrgPreferences) | **GET** /api/v1/org/preferences | Retrieve the Org Preferences
[**Get-OrgSettings**](OrgSettingApi.md#Get-OrgSettings) | **GET** /api/v1/org | Retrieve the Org Settings
[**Grant-OktaSupport**](OrgSettingApi.md#Grant-OktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/grant | Grant Okta Support Access to your Org
[**Hide-OktaUIFooter**](OrgSettingApi.md#Hide-OktaUIFooter) | **POST** /api/v1/org/preferences/hideEndUserFooter | Update the Preference to Hide the Okta Dashboard Footer
[**Invoke-OptInUsersToOktaCommunicationEmails**](OrgSettingApi.md#Invoke-OptInUsersToOktaCommunicationEmails) | **POST** /api/v1/org/privacy/oktaCommunication/optIn | Opt in all Users to Okta Communication emails
[**Invoke-OptOutUsersFromOktaCommunicationEmails**](OrgSettingApi.md#Invoke-OptOutUsersFromOktaCommunicationEmails) | **POST** /api/v1/org/privacy/oktaCommunication/optOut | Opt out all Users from Okta Communication emails
[**Invoke-PartialUpdateOrgSetting**](OrgSettingApi.md#Invoke-PartialUpdateOrgSetting) | **POST** /api/v1/org | Update the Org Settings
[**Revoke-OktaSupport**](OrgSettingApi.md#Revoke-OktaSupport) | **POST** /api/v1/org/privacy/oktaSupport/revoke | Revoke Okta Support Access
[**Show-OktaUIFooter**](OrgSettingApi.md#Show-OktaUIFooter) | **POST** /api/v1/org/preferences/showEndUserFooter | Update the Preference to Show the Okta Dashboard Footer
[**Update-OrgContactUser**](OrgSettingApi.md#Update-OrgContactUser) | **PUT** /api/v1/org/contacts/{contactType} | Replace the User of the Contact Type
[**Update-OrgLogo**](OrgSettingApi.md#Update-OrgLogo) | **POST** /api/v1/org/logo | Upload the Org Logo
[**Update-OrgSetting**](OrgSettingApi.md#Update-OrgSetting) | **PUT** /api/v1/org | Replace the Org Settings
[**Invoke-WellknownOrgMetadata**](OrgSettingApi.md#Invoke-WellknownOrgMetadata) | **GET** /.well-known/okta-organization | Retrieve the Well-Known Org Metadata


<a name="Invoke-BulkRemoveEmailAddressBounces"></a>
# **Invoke-BulkRemoveEmailAddressBounces**
> BouncesRemoveListResult Invoke-BulkRemoveEmailAddressBounces<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BouncesRemoveListObj] <PSCustomObject><br>

Remove Emails from Email Provider Bounce List

A list of email addresses to be removed from the set of email addresses that are bounced.

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

$BouncesRemoveListObj = Initialize-BouncesRemoveListObj -EmailAddresses "MyEmailAddresses" # BouncesRemoveListObj |  (optional)

# Remove Emails from Email Provider Bounce List
try {
    $Result = Invoke-BulkRemoveEmailAddressBounces -BouncesRemoveListObj $BouncesRemoveListObj
} catch {
    Write-Host ("Exception occurred when calling Invoke-BulkRemoveEmailAddressBounces: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ExtendOktaSupport"></a>
# **Invoke-ExtendOktaSupport**
> OrgOktaSupportSettingsObj Invoke-ExtendOktaSupport<br>

Extend Okta Support Access

Extends the length of time that Okta Support can access your org by 24 hours. This means that 24 hours are added to the remaining access time.

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


# Extend Okta Support Access
try {
    $Result = Invoke-ExtendOktaSupport
} catch {
    Write-Host ("Exception occurred when calling Invoke-ExtendOktaSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-OktaCommunicationSettings"></a>
# **Get-OktaCommunicationSettings**
> OrgOktaCommunicationSetting Get-OktaCommunicationSettings<br>

Retreive the Okta Communication Settings

Gets Okta Communication Settings of your organization.

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


# Retreive the Okta Communication Settings
try {
    $Result = Get-OktaCommunicationSettings
} catch {
    Write-Host ("Exception occurred when calling Get-OktaCommunicationSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-OrgContactTypes"></a>
# **Get-OrgContactTypes**
> OrgContactTypeObj[] Get-OrgContactTypes<br>

Retrieve the Org Contact Types

Gets Contact Types of your organization.

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


# Retrieve the Org Contact Types
try {
    $Result = Get-OrgContactTypes
} catch {
    Write-Host ("Exception occurred when calling Get-OrgContactTypes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-OrgContactUser"></a>
# **Get-OrgContactUser**
> OrgContactUser Get-OrgContactUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContactType] <String><br>

Retrieve the User of the Contact Type

Retrieves the URL of the User associated with the specified Contact Type.

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

$ContactType = "MyContactType" # String | 

# Retrieve the User of the Contact Type
try {
    $Result = Get-OrgContactUser -ContactType $ContactType
} catch {
    Write-Host ("Exception occurred when calling Get-OrgContactUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-OrgOktaSupportSettings"></a>
# **Get-OrgOktaSupportSettings**
> OrgOktaSupportSettingsObj Get-OrgOktaSupportSettings<br>

Retrieve the Okta Support Settings

Gets Okta Support Settings of your organization.

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


# Retrieve the Okta Support Settings
try {
    $Result = Get-OrgOktaSupportSettings
} catch {
    Write-Host ("Exception occurred when calling Get-OrgOktaSupportSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-OrgPreferences"></a>
# **Get-OrgPreferences**
> OrgPreferences Get-OrgPreferences<br>

Retrieve the Org Preferences

Gets preferences of your organization.

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


# Retrieve the Org Preferences
try {
    $Result = Get-OrgPreferences
} catch {
    Write-Host ("Exception occurred when calling Get-OrgPreferences: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-OrgSettings"></a>
# **Get-OrgSettings**
> OrgSetting Get-OrgSettings<br>

Retrieve the Org Settings

Get settings of your organization.

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


# Retrieve the Org Settings
try {
    $Result = Get-OrgSettings
} catch {
    Write-Host ("Exception occurred when calling Get-OrgSettings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Grant-OktaSupport"></a>
# **Grant-OktaSupport**
> OrgOktaSupportSettingsObj Grant-OktaSupport<br>

Grant Okta Support Access to your Org

Enables you to temporarily allow Okta Support to access your org as an administrator for eight hours.

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


# Grant Okta Support Access to your Org
try {
    $Result = Grant-OktaSupport
} catch {
    Write-Host ("Exception occurred when calling Grant-OktaSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Hide-OktaUIFooter"></a>
# **Hide-OktaUIFooter**
> OrgPreferences Hide-OktaUIFooter<br>

Update the Preference to Hide the Okta Dashboard Footer

Hide the Okta UI footer for all end users of your organization.

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


# Update the Preference to Hide the Okta Dashboard Footer
try {
    $Result = Hide-OktaUIFooter
} catch {
    Write-Host ("Exception occurred when calling Hide-OktaUIFooter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-OptInUsersToOktaCommunicationEmails"></a>
# **Invoke-OptInUsersToOktaCommunicationEmails**
> OrgOktaCommunicationSetting Invoke-OptInUsersToOktaCommunicationEmails<br>

Opt in all Users to Okta Communication emails

Opts in all users of this org to Okta Communication emails.

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


# Opt in all Users to Okta Communication emails
try {
    $Result = Invoke-OptInUsersToOktaCommunicationEmails
} catch {
    Write-Host ("Exception occurred when calling Invoke-OptInUsersToOktaCommunicationEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-OptOutUsersFromOktaCommunicationEmails"></a>
# **Invoke-OptOutUsersFromOktaCommunicationEmails**
> OrgOktaCommunicationSetting Invoke-OptOutUsersFromOktaCommunicationEmails<br>

Opt out all Users from Okta Communication emails

Opts out all users of this org from Okta Communication emails.

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


# Opt out all Users from Okta Communication emails
try {
    $Result = Invoke-OptOutUsersFromOktaCommunicationEmails
} catch {
    Write-Host ("Exception occurred when calling Invoke-OptOutUsersFromOktaCommunicationEmails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-PartialUpdateOrgSetting"></a>
# **Invoke-PartialUpdateOrgSetting**
> OrgSetting Invoke-PartialUpdateOrgSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgSetting] <PSCustomObject><br>

Update the Org Settings

Partial update settings of your organization.

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

$OrgSetting = Initialize-OrgSetting -Address1 "MyAddress1" -Address2 "MyAddress2" -City "MyCity" -CompanyName "MyCompanyName" -Country "MyCountry" -Created (Get-Date) -EndUserSupportHelpURL "MyEndUserSupportHelpURL" -ExpiresAt (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -PhoneNumber "MyPhoneNumber" -PostalCode "MyPostalCode" -State "MyState" -Status "MyStatus" -Subdomain "MySubdomain" -SupportPhoneNumber "MySupportPhoneNumber" -Website "MyWebsite" -Links @{ key_example =  } # OrgSetting |  (optional)

# Update the Org Settings
try {
    $Result = Invoke-PartialUpdateOrgSetting -OrgSetting $OrgSetting
} catch {
    Write-Host ("Exception occurred when calling Invoke-PartialUpdateOrgSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Revoke-OktaSupport"></a>
# **Revoke-OktaSupport**
> OrgOktaSupportSettingsObj Revoke-OktaSupport<br>

Revoke Okta Support Access

Revokes Okta Support access to your organization.

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


# Revoke Okta Support Access
try {
    $Result = Revoke-OktaSupport
} catch {
    Write-Host ("Exception occurred when calling Revoke-OktaSupport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Show-OktaUIFooter"></a>
# **Show-OktaUIFooter**
> OrgPreferences Show-OktaUIFooter<br>

Update the Preference to Show the Okta Dashboard Footer

Makes the Okta UI footer visible for all end users of your organization.

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


# Update the Preference to Show the Okta Dashboard Footer
try {
    $Result = Show-OktaUIFooter
} catch {
    Write-Host ("Exception occurred when calling Show-OktaUIFooter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-OrgContactUser"></a>
# **Update-OrgContactUser**
> OrgContactUser Update-OrgContactUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContactType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgContactUser] <PSCustomObject><br>

Replace the User of the Contact Type

Updates the User associated with the specified Contact Type.

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

$ContactType = "MyContactType" # String | 
$OrgContactUser = Initialize-OrgContactUser -UserId "MyUserId" -Links @{ key_example =  } # OrgContactUser | 

# Replace the User of the Contact Type
try {
    $Result = Update-OrgContactUser -ContactType $ContactType -OrgContactUser $OrgContactUser
} catch {
    Write-Host ("Exception occurred when calling Update-OrgContactUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-OrgLogo"></a>
# **Update-OrgLogo**
> void Update-OrgLogo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload the Org Logo

Updates the logo for your organization.

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

$File =  # System.IO.FileInfo | 

# Upload the Org Logo
try {
    $Result = Update-OrgLogo -File $File
} catch {
    Write-Host ("Exception occurred when calling Update-OrgLogo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-OrgSetting"></a>
# **Update-OrgSetting**
> OrgSetting Update-OrgSetting<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgSetting] <PSCustomObject><br>

Replace the Org Settings

Update settings of your organization.

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

$OrgSetting = Initialize-OrgSetting -Address1 "MyAddress1" -Address2 "MyAddress2" -City "MyCity" -CompanyName "MyCompanyName" -Country "MyCountry" -Created (Get-Date) -EndUserSupportHelpURL "MyEndUserSupportHelpURL" -ExpiresAt (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -PhoneNumber "MyPhoneNumber" -PostalCode "MyPostalCode" -State "MyState" -Status "MyStatus" -Subdomain "MySubdomain" -SupportPhoneNumber "MySupportPhoneNumber" -Website "MyWebsite" -Links @{ key_example =  } # OrgSetting | 

# Replace the Org Settings
try {
    $Result = Update-OrgSetting -OrgSetting $OrgSetting
} catch {
    Write-Host ("Exception occurred when calling Update-OrgSetting: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-WellknownOrgMetadata"></a>
# **Invoke-WellknownOrgMetadata**
> WellKnownOrgMetadata Invoke-WellknownOrgMetadata<br>

Retrieve the Well-Known Org Metadata

Retrieves the well-known org metadata, which includes the id, configured custom domains, authentication pipeline, and various other org settings.

### Example
```powershell

# Retrieve the Well-Known Org Metadata
try {
    $Result = Invoke-WellknownOrgMetadata
} catch {
    Write-Host ("Exception occurred when calling Invoke-WellknownOrgMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

