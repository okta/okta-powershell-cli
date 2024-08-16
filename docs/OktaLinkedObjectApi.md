# Okta.PowerShell.Okta.PowerShell\Api.OktaLinkedObjectApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-OktaLinkedObjectDefinition**](OktaLinkedObjectApi.md#Add-OktaLinkedObjectDefinition) | **POST** /api/v1/meta/schemas/user/linkedObjects | Create a Linked Object Definition
[**Invoke-OktaDeleteLinkedObjectDefinition**](OktaLinkedObjectApi.md#Invoke-OktaDeleteLinkedObjectDefinition) | **DELETE** /api/v1/meta/schemas/user/linkedObjects/{linkedObjectName} | Delete a Linked Object Definition
[**Get-OktaLinkedObjectDefinition**](OktaLinkedObjectApi.md#Get-OktaLinkedObjectDefinition) | **GET** /api/v1/meta/schemas/user/linkedObjects/{linkedObjectName} | Retrieve a Linked Object Definition
[**Invoke-OktaListLinkedObjectDefinitions**](OktaLinkedObjectApi.md#Invoke-OktaListLinkedObjectDefinitions) | **GET** /api/v1/meta/schemas/user/linkedObjects | List all Linked Object Definitions


<a id="Add-OktaLinkedObjectDefinition"></a>
# **Add-OktaLinkedObjectDefinition**
> LinkedObject Add-OktaLinkedObjectDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkedObject] <PSCustomObject><br>

Create a Linked Object Definition

Create a linked object definition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$LinkedObjectDetails = Initialize-LinkedObjectDetails -Description "MyDescription" -Name "MyName" -Title "MyTitle" -Type "USER"
$LinkedObject = Initialize-LinkedObject -Associated $LinkedObjectDetails -Primary $LinkedObjectDetails -Links @{ key_example =  } # LinkedObject | 

# Create a Linked Object Definition
try {
    $Result = Add-OktaLinkedObjectDefinition -LinkedObject $LinkedObject
} catch {
    Write-Host ("Exception occurred when calling Add-OktaLinkedObjectDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteLinkedObjectDefinition"></a>
# **Invoke-OktaDeleteLinkedObjectDefinition**
> void Invoke-OktaDeleteLinkedObjectDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkedObjectName] <String><br>

Delete a Linked Object Definition

Delete a linked object definition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$LinkedObjectName = "MyLinkedObjectName" # String | 

# Delete a Linked Object Definition
try {
    $Result = Invoke-OktaDeleteLinkedObjectDefinition -LinkedObjectName $LinkedObjectName
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteLinkedObjectDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaLinkedObjectDefinition"></a>
# **Get-OktaLinkedObjectDefinition**
> LinkedObject Get-OktaLinkedObjectDefinition<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LinkedObjectName] <String><br>

Retrieve a Linked Object Definition

Retrieve a linked object definition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$LinkedObjectName = "MyLinkedObjectName" # String | 

# Retrieve a Linked Object Definition
try {
    $Result = Get-OktaLinkedObjectDefinition -LinkedObjectName $LinkedObjectName
} catch {
    Write-Host ("Exception occurred when calling Get-OktaLinkedObjectDefinition: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListLinkedObjectDefinitions"></a>
# **Invoke-OktaListLinkedObjectDefinitions**
> LinkedObject[] Invoke-OktaListLinkedObjectDefinitions<br>

List all Linked Object Definitions

List all linked object definitions

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read


# List all Linked Object Definitions
try {
    $Result = Invoke-OktaListLinkedObjectDefinitions
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListLinkedObjectDefinitions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

