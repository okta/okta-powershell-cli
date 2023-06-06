# PSOpenAPITools.PSOpenAPITools\Api.UserFactorApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateFactor**](UserFactorApi.md#Invoke-ActivateFactor) | **POST** /api/v1/users/{userId}/factors/{factorId}/lifecycle/activate | Activate a Factor
[**Invoke-DeleteFactor**](UserFactorApi.md#Invoke-DeleteFactor) | **DELETE** /api/v1/users/{userId}/factors/{factorId} | Delete a Factor
[**Invoke-EnrollFactor**](UserFactorApi.md#Invoke-EnrollFactor) | **POST** /api/v1/users/{userId}/factors | Enroll a Factor
[**Get-Factor**](UserFactorApi.md#Get-Factor) | **GET** /api/v1/users/{userId}/factors/{factorId} | Retrieve a Factor
[**Get-FactorTransactionStatus**](UserFactorApi.md#Get-FactorTransactionStatus) | **GET** /api/v1/users/{userId}/factors/{factorId}/transactions/{transactionId} | Retrieve a Factor Transaction Status
[**Invoke-ListFactors**](UserFactorApi.md#Invoke-ListFactors) | **GET** /api/v1/users/{userId}/factors | List all Factors
[**Invoke-ListSupportedFactors**](UserFactorApi.md#Invoke-ListSupportedFactors) | **GET** /api/v1/users/{userId}/factors/catalog | List all Supported Factors
[**Invoke-ListSupportedSecurityQuestions**](UserFactorApi.md#Invoke-ListSupportedSecurityQuestions) | **GET** /api/v1/users/{userId}/factors/questions | List all Supported Security Questions
[**Test-Factor**](UserFactorApi.md#Test-Factor) | **POST** /api/v1/users/{userId}/factors/{factorId}/verify | Verify an MFA Factor


<a name="Invoke-ActivateFactor"></a>
# **Invoke-ActivateFactor**
> UserFactor Invoke-ActivateFactor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Activate a Factor

The `sms` and `token:software:totp` factor types require activation to complete the enrollment process.

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
$FactorId = "MyFactorId" # String | 
$ActivateFactorRequest = Initialize-ActivateFactorRequest -Attestation "MyAttestation" -ClientData "MyClientData" -PassCode "MyPassCode" -RegistrationData "MyRegistrationData" -StateToken "MyStateToken" # ActivateFactorRequest |  (optional)

# Activate a Factor
try {
    $Result = Invoke-ActivateFactor -UserId $UserId -FactorId $FactorId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **FactorId** | **String**|  | 
 **Body** | [**ActivateFactorRequest**](ActivateFactorRequest.md)|  | [optional] 

### Return type

[**UserFactor**](UserFactor.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteFactor"></a>
# **Invoke-DeleteFactor**
> void Invoke-DeleteFactor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveEnrollmentRecovery] <System.Nullable[Boolean]><br>

Delete a Factor

Unenrolls an existing factor for the specified user, allowing the user to enroll a new factor.

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
$FactorId = "MyFactorId" # String | 
$RemoveEnrollmentRecovery = $true # Boolean |  (optional) (default to $false)

# Delete a Factor
try {
    $Result = Invoke-DeleteFactor -UserId $UserId -FactorId $FactorId -RemoveEnrollmentRecovery $RemoveEnrollmentRecovery
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **FactorId** | **String**|  | 
 **RemoveEnrollmentRecovery** | **Boolean**|  | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-EnrollFactor"></a>
# **Invoke-EnrollFactor**
> UserFactor Invoke-EnrollFactor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UpdatePhone] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenLifetimeSeconds] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Activate] <System.Nullable[Boolean]><br>

Enroll a Factor

Enrolls a user with a supported factor.

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
$VerifyFactorRequest = Initialize-VerifyFactorRequest -ActivationToken "MyActivationToken" -Answer "MyAnswer" -Attestation "MyAttestation" -ClientData "MyClientData" -NextPassCode "MyNextPassCode" -PassCode "MyPassCode" -RegistrationData "MyRegistrationData" -StateToken "MyStateToken"
$UserFactor = Initialize-UserFactor -Created (Get-Date) -FactorType "call" -Id "MyId" -LastUpdated (Get-Date) -Provider "CUSTOM" -Status "ACTIVE" -Verify $VerifyFactorRequest -Embedded @{ key_example =  } -Links @{ key_example =  } # UserFactor | Factor
$UpdatePhone = $true # Boolean |  (optional) (default to $false)
$TemplateId = "MyTemplateId" # String | id of SMS template (only for SMS factor) (optional)
$TokenLifetimeSeconds = 56 # Int32 |  (optional) (default to 300)
$Activate = $true # Boolean |  (optional) (default to $false)

# Enroll a Factor
try {
    $Result = Invoke-EnrollFactor -UserId $UserId -Body $Body -UpdatePhone $UpdatePhone -TemplateId $TemplateId -TokenLifetimeSeconds $TokenLifetimeSeconds -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling Invoke-EnrollFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **Body** | [**UserFactor**](UserFactor.md)| Factor | 
 **UpdatePhone** | **Boolean**|  | [optional] [default to $false]
 **TemplateId** | **String**| id of SMS template (only for SMS factor) | [optional] 
 **TokenLifetimeSeconds** | **Int32**|  | [optional] [default to 300]
 **Activate** | **Boolean**|  | [optional] [default to $false]

### Return type

[**UserFactor**](UserFactor.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Factor"></a>
# **Get-Factor**
> UserFactor Get-Factor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>

Retrieve a Factor

Fetches a factor for the specified user

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
$FactorId = "MyFactorId" # String | 

# Retrieve a Factor
try {
    $Result = Get-Factor -UserId $UserId -FactorId $FactorId
} catch {
    Write-Host ("Exception occurred when calling Get-Factor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **FactorId** | **String**|  | 

### Return type

[**UserFactor**](UserFactor.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-FactorTransactionStatus"></a>
# **Get-FactorTransactionStatus**
> VerifyUserFactorResponse Get-FactorTransactionStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransactionId] <String><br>

Retrieve a Factor Transaction Status

Polls factors verification transaction for status.

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
$FactorId = "MyFactorId" # String | 
$TransactionId = "MyTransactionId" # String | 

# Retrieve a Factor Transaction Status
try {
    $Result = Get-FactorTransactionStatus -UserId $UserId -FactorId $FactorId -TransactionId $TransactionId
} catch {
    Write-Host ("Exception occurred when calling Get-FactorTransactionStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **FactorId** | **String**|  | 
 **TransactionId** | **String**|  | 

### Return type

[**VerifyUserFactorResponse**](VerifyUserFactorResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListFactors"></a>
# **Invoke-ListFactors**
> UserFactor[] Invoke-ListFactors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Factors

Enumerates all the enrolled factors for the specified user

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

# List all Factors
try {
    $Result = Invoke-ListFactors -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListFactors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**UserFactor[]**](UserFactor.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListSupportedFactors"></a>
# **Invoke-ListSupportedFactors**
> UserFactor[] Invoke-ListSupportedFactors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Supported Factors

Enumerates all the supported factors that can be enrolled for the specified user

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

# List all Supported Factors
try {
    $Result = Invoke-ListSupportedFactors -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListSupportedFactors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**UserFactor[]**](UserFactor.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListSupportedSecurityQuestions"></a>
# **Invoke-ListSupportedSecurityQuestions**
> SecurityQuestion[] Invoke-ListSupportedSecurityQuestions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Supported Security Questions

Enumerates all available security questions for a user's `question` factor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: apiToken
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

$UserId = "MyUserId" # String | 

# List all Supported Security Questions
try {
    $Result = Invoke-ListSupportedSecurityQuestions -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListSupportedSecurityQuestions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 

### Return type

[**SecurityQuestion[]**](SecurityQuestion.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-Factor"></a>
# **Test-Factor**
> VerifyUserFactorResponse Test-Factor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TokenLifetimeSeconds] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XForwardedFor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserAgent] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AcceptLanguage] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Verify an MFA Factor

Verifies an OTP for a `token` or `token:hardware` factor

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
$FactorId = "MyFactorId" # String | 
$TemplateId = "MyTemplateId" # String |  (optional)
$TokenLifetimeSeconds = 56 # Int32 |  (optional) (default to 300)
$XForwardedFor = "MyXForwardedFor" # String |  (optional)
$UserAgent = "MyUserAgent" # String |  (optional)
$AcceptLanguage = "MyAcceptLanguage" # String |  (optional)
$VerifyFactorRequest = Initialize-VerifyFactorRequest -ActivationToken "MyActivationToken" -Answer "MyAnswer" -Attestation "MyAttestation" -ClientData "MyClientData" -NextPassCode "MyNextPassCode" -PassCode "MyPassCode" -RegistrationData "MyRegistrationData" -StateToken "MyStateToken" # VerifyFactorRequest |  (optional)

# Verify an MFA Factor
try {
    $Result = Test-Factor -UserId $UserId -FactorId $FactorId -TemplateId $TemplateId -TokenLifetimeSeconds $TokenLifetimeSeconds -XForwardedFor $XForwardedFor -UserAgent $UserAgent -AcceptLanguage $AcceptLanguage -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Test-Factor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **FactorId** | **String**|  | 
 **TemplateId** | **String**|  | [optional] 
 **TokenLifetimeSeconds** | **Int32**|  | [optional] [default to 300]
 **XForwardedFor** | **String**|  | [optional] 
 **UserAgent** | **String**|  | [optional] 
 **AcceptLanguage** | **String**|  | [optional] 
 **Body** | [**VerifyFactorRequest**](VerifyFactorRequest.md)|  | [optional] 

### Return type

[**VerifyUserFactorResponse**](VerifyUserFactorResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

