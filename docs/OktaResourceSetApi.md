# Okta.PowerShell.Okta.PowerShell/Api.OktaResourceSetApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-OktaMembersToBinding**](OktaResourceSetApi.md#Add-OktaMembersToBinding) | **PATCH** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members | Add more Members to a binding
[**Add-OktaResourceSetResource**](OktaResourceSetApi.md#Add-OktaResourceSetResource) | **PATCH** /api/v1/iam/resource-sets/{resourceSetId}/resources | Add a Resource to a resource set
[**New-OktaResourceSet**](OktaResourceSetApi.md#New-OktaResourceSet) | **POST** /api/v1/iam/resource-sets | Create a Resource Set
[**New-OktaResourceSetBinding**](OktaResourceSetApi.md#New-OktaResourceSetBinding) | **POST** /api/v1/iam/resource-sets/{resourceSetId}/bindings | Create a Resource Set Binding
[**Invoke-OktaDeleteBinding**](OktaResourceSetApi.md#Invoke-OktaDeleteBinding) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel} | Delete a Binding
[**Invoke-OktaDeleteResourceSet**](OktaResourceSetApi.md#Invoke-OktaDeleteResourceSet) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId} | Delete a Resource Set
[**Invoke-OktaDeleteResourceSetResource**](OktaResourceSetApi.md#Invoke-OktaDeleteResourceSetResource) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/resources/{resourceId} | Delete a Resource from a resource set
[**Get-OktaBinding**](OktaResourceSetApi.md#Get-OktaBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel} | Retrieve a Binding
[**Get-OktaMemberOfBinding**](OktaResourceSetApi.md#Get-OktaMemberOfBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members/{memberId} | Retrieve a Member of a binding
[**Get-OktaResourceSet**](OktaResourceSetApi.md#Get-OktaResourceSet) | **GET** /api/v1/iam/resource-sets/{resourceSetId} | Retrieve a Resource Set
[**Invoke-OktaListBindings**](OktaResourceSetApi.md#Invoke-OktaListBindings) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings | List all Bindings
[**Invoke-OktaListMembersOfBinding**](OktaResourceSetApi.md#Invoke-OktaListMembersOfBinding) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members | List all Members of a binding
[**Invoke-OktaListResourceSetResources**](OktaResourceSetApi.md#Invoke-OktaListResourceSetResources) | **GET** /api/v1/iam/resource-sets/{resourceSetId}/resources | List all Resources of a resource set
[**Invoke-OktaListResourceSets**](OktaResourceSetApi.md#Invoke-OktaListResourceSets) | **GET** /api/v1/iam/resource-sets | List all Resource Sets
[**Invoke-OktaReplaceResourceSet**](OktaResourceSetApi.md#Invoke-OktaReplaceResourceSet) | **PUT** /api/v1/iam/resource-sets/{resourceSetId} | Replace a Resource Set
[**Invoke-OktaUnassignMemberFromBinding**](OktaResourceSetApi.md#Invoke-OktaUnassignMemberFromBinding) | **DELETE** /api/v1/iam/resource-sets/{resourceSetId}/bindings/{roleIdOrLabel}/members/{memberId} | Unassign a Member from a binding


<a id="Add-OktaMembersToBinding"></a>
# **Add-OktaMembersToBinding**
> ResourceSetBindingResponse Add-OktaMembersToBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Add more Members to a binding

Adds more members to a resource set binding

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$ResourceSetBindingAddMembersRequest = Initialize-ResourceSetBindingAddMembersRequest -Additions "MyAdditions" # ResourceSetBindingAddMembersRequest | 

# Add more Members to a binding
try {
    $Result = Add-OktaMembersToBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Add-OktaMembersToBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Add-OktaResourceSetResource"></a>
# **Add-OktaResourceSetResource**
> ResourceSet Add-OktaResourceSetResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Add a Resource to a resource set

Adds more resources to a resource set

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$ResourceSetResourcePatchRequest = Initialize-ResourceSetResourcePatchRequest -Additions "MyAdditions" # ResourceSetResourcePatchRequest | 

# Add a Resource to a resource set
try {
    $Result = Add-OktaResourceSetResource -ResourceSetId $ResourceSetId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Add-OktaResourceSetResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaResourceSet"></a>
# **New-OktaResourceSet**
> ResourceSet New-OktaResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Resource Set

Creates a new resource set

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$CreateResourceSetRequest = Initialize-CreateResourceSetRequest -Description "MyDescription" -Label "MyLabel" -Resources "MyResources" # CreateResourceSetRequest | 

# Create a Resource Set
try {
    $Result = New-OktaResourceSet -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-OktaResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**CreateResourceSetRequest**](CreateResourceSetRequest.md)|  | 

### Return type

[**ResourceSet**](ResourceSet.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaResourceSetBinding"></a>
# **New-OktaResourceSetBinding**
> ResourceSetBindingResponse New-OktaResourceSetBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Resource Set Binding

Creates a new resource set binding

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$ResourceSetBindingCreateRequest = Initialize-ResourceSetBindingCreateRequest -Members "MyMembers" -Role "MyRole" # ResourceSetBindingCreateRequest | 

# Create a Resource Set Binding
try {
    $Result = New-OktaResourceSetBinding -ResourceSetId $ResourceSetId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-OktaResourceSetBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteBinding"></a>
# **Invoke-OktaDeleteBinding**
> void Invoke-OktaDeleteBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Delete a Binding

Deletes a resource set binding by `resourceSetId` and `roleIdOrLabel`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Delete a Binding
try {
    $Result = Invoke-OktaDeleteBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteResourceSet"></a>
# **Invoke-OktaDeleteResourceSet**
> void Invoke-OktaDeleteResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>

Delete a Resource Set

Deletes a role by `resourceSetId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set

# Delete a Resource Set
try {
    $Result = Invoke-OktaDeleteResourceSet -ResourceSetId $ResourceSetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteResourceSetResource"></a>
# **Invoke-OktaDeleteResourceSetResource**
> void Invoke-OktaDeleteResourceSetResource<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceId] <String><br>

Delete a Resource from a resource set

Deletes a resource identified by `resourceId` from a resource set

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$ResourceId = "ire106sQKoHoXXsAe0g4" # String | `id` of a resource

# Delete a Resource from a resource set
try {
    $Result = Invoke-OktaDeleteResourceSetResource -ResourceSetId $ResourceSetId -ResourceId $ResourceId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteResourceSetResource: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaBinding"></a>
# **Get-OktaBinding**
> ResourceSetBindingResponse Get-OktaBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>

Retrieve a Binding

Retrieves a resource set binding by `resourceSetId` and `roleIdOrLabel`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role

# Retrieve a Binding
try {
    $Result = Get-OktaBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel
} catch {
    Write-Host ("Exception occurred when calling Get-OktaBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaMemberOfBinding"></a>
# **Get-OktaMemberOfBinding**
> ResourceSetBindingMember Get-OktaMemberOfBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberId] <String><br>

Retrieve a Member of a binding

Retreieves a member identified by `memberId` for a binding

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$MemberId = "irb1qe6PGuMc7Oh8N0g4" # String | `id` of a member

# Retrieve a Member of a binding
try {
    $Result = Get-OktaMemberOfBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -MemberId $MemberId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaMemberOfBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaResourceSet"></a>
# **Get-OktaResourceSet**
> ResourceSet Get-OktaResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>

Retrieve a Resource Set

Retrieve a resource set by `resourceSetId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set

# Retrieve a Resource Set
try {
    $Result = Get-OktaResourceSet -ResourceSetId $ResourceSetId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListBindings"></a>
# **Invoke-OktaListBindings**
> ResourceSetBindings Invoke-OktaListBindings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Bindings

Lists all resource set bindings with pagination support

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Bindings
try {
    $Result = Invoke-OktaListBindings -ResourceSetId $ResourceSetId -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListBindings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListMembersOfBinding"></a>
# **Invoke-OktaListMembersOfBinding**
> ResourceSetBindingMembers Invoke-OktaListMembersOfBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Members of a binding

Lists all members of a resource set binding with pagination support

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Members of a binding
try {
    $Result = Invoke-OktaListMembersOfBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListMembersOfBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListResourceSetResources"></a>
# **Invoke-OktaListResourceSetResources**
> ResourceSetResources Invoke-OktaListResourceSetResources<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>

List all Resources of a resource set

Lists all resources that make up the resource set

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set

# List all Resources of a resource set
try {
    $Result = Invoke-OktaListResourceSetResources -ResourceSetId $ResourceSetId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListResourceSetResources: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListResourceSets"></a>
# **Invoke-OktaListResourceSets**
> ResourceSets Invoke-OktaListResourceSets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

List all Resource Sets

Lists all resource sets with pagination support

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)

# List all Resource Sets
try {
    $Result = Invoke-OktaListResourceSets -After $After
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListResourceSets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaReplaceResourceSet"></a>
# **Invoke-OktaReplaceResourceSet**
> ResourceSet Invoke-OktaReplaceResourceSet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a Resource Set

Replaces a resource set by `resourceSetId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$ResourceSetLinks = Initialize-ResourceSetLinks -Self $HrefObject -Resources $HrefObject -Bindings $HrefObject

$ResourceSet = Initialize-ResourceSet -Created (Get-Date) -Description "MyDescription" -Id "MyId" -Label "MyLabel" -LastUpdated (Get-Date) -Links $ResourceSetLinks # ResourceSet | 

# Replace a Resource Set
try {
    $Result = Invoke-OktaReplaceResourceSet -ResourceSetId $ResourceSetId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceResourceSet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaUnassignMemberFromBinding"></a>
# **Invoke-OktaUnassignMemberFromBinding**
> void Invoke-OktaUnassignMemberFromBinding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResourceSetId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RoleIdOrLabel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberId] <String><br>

Unassign a Member from a binding

Unassigns a member identified by `memberId` from a binding

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$ResourceSetId = "iamoJDFKaJxGIr0oamd9g" # String | `id` of a resource set
$RoleIdOrLabel = "cr0Yq6IJxGIr0ouum0g3" # String | `id` or `label` of the role
$MemberId = "irb1qe6PGuMc7Oh8N0g4" # String | `id` of a member

# Unassign a Member from a binding
try {
    $Result = Invoke-OktaUnassignMemberFromBinding -ResourceSetId $ResourceSetId -RoleIdOrLabel $RoleIdOrLabel -MemberId $MemberId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaUnassignMemberFromBinding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

