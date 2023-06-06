# PSOpenAPITools.PSOpenAPITools\Api.ResourceSetApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-MembersToBinding**](ResourceSetApi.md#Add-MembersToBinding) | **PATCH** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members | Add more Members to a binding
[**Add-ResourceSetResource**](ResourceSetApi.md#Add-ResourceSetResource) | **PATCH** /api/v1/iam/resource-sets/{resourceSetId}/resources | Add a Resource to a resource set
[**New-ResourceSet**](ResourceSetApi.md#New-ResourceSet) | **POST** /api/v1/iam/resource-sets | Create a Resource Set
[**New-ResourceSetBinding**](ResourceSetApi.md#New-ResourceSetBinding) | **POST** /api/v1/iam/resource-sets/{resourceSetId}/bindings | Create a Resource Set Binding
[**Invoke-DeleteBinding**](ResourceSetApi.md#Invoke-DeleteBinding) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel} | Delete a Binding
[**Invoke-DeleteResourceSet**](ResourceSetApi.md#Invoke-DeleteResourceSet) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId} | Delete a Resource Set
[**Invoke-DeleteResourceSetResource**](ResourceSetApi.md#Invoke-DeleteResourceSetResource) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/resources/{resourceId} | Delete a Resource from a resource set
[**Get-Binding**](ResourceSetApi.md#Get-Binding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel} | Retrieve a Binding
[**Get-MemberOfBinding**](ResourceSetApi.md#Get-MemberOfBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members/{memberId} | Retrieve a Member of a binding
[**Get-ResourceSet**](ResourceSetApi.md#Get-ResourceSet) | **GET** /api/v1/iam/resource-sets/{resourceSetId} | Retrieve a Resource Set
[**Invoke-ListBindings**](ResourceSetApi.md#Invoke-ListBindings) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings | List all Bindings
[**Invoke-ListMembersOfBinding**](ResourceSetApi.md#Invoke-ListMembersOfBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members | List all Members of a binding
[**Invoke-ListResourceSetResources**](ResourceSetApi.md#Invoke-ListResourceSetResources) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/resources | List all Resources of a resource set
[**Invoke-ListResourceSets**](ResourceSetApi.md#Invoke-ListResourceSets) | **GET** /api/v1/iam/resource-sets | List all Resource Sets
[**Invoke-ReplaceResourceSet**](ResourceSetApi.md#Invoke-ReplaceResourceSet) | **PUT** /api/v1/iam/resource-sets/{resourceSetId} | Replace a Resource Set
[**Invoke-UnassignMemberFromBinding**](ResourceSetApi.md#Invoke-UnassignMemberFromBinding) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members/{memberId} | Unassign a Member from a binding


<a name="Add-MembersToBinding"></a>
# **Add-MembersToBinding**
> ResourceSetBindingResponse Add-MembersToBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Add more Members to a binding

Adds more members to a resource set binding

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$ResourceSetBindingAddMembersRequest = Initialize-ResourceSetBindingAddMembersRequest -Additions "MyAdditions" # ResourceSetBindingAddMembersRequest | 

# Add more Members to a binding
try {
    $Result = Add-MembersToBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Add-MembersToBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **Instance** | [**ResourceSetBindingAddMembersRequest**](ResourceSetBindingAddMembersRequest.md)|  | 

### Return type

[**ResourceSetBindingResponse**](ResourceSetBindingResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-ResourceSetResource"></a>
# **Add-ResourceSetResource**
> ResourceSet Add-ResourceSetResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Add a Resource to a resource set

Adds more resources to a resource set

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$ResourceSetResourcePatchRequest = Initialize-ResourceSetResourcePatchRequest -Additions "MyAdditions" # ResourceSetResourcePatchRequest | 

# Add a Resource to a resource set
try {
    $Result = Add-ResourceSetResource -ResourceSetId $ResourceSetId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Add-ResourceSetResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **Instance** | [**ResourceSetResourcePatchRequest**](ResourceSetResourcePatchRequest.md)|  | 

### Return type

[**ResourceSet**](ResourceSet.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-ResourceSet"></a>
# **New-ResourceSet**
> ResourceSet New-ResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Resource Set

Creates a new resource set

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

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ResourceSetLinks = Initialize-ResourceSetLinks -Self $HrefObject -Resources $HrefObject -Bindings $HrefObject

$ResourceSet = Initialize-ResourceSet -Created (Get-Date) -Description "MyDescription" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Links $ResourceSetLinks # ResourceSet | 

# Create a Resource Set
try {
    $Result = New-ResourceSet -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-ResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**ResourceSet**](ResourceSet.md)|  | 

### Return type

[**ResourceSet**](ResourceSet.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-ResourceSetBinding"></a>
# **New-ResourceSetBinding**
> ResourceSetBindingResponse New-ResourceSetBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Resource Set Binding

Creates a new resource set binding

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$ResourceSetBindingCreateRequest = Initialize-ResourceSetBindingCreateRequest -Members "MyMembers" -Role "MyRole" # ResourceSetBindingCreateRequest | 

# Create a Resource Set Binding
try {
    $Result = New-ResourceSetBinding -ResourceSetId $ResourceSetId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-ResourceSetBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **Instance** | [**ResourceSetBindingCreateRequest**](ResourceSetBindingCreateRequest.md)|  | 

### Return type

[**ResourceSetBindingResponse**](ResourceSetBindingResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteBinding"></a>
# **Invoke-DeleteBinding**
> void Invoke-DeleteBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Delete a Binding

Deletes a resource set binding by `resourceSetId` and `roleIdOrLabel`

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Delete a Binding
try {
    $Result = Invoke-DeleteBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteResourceSet"></a>
# **Invoke-DeleteResourceSet**
> void Invoke-DeleteResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>

Delete a Resource Set

Deletes a role by `resourceSetId`

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set

# Delete a Resource Set
try {
    $Result = Invoke-DeleteResourceSet -ResourceSetId $ResourceSetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteResourceSetResource"></a>
# **Invoke-DeleteResourceSetResource**
> void Invoke-DeleteResourceSetResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceId] <String><br>

Delete a Resource from a resource set

Deletes a resource identified by `resourceId` from a resource set

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$ResourceId = "ire106sQKoHoXXsAe0g4" # String | `id` of a resource

# Delete a Resource from a resource set
try {
    $Result = Invoke-DeleteResourceSetResource -ResourceSetId $ResourceSetId -ResourceId $ResourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteResourceSetResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **ResourceId** | **String**| &#x60;id&#x60; of a resource | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Binding"></a>
# **Get-Binding**
> ResourceSetBindingResponse Get-Binding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Retrieve a Binding

Retrieves a resource set binding by `resourceSetId` and `roleIdOrLabel`

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Retrieve a Binding
try {
    $Result = Get-Binding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Get-Binding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 

### Return type

[**ResourceSetBindingResponse**](ResourceSetBindingResponse.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-MemberOfBinding"></a>
# **Get-MemberOfBinding**
> ResourceSetBindingMember Get-MemberOfBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberId] <String><br>

Retrieve a Member of a binding

Retreieves a member identified by `memberId` for a binding

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$MemberId = "irb1qe6PGuMc7Oh8N0g4" # String | `id` of a member

# Retrieve a Member of a binding
try {
    $Result = Get-MemberOfBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -MemberId $MemberId
} catch {
    Write-Host ("Exception occurred when calling Get-MemberOfBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **MemberId** | **String**| &#x60;id&#x60; of a member | 

### Return type

[**ResourceSetBindingMember**](ResourceSetBindingMember.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ResourceSet"></a>
# **Get-ResourceSet**
> ResourceSet Get-ResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>

Retrieve a Resource Set

Retrieve a resource set by `resourceSetId`

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set

# Retrieve a Resource Set
try {
    $Result = Get-ResourceSet -ResourceSetId $ResourceSetId
} catch {
    Write-Host ("Exception occurred when calling Get-ResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 

### Return type

[**ResourceSet**](ResourceSet.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListBindings"></a>
# **Invoke-ListBindings**
> ResourceSetBindings Invoke-ListBindings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Bindings

Lists all resource set bindings with pagination support

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Bindings
try {
    $Result = Invoke-ListBindings -ResourceSetId $ResourceSetId -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListBindings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 

### Return type

[**ResourceSetBindings**](ResourceSetBindings.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListMembersOfBinding"></a>
# **Invoke-ListMembersOfBinding**
> ResourceSetBindingMembers Invoke-ListMembersOfBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Members of a binding

Lists all members of a resource set binding with pagination support

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Members of a binding
try {
    $Result = Invoke-ListMembersOfBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListMembersOfBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 

### Return type

[**ResourceSetBindingMembers**](ResourceSetBindingMembers.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListResourceSetResources"></a>
# **Invoke-ListResourceSetResources**
> ResourceSetResources Invoke-ListResourceSetResources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>

List all Resources of a resource set

Lists all resources that make up the resource set

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set

# List all Resources of a resource set
try {
    $Result = Invoke-ListResourceSetResources -ResourceSetId $ResourceSetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListResourceSetResources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 

### Return type

[**ResourceSetResources**](ResourceSetResources.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListResourceSets"></a>
# **Invoke-ListResourceSets**
> ResourceSets Invoke-ListResourceSets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Resource Sets

Lists all resource sets with pagination support

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

$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Resource Sets
try {
    $Result = Invoke-ListResourceSets -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListResourceSets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 

### Return type

[**ResourceSets**](ResourceSets.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReplaceResourceSet"></a>
# **Invoke-ReplaceResourceSet**
> ResourceSet Invoke-ReplaceResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a Resource Set

Replaces a resource set by `resourceSetId`

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ResourceSetLinks = Initialize-ResourceSetLinks -Self $HrefObject -Resources $HrefObject -Bindings $HrefObject

$ResourceSet = Initialize-ResourceSet -Created (Get-Date) -Description "MyDescription" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Links $ResourceSetLinks # ResourceSet | 

# Replace a Resource Set
try {
    $Result = Invoke-ReplaceResourceSet -ResourceSetId $ResourceSetId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReplaceResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **Instance** | [**ResourceSet**](ResourceSet.md)|  | 

### Return type

[**ResourceSet**](ResourceSet.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UnassignMemberFromBinding"></a>
# **Invoke-UnassignMemberFromBinding**
> void Invoke-UnassignMemberFromBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberId] <String><br>

Unassign a Member from a binding

Unassigns a member identified by `memberId` from a binding

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

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$MemberId = "irb1qe6PGuMc7Oh8N0g4" # String | `id` of a member

# Unassign a Member from a binding
try {
    $Result = Invoke-UnassignMemberFromBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -MemberId $MemberId
} catch {
    Write-Host ("Exception occurred when calling Invoke-UnassignMemberFromBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ResourceSetId** | **String**| &#x60;id&#x60; of a resource set | 
 **RoleIdOrLabel** | **String**| &#x60;id&#x60; or &#x60;label&#x60; of the role | 
 **MemberId** | **String**| &#x60;id&#x60; of a member | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

