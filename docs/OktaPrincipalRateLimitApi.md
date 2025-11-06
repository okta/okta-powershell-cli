# Okta.PowerShell.Okta.PowerShell\Api.OktaPrincipalRateLimitApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OktaPrincipalRateLimitEntity**](OktaPrincipalRateLimitApi.md#New-OktaPrincipalRateLimitEntity) | **POST** /api/v1/principal-rate-limits | Create a Principal Rate Limit
[**Get-OktaPrincipalRateLimitEntity**](OktaPrincipalRateLimitApi.md#Get-OktaPrincipalRateLimitEntity) | **GET** /api/v1/principal-rate-limits/{principalRateLimitId} | Retrieve a Principal Rate Limit
[**Invoke-OktaListPrincipalRateLimitEntities**](OktaPrincipalRateLimitApi.md#Invoke-OktaListPrincipalRateLimitEntities) | **GET** /api/v1/principal-rate-limits | List all Principal Rate Limits
[**Update-OktaPrincipalRateLimitEntity**](OktaPrincipalRateLimitApi.md#Update-OktaPrincipalRateLimitEntity) | **PUT** /api/v1/principal-rate-limits/{principalRateLimitId} | Replace a Principal Rate Limit


<a id="New-OktaPrincipalRateLimitEntity"></a>
# **New-OktaPrincipalRateLimitEntity**
> PrincipalRateLimitEntity New-OktaPrincipalRateLimitEntity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Entity] <PSCustomObject><br>

Create a Principal Rate Limit

Adds a new Principal Rate Limit entity to your organization. In the current release, we only allow one Principal Rate Limit entity per org and principal.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PrincipalRateLimitEntity = Initialize-OktaPrincipalRateLimitEntity -CreatedBy "MyCreatedBy" -CreatedDate (Get-Date) -DefaultConcurrencyPercentage 0 -DefaultPercentage 0 -Id "MyId" -LastUpdate (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -OrgId "MyOrgId" -PrincipalId "MyPrincipalId" -PrincipalType "SSWS_TOKEN" # PrincipalRateLimitEntity | 

# Create a Principal Rate Limit
try {
    $Result = New-OktaPrincipalRateLimitEntity -Entity $Entity
} catch {
    Write-Host ("Exception occurred when calling New-OktaPrincipalRateLimitEntity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaPrincipalRateLimitEntity"></a>
# **Get-OktaPrincipalRateLimitEntity**
> PrincipalRateLimitEntity Get-OktaPrincipalRateLimitEntity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrincipalRateLimitId] <String><br>

Retrieve a Principal Rate Limit

Fetches a Principal Rate Limit entity by `principalRateLimitId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PrincipalRateLimitId = "abcd1234" # String | id of the Principal Rate Limit

# Retrieve a Principal Rate Limit
try {
    $Result = Get-OktaPrincipalRateLimitEntity -PrincipalRateLimitId $PrincipalRateLimitId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaPrincipalRateLimitEntity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListPrincipalRateLimitEntities"></a>
# **Invoke-OktaListPrincipalRateLimitEntities**
> PrincipalRateLimitEntity[] Invoke-OktaListPrincipalRateLimitEntities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Principal Rate Limits

Lists all Principal Rate Limit entities considering the provided parameters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Filter = "MyFilter" # String |  (optional)
$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to 20)

# List all Principal Rate Limits
try {
    $Result = Invoke-OktaListPrincipalRateLimitEntities -Filter $Filter -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListPrincipalRateLimitEntities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaPrincipalRateLimitEntity"></a>
# **Update-OktaPrincipalRateLimitEntity**
> PrincipalRateLimitEntity Update-OktaPrincipalRateLimitEntity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PrincipalRateLimitId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Entity] <PSCustomObject><br>

Replace a Principal Rate Limit

Update a  Principal Rate Limit entity by `principalRateLimitId`.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$PrincipalRateLimitId = "abcd1234" # String | id of the Principal Rate Limit
$PrincipalRateLimitEntity = Initialize-OktaPrincipalRateLimitEntity -CreatedBy "MyCreatedBy" -CreatedDate (Get-Date) -DefaultConcurrencyPercentage 0 -DefaultPercentage 0 -Id "MyId" -LastUpdate (Get-Date) -LastUpdatedBy "MyLastUpdatedBy" -OrgId "MyOrgId" -PrincipalId "MyPrincipalId" -PrincipalType "SSWS_TOKEN" # PrincipalRateLimitEntity | 

# Replace a Principal Rate Limit
try {
    $Result = Update-OktaPrincipalRateLimitEntity -PrincipalRateLimitId $PrincipalRateLimitId -Entity $Entity
} catch {
    Write-Host ("Exception occurred when calling Update-OktaPrincipalRateLimitEntity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

