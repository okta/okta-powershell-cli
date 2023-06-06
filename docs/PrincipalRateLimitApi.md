# PSOpenAPITools.PSOpenAPITools\Api.PrincipalRateLimitApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PrincipalRateLimitEntity**](PrincipalRateLimitApi.md#New-PrincipalRateLimitEntity) | **POST** /api/v1/principal-rate-limits | Create a Principal Rate Limit
[**Get-PrincipalRateLimitEntity**](PrincipalRateLimitApi.md#Get-PrincipalRateLimitEntity) | **GET** /api/v1/principal-rate-limits/{principalRateLimitId} | Retrieve a Principal Rate Limit
[**Invoke-ListPrincipalRateLimitEntities**](PrincipalRateLimitApi.md#Invoke-ListPrincipalRateLimitEntities) | **GET** /api/v1/principal-rate-limits | List all Principal Rate Limits
[**Update-PrincipalRateLimitEntity**](PrincipalRateLimitApi.md#Update-PrincipalRateLimitEntity) | **PUT** /api/v1/principal-rate-limits/{principalRateLimitId} | Replace a Principal Rate Limit


<a name="New-PrincipalRateLimitEntity"></a>
# **New-PrincipalRateLimitEntity**
> PrincipalRateLimitEntity New-PrincipalRateLimitEntity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Entity] <PSCustomObject><br>

Create a Principal Rate Limit

Adds a new Principal Rate Limit entity to your organization. In the current release, we only allow one Principal Rate Limit entity per org and principal.

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

$PrincipalRateLimitEntity = Initialize-PrincipalRateLimitEntity -CreatedBy "MyCreatedBy" -CreatedDate (Get-Date) -DefaultConcurrencyPercentage 0 -DefaultPercentage 0 -Id "MyId" -LastUpdate (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -OrgId "MyOrgId" -PrincipalId "MyPrincipalId" -PrincipalType "SSWS_TOKEN" # PrincipalRateLimitEntity | 

# Create a Principal Rate Limit
try {
    $Result = New-PrincipalRateLimitEntity -Entity $Entity
} catch {
    Write-Host ("Exception occurred when calling New-PrincipalRateLimitEntity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Entity** | [**PrincipalRateLimitEntity**](PrincipalRateLimitEntity.md)|  | 

### Return type

[**PrincipalRateLimitEntity**](PrincipalRateLimitEntity.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PrincipalRateLimitEntity"></a>
# **Get-PrincipalRateLimitEntity**
> PrincipalRateLimitEntity Get-PrincipalRateLimitEntity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrincipalRateLimitId] <String><br>

Retrieve a Principal Rate Limit

Fetches a Principal Rate Limit entity by `principalRateLimitId`.

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

$PrincipalRateLimitId = "abcd1234" # String | id of the Principal Rate Limit

# Retrieve a Principal Rate Limit
try {
    $Result = Get-PrincipalRateLimitEntity -PrincipalRateLimitId $PrincipalRateLimitId
} catch {
    Write-Host ("Exception occurred when calling Get-PrincipalRateLimitEntity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PrincipalRateLimitId** | **String**| id of the Principal Rate Limit | 

### Return type

[**PrincipalRateLimitEntity**](PrincipalRateLimitEntity.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListPrincipalRateLimitEntities"></a>
# **Invoke-ListPrincipalRateLimitEntities**
> PrincipalRateLimitEntity[] Invoke-ListPrincipalRateLimitEntities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Principal Rate Limits

Lists all Principal Rate Limit entities considering the provided parameters.

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

$Filter = "MyFilter" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Principal Rate Limits
try {
    $Result = Invoke-ListPrincipalRateLimitEntities -Filter $Filter -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListPrincipalRateLimitEntities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**|  | [optional] 
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to 20]

### Return type

[**PrincipalRateLimitEntity[]**](PrincipalRateLimitEntity.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-PrincipalRateLimitEntity"></a>
# **Update-PrincipalRateLimitEntity**
> PrincipalRateLimitEntity Update-PrincipalRateLimitEntity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrincipalRateLimitId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Entity] <PSCustomObject><br>

Replace a Principal Rate Limit

Update a  Principal Rate Limit entity by `principalRateLimitId`.

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

$PrincipalRateLimitId = "abcd1234" # String | id of the Principal Rate Limit
$PrincipalRateLimitEntity = Initialize-PrincipalRateLimitEntity -CreatedBy "MyCreatedBy" -CreatedDate (Get-Date) -DefaultConcurrencyPercentage 0 -DefaultPercentage 0 -Id "MyId" -LastUpdate (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -OrgId "MyOrgId" -PrincipalId "MyPrincipalId" -PrincipalType "SSWS_TOKEN" # PrincipalRateLimitEntity | 

# Replace a Principal Rate Limit
try {
    $Result = Update-PrincipalRateLimitEntity -PrincipalRateLimitId $PrincipalRateLimitId -Entity $Entity
} catch {
    Write-Host ("Exception occurred when calling Update-PrincipalRateLimitEntity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PrincipalRateLimitId** | **String**| id of the Principal Rate Limit | 
 **Entity** | [**PrincipalRateLimitEntity**](PrincipalRateLimitEntity.md)|  | 

### Return type

[**PrincipalRateLimitEntity**](PrincipalRateLimitEntity.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

