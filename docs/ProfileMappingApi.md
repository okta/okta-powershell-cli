# PSOpenAPITools.PSOpenAPITools\Api.ProfileMappingApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ProfileMapping**](ProfileMappingApi.md#Get-ProfileMapping) | **GET** /api/v1/mappings/{mappingId} | Retrieve a Profile Mapping
[**Invoke-ListProfileMappings**](ProfileMappingApi.md#Invoke-ListProfileMappings) | **GET** /api/v1/mappings | List all Profile Mappings
[**Update-ProfileMapping**](ProfileMappingApi.md#Update-ProfileMapping) | **POST** /api/v1/mappings/{mappingId} | Update a Profile Mapping


<a name="Get-ProfileMapping"></a>
# **Get-ProfileMapping**
> ProfileMapping Get-ProfileMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingId] <String><br>

Retrieve a Profile Mapping

Fetches a single Profile Mapping referenced by its ID.

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

$MappingId = "MyMappingId" # String | 

# Retrieve a Profile Mapping
try {
    $Result = Get-ProfileMapping -MappingId $MappingId
} catch {
    Write-Host ("Exception occurred when calling Get-ProfileMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MappingId** | **String**|  | 

### Return type

[**ProfileMapping**](ProfileMapping.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListProfileMappings"></a>
# **Invoke-ListProfileMappings**
> ProfileMapping[] Invoke-ListProfileMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetId] <String><br>

List all Profile Mappings

Enumerates Profile Mappings in your organization with pagination.

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

$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)
$SourceId = "MySourceId" # String |  (optional)
$TargetId = "MyTargetId" # String |  (optional) (default to "")

# List all Profile Mappings
try {
    $Result = Invoke-ListProfileMappings -After $After -Limit $Limit -SourceId $SourceId -TargetId $TargetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListProfileMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**|  | [optional] 
 **Limit** | **Int32**|  | [optional] [default to -1]
 **SourceId** | **String**|  | [optional] 
 **TargetId** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**ProfileMapping[]**](ProfileMapping.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-ProfileMapping"></a>
# **Update-ProfileMapping**
> ProfileMapping Update-ProfileMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileMapping] <PSCustomObject><br>

Update a Profile Mapping

Updates an existing Profile Mapping by adding, updating, or removing one or many Property Mappings.

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

$MappingId = "MyMappingId" # String | 
$ProfileMappingProperty = Initialize-ProfileMappingProperty -Expression "MyExpression" -PushStatus "DONT_PUSH"
$ProfileMappingSource = Initialize-ProfileMappingSource -Id "MyId" -Name "MyName" -Type "MyType" -Links @{ key_example =  }
$ProfileMapping = Initialize-ProfileMapping -Id "MyId" -Properties @{ key_example = $ProfileMappingProperty } -Source $ProfileMappingSource -Target $ProfileMappingSource -Links @{ key_example =  } # ProfileMapping | 

# Update a Profile Mapping
try {
    $Result = Update-ProfileMapping -MappingId $MappingId -ProfileMapping $ProfileMapping
} catch {
    Write-Host ("Exception occurred when calling Update-ProfileMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MappingId** | **String**|  | 
 **ProfileMapping** | [**ProfileMapping**](ProfileMapping.md)|  | 

### Return type

[**ProfileMapping**](ProfileMapping.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

