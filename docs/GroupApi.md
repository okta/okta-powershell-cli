# PSOpenAPITools.PSOpenAPITools\Api.GroupApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ActivateGroupRule**](GroupApi.md#Invoke-ActivateGroupRule) | **POST** /api/v1/groups/rules/{ruleId}/lifecycle/activate | Activate a Group Rule
[**Add-GroupOwner**](GroupApi.md#Add-GroupOwner) | **POST** /api/v1/groups/{groupId}/owners | Assign a Group Owner
[**Add-UserToGroup**](GroupApi.md#Add-UserToGroup) | **PUT** /api/v1/groups/{groupId}/users/{userId} | Assign a User
[**New-Group**](GroupApi.md#New-Group) | **POST** /api/v1/groups | Create a Group
[**New-GroupRule**](GroupApi.md#New-GroupRule) | **POST** /api/v1/groups/rules | Create a Group Rule
[**Invoke-DeactivateGroupRule**](GroupApi.md#Invoke-DeactivateGroupRule) | **POST** /api/v1/groups/rules/{ruleId}/lifecycle/deactivate | Deactivate a Group Rule
[**Invoke-DeleteGroup**](GroupApi.md#Invoke-DeleteGroup) | **DELETE** /api/v1/groups/{groupId} | Delete a Group
[**Invoke-DeleteGroupOwner**](GroupApi.md#Invoke-DeleteGroupOwner) | **DELETE** /api/v1/groups/{groupId}/owners/{ownerId} | Delete a Group Owner
[**Invoke-DeleteGroupRule**](GroupApi.md#Invoke-DeleteGroupRule) | **DELETE** /api/v1/groups/rules/{ruleId} | Delete a group Rule
[**Get-Group**](GroupApi.md#Get-Group) | **GET** /api/v1/groups/{groupId} | List all Group Rules
[**Get-GroupOwners**](GroupApi.md#Get-GroupOwners) | **GET** /api/v1/groups/{groupId}/owners | List all Owners
[**Get-GroupRule**](GroupApi.md#Get-GroupRule) | **GET** /api/v1/groups/rules/{ruleId} | Retrieve a Group Rule
[**Invoke-ListAssignedApplicationsForGroup**](GroupApi.md#Invoke-ListAssignedApplicationsForGroup) | **GET** /api/v1/groups/{groupId}/apps | List all Assigned Applications
[**Invoke-ListGroupRules**](GroupApi.md#Invoke-ListGroupRules) | **GET** /api/v1/groups/rules | List all Group Rules
[**Invoke-ListGroupUsers**](GroupApi.md#Invoke-ListGroupUsers) | **GET** /api/v1/groups/{groupId}/users | List all Member Users
[**Invoke-ListGroups**](GroupApi.md#Invoke-ListGroups) | **GET** /api/v1/groups | List all Groups
[**Remove-UserFromGroup**](GroupApi.md#Remove-UserFromGroup) | **DELETE** /api/v1/groups/{groupId}/users/{userId} | Unassign a User
[**Update-Group**](GroupApi.md#Update-Group) | **PUT** /api/v1/groups/{groupId} | Replace a Group
[**Update-GroupRule**](GroupApi.md#Update-GroupRule) | **PUT** /api/v1/groups/rules/{ruleId} | Replace a Group Rule


<a name="Invoke-ActivateGroupRule"></a>
# **Invoke-ActivateGroupRule**
> void Invoke-ActivateGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Activate a Group Rule

Activates a specific group rule by id from your organization

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

$RuleId = "MyRuleId" # String | 

# Activate a Group Rule
try {
    $Result = Invoke-ActivateGroupRule -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ActivateGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RuleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-GroupOwner"></a>
# **Add-GroupOwner**
> GroupOwner Add-GroupOwner<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupOwner] <PSCustomObject><br>

Assign a Group Owner

Assigns a group owner for a specific group.

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

$GroupId = "MyGroupId" # String | 
$GroupOwner = Initialize-GroupOwner -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -OriginId "MyOriginId" -OriginType "APPLICATION" -Resolved $false -Type "GROUP" # GroupOwner | 

# Assign a Group Owner
try {
    $Result = Add-GroupOwner -GroupId $GroupId -GroupOwner $GroupOwner
} catch {
    Write-Host ("Exception occurred when calling Add-GroupOwner: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **GroupOwner** | [**GroupOwner**](GroupOwner.md)|  | 

### Return type

[**GroupOwner**](GroupOwner.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Add-UserToGroup"></a>
# **Add-UserToGroup**
> void Add-UserToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Assign a User

Adds a user to a group with 'OKTA_GROUP' type.

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

$GroupId = "MyGroupId" # String | 
$UserId = "MyUserId" # String | 

# Assign a User
try {
    $Result = Add-UserToGroup -GroupId $GroupId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Add-UserToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Group"></a>
# **New-Group**
> Group New-Group<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Group] <PSCustomObject><br>

Create a Group

Adds a new group with `OKTA_GROUP` type to your organization.

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

$GroupProfile = Initialize-GroupProfile -Description "MyDescription" -Name "MyName"

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$GroupLinks = Initialize-GroupLinks -Apps $HrefObject -Logo $HrefObject -Self $HrefObject -Source $HrefObject -Users $HrefObject

$Group = Initialize-Group -Created (Get-Date) -Id "MyId" -LastMembershipUpdated (Get-Date) -LastUpdated (Get-Date) -ObjectClass "MyObjectClass" -VarProfile $GroupProfile -Type "APP_GROUP" -Embedded @{ key_example =  } -Links $GroupLinks # Group | 

# Create a Group
try {
    $Result = New-Group -Group $Group
} catch {
    Write-Host ("Exception occurred when calling New-Group: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Group** | [**Group**](Group.md)|  | 

### Return type

[**Group**](Group.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-GroupRule"></a>
# **New-GroupRule**
> GroupRule New-GroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupRule] <PSCustomObject><br>

Create a Group Rule

Creates a group rule to dynamically add users to the specified group if they match the condition

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

$GroupRuleGroupAssignment = Initialize-GroupRuleGroupAssignment -GroupIds "MyGroupIds"
$GroupRuleAction = Initialize-GroupRuleAction -AssignUserToGroups $GroupRuleGroupAssignment

$GroupRuleExpression = Initialize-GroupRuleExpression -Type "MyType" -Value "MyValue"

$GroupRuleGroupCondition = Initialize-GroupRuleGroupCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRuleUserCondition = Initialize-GroupRuleUserCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRulePeopleCondition = Initialize-GroupRulePeopleCondition -Groups $GroupRuleGroupCondition -Users $GroupRuleUserCondition

$GroupRuleConditions = Initialize-GroupRuleConditions -Expression $GroupRuleExpression -People $GroupRulePeopleCondition

$GroupRule = Initialize-GroupRule -Actions $GroupRuleAction -Conditions $GroupRuleConditions -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "MyType" # GroupRule | 

# Create a Group Rule
try {
    $Result = New-GroupRule -GroupRule $GroupRule
} catch {
    Write-Host ("Exception occurred when calling New-GroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupRule** | [**GroupRule**](GroupRule.md)|  | 

### Return type

[**GroupRule**](GroupRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeactivateGroupRule"></a>
# **Invoke-DeactivateGroupRule**
> void Invoke-DeactivateGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Deactivate a Group Rule

Deactivates a specific group rule by id from your organization

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

$RuleId = "MyRuleId" # String | 

# Deactivate a Group Rule
try {
    $Result = Invoke-DeactivateGroupRule -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeactivateGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RuleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteGroup"></a>
# **Invoke-DeleteGroup**
> void Invoke-DeleteGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete a Group

Removes a group with `OKTA_GROUP` type from your organization.

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

$GroupId = "MyGroupId" # String | 

# Delete a Group
try {
    $Result = Invoke-DeleteGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteGroupOwner"></a>
# **Invoke-DeleteGroupOwner**
> void Invoke-DeleteGroupOwner<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Delete a Group Owner

Delete a group owner from a specific group.

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

$GroupId = "MyGroupId" # String | 
$OwnerId = "MyOwnerId" # String | 

# Delete a Group Owner
try {
    $Result = Invoke-DeleteGroupOwner -GroupId $GroupId -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteGroupOwner: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **OwnerId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteGroupRule"></a>
# **Invoke-DeleteGroupRule**
> void Invoke-DeleteGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveUsers] <System.Nullable[Boolean]><br>

Delete a group Rule

Removes a specific group rule by id from your organization

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

$RuleId = "MyRuleId" # String | 
$RemoveUsers = $true # Boolean | Indicates whether to keep or remove users from groups assigned by this rule. (optional)

# Delete a group Rule
try {
    $Result = Invoke-DeleteGroupRule -RuleId $RuleId -RemoveUsers $RemoveUsers
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RuleId** | **String**|  | 
 **RemoveUsers** | **Boolean**| Indicates whether to keep or remove users from groups assigned by this rule. | [optional] 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Group"></a>
# **Get-Group**
> Group Get-Group<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

List all Group Rules

Fetches a group from your organization.

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

$GroupId = "MyGroupId" # String | 

# List all Group Rules
try {
    $Result = Get-Group -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Get-Group: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 

### Return type

[**Group**](Group.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroupOwners"></a>
# **Get-GroupOwners**
> GroupOwner[] Get-GroupOwners<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Owners

List all owners for a specific group.

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

$GroupId = "MyGroupId" # String | 
$Filter = "MyFilter" # String | SCIM Filter expression for group owners. Allows to filter owners by type. (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of owners (optional)
$Limit = 56 # Int32 | Specifies the number of owner results in a page (optional) (default to 1000)

# List all Owners
try {
    $Result = Get-GroupOwners -GroupId $GroupId -Filter $Filter -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-GroupOwners: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **Filter** | **String**| SCIM Filter expression for group owners. Allows to filter owners by type. | [optional] 
 **After** | **String**| Specifies the pagination cursor for the next page of owners | [optional] 
 **Limit** | **Int32**| Specifies the number of owner results in a page | [optional] [default to 1000]

### Return type

[**GroupOwner[]**](GroupOwner.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroupRule"></a>
# **Get-GroupRule**
> GroupRule Get-GroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Group Rule

Fetches a specific group rule by id from your organization

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

$RuleId = "MyRuleId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a Group Rule
try {
    $Result = Get-GroupRule -RuleId $RuleId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-GroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RuleId** | **String**|  | 
 **Expand** | **String**|  | [optional] 

### Return type

[**GroupRule**](GroupRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListAssignedApplicationsForGroup"></a>
# **Invoke-ListAssignedApplicationsForGroup**
> Application[] Invoke-ListAssignedApplicationsForGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Assigned Applications

Enumerates all applications that are assigned to a group.

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

$GroupId = "MyGroupId" # String | 
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of apps (optional)
$Limit = 56 # Int32 | Specifies the number of app results for a page (optional) (default to 20)

# List all Assigned Applications
try {
    $Result = Invoke-ListAssignedApplicationsForGroup -GroupId $GroupId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListAssignedApplicationsForGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **After** | **String**| Specifies the pagination cursor for the next page of apps | [optional] 
 **Limit** | **Int32**| Specifies the number of app results for a page | [optional] [default to 20]

### Return type

[**Application[]**](Application.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListGroupRules"></a>
# **Invoke-ListGroupRules**
> GroupRule[] Invoke-ListGroupRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Group Rules

Lists all group rules for your organization.

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

$Limit = 56 # Int32 | Specifies the number of rule results in a page (optional) (default to 50)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of rules (optional)
$Search = "MySearch" # String | Specifies the keyword to search fules for (optional)
$Expand = "MyExpand" # String | If specified as `groupIdToGroupNameMap`, then show group names (optional)

# List all Group Rules
try {
    $Result = Invoke-ListGroupRules -Limit $Limit -After $After -Search $Search -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListGroupRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Specifies the number of rule results in a page | [optional] [default to 50]
 **After** | **String**| Specifies the pagination cursor for the next page of rules | [optional] 
 **Search** | **String**| Specifies the keyword to search fules for | [optional] 
 **Expand** | **String**| If specified as &#x60;groupIdToGroupNameMap&#x60;, then show group names | [optional] 

### Return type

[**GroupRule[]**](GroupRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListGroupUsers"></a>
# **Invoke-ListGroupUsers**
> User[] Invoke-ListGroupUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Member Users

Enumerates all users that are a member of a group.

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

$GroupId = "MyGroupId" # String | 
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of users (optional)
$Limit = 56 # Int32 | Specifies the number of user results in a page (optional) (default to 1000)

# List all Member Users
try {
    $Result = Invoke-ListGroupUsers -GroupId $GroupId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListGroupUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **After** | **String**| Specifies the pagination cursor for the next page of users | [optional] 
 **Limit** | **Int32**| Specifies the number of user results in a page | [optional] [default to 1000]

### Return type

[**User[]**](User.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListGroups"></a>
# **Invoke-ListGroups**
> Group[] Invoke-ListGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

List all Groups

Enumerates groups in your organization with pagination. A subset of groups can be returned that match a supported filter expression or query.

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

$Q = "MyQ" # String | Searches the name property of groups for matching value (optional)
$Filter = "MyFilter" # String | Filter expression for groups (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of groups (optional)
$Limit = 56 # Int32 | Specifies the number of group results in a page (optional) (default to 10000)
$Expand = "MyExpand" # String | If specified, it causes additional metadata to be included in the response. (optional)
$Search = "MySearch" # String | Searches for groups with a supported filtering expression for all attributes except for _embedded, _links, and objectClass (optional)

# List all Groups
try {
    $Result = Invoke-ListGroups -Q $Q -Filter $Filter -After $After -Limit $Limit -Expand $Expand -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**| Searches the name property of groups for matching value | [optional] 
 **Filter** | **String**| Filter expression for groups | [optional] 
 **After** | **String**| Specifies the pagination cursor for the next page of groups | [optional] 
 **Limit** | **Int32**| Specifies the number of group results in a page | [optional] [default to 10000]
 **Expand** | **String**| If specified, it causes additional metadata to be included in the response. | [optional] 
 **Search** | **String**| Searches for groups with a supported filtering expression for all attributes except for _embedded, _links, and objectClass | [optional] 

### Return type

[**Group[]**](Group.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-UserFromGroup"></a>
# **Remove-UserFromGroup**
> void Remove-UserFromGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unassign a User

Removes a user from a group with 'OKTA_GROUP' type.

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

$GroupId = "MyGroupId" # String | 
$UserId = "MyUserId" # String | 

# Unassign a User
try {
    $Result = Remove-UserFromGroup -GroupId $GroupId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Remove-UserFromGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **UserId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Group"></a>
# **Update-Group**
> Group Update-Group<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Group] <PSCustomObject><br>

Replace a Group

Updates the profile for a group with `OKTA_GROUP` type from your organization.

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

$GroupId = "MyGroupId" # String | 
$GroupProfile = Initialize-GroupProfile -Description "MyDescription" -Name "MyName"

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$GroupLinks = Initialize-GroupLinks -Apps $HrefObject -Logo $HrefObject -Self $HrefObject -Source $HrefObject -Users $HrefObject

$Group = Initialize-Group -Created (Get-Date) -Id "MyId" -LastMembershipUpdated (Get-Date) -LastUpdated (Get-Date) -ObjectClass "MyObjectClass" -VarProfile $GroupProfile -Type "APP_GROUP" -Embedded @{ key_example =  } -Links $GroupLinks # Group | 

# Replace a Group
try {
    $Result = Update-Group -GroupId $GroupId -Group $Group
} catch {
    Write-Host ("Exception occurred when calling Update-Group: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**|  | 
 **Group** | [**Group**](Group.md)|  | 

### Return type

[**Group**](Group.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-GroupRule"></a>
# **Update-GroupRule**
> GroupRule Update-GroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupRule] <PSCustomObject><br>

Replace a Group Rule

Updates a group rule. Only `INACTIVE` rules can be updated.

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

$RuleId = "MyRuleId" # String | 
$GroupRuleGroupAssignment = Initialize-GroupRuleGroupAssignment -GroupIds "MyGroupIds"
$GroupRuleAction = Initialize-GroupRuleAction -AssignUserToGroups $GroupRuleGroupAssignment

$GroupRuleExpression = Initialize-GroupRuleExpression -Type "MyType" -Value "MyValue"

$GroupRuleGroupCondition = Initialize-GroupRuleGroupCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRuleUserCondition = Initialize-GroupRuleUserCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRulePeopleCondition = Initialize-GroupRulePeopleCondition -Groups $GroupRuleGroupCondition -Users $GroupRuleUserCondition

$GroupRuleConditions = Initialize-GroupRuleConditions -Expression $GroupRuleExpression -People $GroupRulePeopleCondition

$GroupRule = Initialize-GroupRule -Actions $GroupRuleAction -Conditions $GroupRuleConditions -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "MyType" # GroupRule | 

# Replace a Group Rule
try {
    $Result = Update-GroupRule -RuleId $RuleId -GroupRule $GroupRule
} catch {
    Write-Host ("Exception occurred when calling Update-GroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RuleId** | **String**|  | 
 **GroupRule** | [**GroupRule**](GroupRule.md)|  | 

### Return type

[**GroupRule**](GroupRule.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

