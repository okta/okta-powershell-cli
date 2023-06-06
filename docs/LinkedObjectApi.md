# PSOpenAPITools.PSOpenAPITools\Api.LinkedObjectApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-LinkedObjectDefinition**](LinkedObjectApi.md#Add-LinkedObjectDefinition) | **POST** /api/v1/meta/schemas/user/linkedObjects | Create a Linked Object Definition
[**Invoke-DeleteLinkedObjectDefinition**](LinkedObjectApi.md#Invoke-DeleteLinkedObjectDefinition) | **DELETE** /api/v1/meta/schemas/user/linkedObjects/{linkedObjectName} | Delete a Linked Object Definition
[**Get-LinkedObjectDefinition**](LinkedObjectApi.md#Get-LinkedObjectDefinition) | **GET** /api/v1/meta/schemas/user/linkedObjects/{linkedObjectName} | Retrieve a Linked Object Definition
[**Invoke-ListLinkedObjectDefinitions**](LinkedObjectApi.md#Invoke-ListLinkedObjectDefinitions) | **GET** /api/v1/meta/schemas/user/linkedObjects | List all Linked Object Definitions


<a name="Add-LinkedObjectDefinition"></a>
# **Add-LinkedObjectDefinition**
> LinkedObject Add-LinkedObjectDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkedObject] <PSCustomObject><br>

Create a Linked Object Definition

Create a linked object definition

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

$LinkedObjectDetails = Initialize-LinkedObjectDetails -Description "MyDescription" -Name "MyName" -Title "MyTitle" -Type "USER"
$LinkedObject = Initialize-LinkedObject -Associated $LinkedObjectDetails -Primary $LinkedObjectDetails -Links @{ key_example =  } # LinkedObject | 

# Create a Linked Object Definition
try {
    $Result = Add-LinkedObjectDefinition -LinkedObject $LinkedObject
} catch {
    Write-Host ("Exception occurred when calling Add-LinkedObjectDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LinkedObject** | [**LinkedObject**](LinkedObject.md)|  | 

### Return type

[**LinkedObject**](LinkedObject.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteLinkedObjectDefinition"></a>
# **Invoke-DeleteLinkedObjectDefinition**
> void Invoke-DeleteLinkedObjectDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkedObjectName] <String><br>

Delete a Linked Object Definition

Delete a linked object definition

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

$LinkedObjectName = "MyLinkedObjectName" # String | 

# Delete a Linked Object Definition
try {
    $Result = Invoke-DeleteLinkedObjectDefinition -LinkedObjectName $LinkedObjectName
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteLinkedObjectDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LinkedObjectName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-LinkedObjectDefinition"></a>
# **Get-LinkedObjectDefinition**
> LinkedObject Get-LinkedObjectDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkedObjectName] <String><br>

Retrieve a Linked Object Definition

Retrieve a linked object definition

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

$LinkedObjectName = "MyLinkedObjectName" # String | 

# Retrieve a Linked Object Definition
try {
    $Result = Get-LinkedObjectDefinition -LinkedObjectName $LinkedObjectName
} catch {
    Write-Host ("Exception occurred when calling Get-LinkedObjectDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LinkedObjectName** | **String**|  | 

### Return type

[**LinkedObject**](LinkedObject.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListLinkedObjectDefinitions"></a>
# **Invoke-ListLinkedObjectDefinitions**
> LinkedObject[] Invoke-ListLinkedObjectDefinitions<br>

List all Linked Object Definitions

List all linked object definitions

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


# List all Linked Object Definitions
try {
    $Result = Invoke-ListLinkedObjectDefinitions
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListLinkedObjectDefinitions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LinkedObject[]**](LinkedObject.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

