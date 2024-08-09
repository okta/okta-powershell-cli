# Okta.PowerShell.Okta.PowerShell/Api.OktaUserFactorApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateFactor**](OktaUserFactorApi.md#Invoke-OktaActivateFactor) | **POST** /api/v1/users/{userId}/factors/{factorId}/lifecycle/activate | Activate a Factor
[**Invoke-OktaDeleteFactor**](OktaUserFactorApi.md#Invoke-OktaDeleteFactor) | **DELETE** /api/v1/users/{userId}/factors/{factorId} | Delete a Factor
[**Invoke-OktaEnrollFactor**](OktaUserFactorApi.md#Invoke-OktaEnrollFactor) | **POST** /api/v1/users/{userId}/factors | Enroll a Factor
[**Get-OktaFactor**](OktaUserFactorApi.md#Get-OktaFactor) | **GET** /api/v1/users/{userId}/factors/{factorId} | Retrieve a Factor
[**Get-OktaFactorTransactionStatus**](OktaUserFactorApi.md#Get-OktaFactorTransactionStatus) | **GET** /api/v1/users/{userId}/factors/{factorId}/transactions/{transactionId} | Retrieve a Factor Transaction Status
[**Invoke-OktaListFactors**](OktaUserFactorApi.md#Invoke-OktaListFactors) | **GET** /api/v1/users/{userId}/factors | List all Factors
[**Invoke-OktaListSupportedFactors**](OktaUserFactorApi.md#Invoke-OktaListSupportedFactors) | **GET** /api/v1/users/{userId}/factors/catalog | List all Supported Factors
[**Invoke-OktaListSupportedSecurityQuestions**](OktaUserFactorApi.md#Invoke-OktaListSupportedSecurityQuestions) | **GET** /api/v1/users/{userId}/factors/questions | List all Supported Security Questions
[**Invoke-OktaResendEnrollFactor**](OktaUserFactorApi.md#Invoke-OktaResendEnrollFactor) | **POST** /api/v1/users/{userId}/factors/{factorId}/resend | Resend factor enrollment
[**Test-OktaFactor**](OktaUserFactorApi.md#Test-OktaFactor) | **POST** /api/v1/users/{userId}/factors/{factorId}/verify | Verify an MFA Factor


<a id="Invoke-OktaActivateFactor"></a>
# **Invoke-OktaActivateFactor**
> UserFactor Invoke-OktaActivateFactor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Activate a Factor

The `sms` and `token:software:totp` factor types require activation to complete the enrollment process.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$FactorId = "MyFactorId" # String | 
$ActivateFactorRequest = Initialize-ActivateFactorRequest -Attestation "MyAttestation" -ClientData "MyClientData" -PassCode "MyPassCode" -RegistrationData "MyRegistrationData" -StateToken "MyStateToken" # ActivateFactorRequest |  (optional)

# Activate a Factor
try {
    $Result = Invoke-OktaActivateFactor -UserId $UserId -FactorId $FactorId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteFactor"></a>
# **Invoke-OktaDeleteFactor**
> void Invoke-OktaDeleteFactor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveRecoveryEnrollment] <System.Nullable[Boolean]><br>

Delete a Factor

Unenrolls an existing factor for the specified user, allowing the user to enroll a new factor.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$FactorId = "MyFactorId" # String | 
$RemoveRecoveryEnrollment = $true # Boolean |  (optional) (default to $false)

# Delete a Factor
try {
    $Result = Invoke-OktaDeleteFactor -UserId $UserId -FactorId $FactorId -RemoveRecoveryEnrollment $RemoveRecoveryEnrollment
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **FactorId** | **String**|  | 
 **RemoveRecoveryEnrollment** | **Boolean**|  | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaEnrollFactor"></a>
# **Invoke-OktaEnrollFactor**
> UserFactor Invoke-OktaEnrollFactor<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$VerifyFactorRequest = Initialize-VerifyFactorRequest -ActivationToken "MyActivationToken" -Answer "MyAnswer" -Attestation "MyAttestation" -ClientData "MyClientData" -NextPassCode "MyNextPassCode" -PassCode "MyPassCode" -RegistrationData "MyRegistrationData" -StateToken "MyStateToken"
$UserFactor = Initialize-UserFactor -Created (Get-Date) -FactorType "call" -Id "MyId" -LastUpdated (Get-Date) -Provider "CUSTOM" -Status "ACTIVE" -Verify $VerifyFactorRequest -Embedded @{ key_example =  } -Links @{ key_example =  } # UserFactor | Factor
$UpdatePhone = $true # Boolean |  (optional) (default to $false)
$TemplateId = "MyTemplateId" # String | id of SMS template (only for SMS factor) (optional)
$TokenLifetimeSeconds = 56 # Int32 |  (optional) (default to 300)
$Activate = $true # Boolean |  (optional) (default to $false)

# Enroll a Factor
try {
    $Result = Invoke-OktaEnrollFactor -UserId $UserId -Body $Body -UpdatePhone $UpdatePhone -TemplateId $TemplateId -TokenLifetimeSeconds $TokenLifetimeSeconds -Activate $Activate
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaEnrollFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaFactor"></a>
# **Get-OktaFactor**
> UserFactor Get-OktaFactor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>

Retrieve a Factor

Fetches a factor for the specified user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$FactorId = "MyFactorId" # String | 

# Retrieve a Factor
try {
    $Result = Get-OktaFactor -UserId $UserId -FactorId $FactorId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaFactorTransactionStatus"></a>
# **Get-OktaFactorTransactionStatus**
> VerifyUserFactorResponse Get-OktaFactorTransactionStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TransactionId] <String><br>

Retrieve a Factor Transaction Status

Polls factors verification transaction for status.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$FactorId = "MyFactorId" # String | 
$TransactionId = "MyTransactionId" # String | 

# Retrieve a Factor Transaction Status
try {
    $Result = Get-OktaFactorTransactionStatus -UserId $UserId -FactorId $FactorId -TransactionId $TransactionId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaFactorTransactionStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListFactors"></a>
# **Invoke-OktaListFactors**
> UserFactor[] Invoke-OktaListFactors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Factors

Enumerates all the enrolled factors for the specified user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# List all Factors
try {
    $Result = Invoke-OktaListFactors -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListFactors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListSupportedFactors"></a>
# **Invoke-OktaListSupportedFactors**
> UserFactor[] Invoke-OktaListSupportedFactors<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Supported Factors

Enumerates all the supported factors that can be enrolled for the specified user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 

# List all Supported Factors
try {
    $Result = Invoke-OktaListSupportedFactors -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListSupportedFactors: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListSupportedSecurityQuestions"></a>
# **Invoke-OktaListSupportedSecurityQuestions**
> SecurityQuestion[] Invoke-OktaListSupportedSecurityQuestions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

List all Supported Security Questions

Enumerates all available security questions for a user's `question` factor

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

$UserId = "MyUserId" # String | 

# List all Supported Security Questions
try {
    $Result = Invoke-OktaListSupportedSecurityQuestions -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListSupportedSecurityQuestions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaResendEnrollFactor"></a>
# **Invoke-OktaResendEnrollFactor**
> UserFactor Invoke-OktaResendEnrollFactor<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FactorId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserFactor] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateId] <String><br>

Resend factor enrollment

Resends a factor challenge (SMS/call/email OTP) as part of an enrollment flow. The current rate limit is one OTP challenge (call or SMS) per device every 30 seconds. Okta round-robins between SMS providers with every resend request to help ensure delivery of an SMS OTP across different carriers.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$UserId = "MyUserId" # String | 
$FactorId = "MyFactorId" # String | 
$VerifyFactorRequest = Initialize-VerifyFactorRequest -ActivationToken "MyActivationToken" -Answer "MyAnswer" -Attestation "MyAttestation" -ClientData "MyClientData" -NextPassCode "MyNextPassCode" -PassCode "MyPassCode" -RegistrationData "MyRegistrationData" -StateToken "MyStateToken"
$UserFactor = Initialize-UserFactor -Created (Get-Date) -FactorType "call" -Id "MyId" -LastUpdated (Get-Date) -Provider "CUSTOM" -Status "ACTIVE" -Verify $VerifyFactorRequest -Embedded @{ key_example =  } -Links @{ key_example =  } # UserFactor | Factor
$TemplateId = "MyTemplateId" # String | id of SMS template (only for SMS factor) (optional)

# Resend factor enrollment
try {
    $Result = Invoke-OktaResendEnrollFactor -UserId $UserId -FactorId $FactorId -UserFactor $UserFactor -TemplateId $TemplateId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaResendEnrollFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserId** | **String**|  | 
 **FactorId** | **String**|  | 
 **UserFactor** | [**UserFactor**](UserFactor.md)| Factor | 
 **TemplateId** | **String**| id of SMS template (only for SMS factor) | [optional] 

### Return type

[**UserFactor**](UserFactor.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-OktaFactor"></a>
# **Test-OktaFactor**
> VerifyUserFactorResponse Test-OktaFactor<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

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
    $Result = Test-OktaFactor -UserId $UserId -FactorId $FactorId -TemplateId $TemplateId -TokenLifetimeSeconds $TokenLifetimeSeconds -XForwardedFor $XForwardedFor -UserAgent $UserAgent -AcceptLanguage $AcceptLanguage -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Test-OktaFactor: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

