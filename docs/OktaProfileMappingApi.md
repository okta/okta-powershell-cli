# Okta.PowerShell.Okta.PowerShell/Api.OktaProfileMappingApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OktaProfileMapping**](OktaProfileMappingApi.md#Get-OktaProfileMapping) | **GET** /api/v1/mappings/{mappingId} | Retrieve a Profile Mapping
[**Invoke-OktaListProfileMappings**](OktaProfileMappingApi.md#Invoke-OktaListProfileMappings) | **GET** /api/v1/mappings | List all Profile Mappings
[**Update-OktaProfileMapping**](OktaProfileMappingApi.md#Update-OktaProfileMapping) | **POST** /api/v1/mappings/{mappingId} | Update a Profile Mapping


<a id="Get-OktaProfileMapping"></a>
# **Get-OktaProfileMapping**
> ProfileMapping Get-OktaProfileMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingId] <String><br>

Retrieve a Profile Mapping

Fetches a single Profile Mapping referenced by its ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$MappingId = "MyMappingId" # String | 

# Retrieve a Profile Mapping
try {
    $Result = Get-OktaProfileMapping -MappingId $MappingId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaProfileMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListProfileMappings"></a>
# **Invoke-OktaListProfileMappings**
> ProfileMapping[] Invoke-OktaListProfileMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetId] <String><br>

List all Profile Mappings

Enumerates Profile Mappings in your organization with pagination.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String |  (optional)
$Limit = 56 # Int32 |  (optional) (default to -1)
$SourceId = "MySourceId" # String |  (optional)
$TargetId = "MyTargetId" # String |  (optional) (default to "")

# List all Profile Mappings
try {
    $Result = Invoke-OktaListProfileMappings -After $After -Limit $Limit -SourceId $SourceId -TargetId $TargetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListProfileMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaProfileMapping"></a>
# **Update-OktaProfileMapping**
> ProfileMapping Update-OktaProfileMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProfileMapping] <PSCustomObject><br>

Update a Profile Mapping

Updates an existing Profile Mapping by adding, updating, or removing one or many Property Mappings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$MappingId = "MyMappingId" # String | 
$ProfileMappingProperty = Initialize-ProfileMappingProperty -Expression "MyExpression" -PushStatus "DONT_PUSH"
$ProfileMappingSource = Initialize-ProfileMappingSource -Id "MyId" -Name "MyName" -Type "MyType" -Links @{ key_example =  }
$ProfileMapping = Initialize-ProfileMapping -Id "MyId" -Properties @{ key_example = $ProfileMappingProperty } -Source $ProfileMappingSource -Target $ProfileMappingSource -Links @{ key_example =  } # ProfileMapping | 

# Update a Profile Mapping
try {
    $Result = Update-OktaProfileMapping -MappingId $MappingId -ProfileMapping $ProfileMapping
} catch {
    Write-Host ("Exception occurred when calling Update-OktaProfileMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

