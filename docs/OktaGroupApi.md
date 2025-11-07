# Okta.PowerShell.Okta.PowerShell\Api.OktaGroupApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateGroupRule**](OktaGroupApi.md#Invoke-OktaActivateGroupRule) | **POST** /api/v1/groups/rules/{ruleId}/lifecycle/activate | Activate a Group Rule
[**Add-OktaGroupOwner**](OktaGroupApi.md#Add-OktaGroupOwner) | **POST** /api/v1/groups/{groupId}/owners | Assign a Group Owner
[**Add-OktaUserToGroup**](OktaGroupApi.md#Add-OktaUserToGroup) | **PUT** /api/v1/groups/{groupId}/users/{userId} | Assign a User
[**New-OktaGroup**](OktaGroupApi.md#New-OktaGroup) | **POST** /api/v1/groups | Create a Group
[**New-OktaGroupRule**](OktaGroupApi.md#New-OktaGroupRule) | **POST** /api/v1/groups/rules | Create a Group Rule
[**Invoke-OktaDeactivateGroupRule**](OktaGroupApi.md#Invoke-OktaDeactivateGroupRule) | **POST** /api/v1/groups/rules/{ruleId}/lifecycle/deactivate | Deactivate a Group Rule
[**Invoke-OktaDeleteGroup**](OktaGroupApi.md#Invoke-OktaDeleteGroup) | **DELETE** /api/v1/groups/{groupId} | Delete a Group
[**Invoke-OktaDeleteGroupOwner**](OktaGroupApi.md#Invoke-OktaDeleteGroupOwner) | **DELETE** /api/v1/groups/{groupId}/owners/{ownerId} | Delete a Group Owner
[**Invoke-OktaDeleteGroupRule**](OktaGroupApi.md#Invoke-OktaDeleteGroupRule) | **DELETE** /api/v1/groups/rules/{ruleId} | Delete a group Rule
[**Get-OktaGroup**](OktaGroupApi.md#Get-OktaGroup) | **GET** /api/v1/groups/{groupId} | List all Group Rules
[**Get-OktaGroupOwners**](OktaGroupApi.md#Get-OktaGroupOwners) | **GET** /api/v1/groups/{groupId}/owners | List all Owners
[**Get-OktaGroupRule**](OktaGroupApi.md#Get-OktaGroupRule) | **GET** /api/v1/groups/rules/{ruleId} | Retrieve a Group Rule
[**Invoke-OktaListAssignedApplicationsForGroup**](OktaGroupApi.md#Invoke-OktaListAssignedApplicationsForGroup) | **GET** /api/v1/groups/{groupId}/apps | List all Assigned Applications
[**Invoke-OktaListGroupRules**](OktaGroupApi.md#Invoke-OktaListGroupRules) | **GET** /api/v1/groups/rules | List all Group Rules
[**Invoke-OktaListGroupUsers**](OktaGroupApi.md#Invoke-OktaListGroupUsers) | **GET** /api/v1/groups/{groupId}/users | List all Member Users
[**Invoke-OktaListGroups**](OktaGroupApi.md#Invoke-OktaListGroups) | **GET** /api/v1/groups | List all Groups
[**Remove-OktaUserFromGroup**](OktaGroupApi.md#Remove-OktaUserFromGroup) | **DELETE** /api/v1/groups/{groupId}/users/{userId} | Unassign a User
[**Update-OktaGroup**](OktaGroupApi.md#Update-OktaGroup) | **PUT** /api/v1/groups/{groupId} | Replace a Group
[**Update-OktaGroupRule**](OktaGroupApi.md#Update-OktaGroupRule) | **PUT** /api/v1/groups/rules/{ruleId} | Replace a Group Rule


<a id="Invoke-OktaActivateGroupRule"></a>
# **Invoke-OktaActivateGroupRule**
> void Invoke-OktaActivateGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Activate a Group Rule

Activates a specific group rule by id from your organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RuleId = "MyRuleId" # String | 

# Activate a Group Rule
try {
    $Result = Invoke-OktaActivateGroupRule -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Add-OktaGroupOwner"></a>
# **Add-OktaGroupOwner**
> GroupOwner Add-OktaGroupOwner<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupOwner] <PSCustomObject><br>

Assign a Group Owner

Assigns a group owner for a specific group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$GroupOwner = Initialize-OktaGroupOwner -DisplayName "MyDisplayName" -Id "MyId" -LastUpdated (Get-Date) -OriginId "MyOriginId" -OriginType "APPLICATION" -Resolved $false -Type "GROUP" # GroupOwner | 

# Assign a Group Owner
try {
    $Result = Add-OktaGroupOwner -GroupId $GroupId -GroupOwner $GroupOwner
} catch {
    Write-Host ("Exception occurred when calling Add-OktaGroupOwner: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Add-OktaUserToGroup"></a>
# **Add-OktaUserToGroup**
> void Add-OktaUserToGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Assign a User

Adds a user to a group with 'OKTA_GROUP' type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$UserId = "MyUserId" # String | 

# Assign a User
try {
    $Result = Add-OktaUserToGroup -GroupId $GroupId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Add-OktaUserToGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaGroup"></a>
# **New-OktaGroup**
> Group New-OktaGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Group] <PSCustomObject><br>

Create a Group

Adds a new group with `OKTA_GROUP` type to your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$HrefObjectHints = Initialize-OktaHrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-OktaHrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$GroupLinks = Initialize-OktaGroupLinks -Apps $HrefObject -Logo $HrefObject -Self $HrefObject -Source $HrefObject -Users $HrefObject

$Group = Initialize-OktaGroup -Created (Get-Date) -Id "MyId" -LastMembershipUpdated (Get-Date) -LastUpdated (Get-Date) -ObjectClass "MyObjectClass" -VarProfile  -Type "APP_GROUP" -Embedded @{ key_example =  } -Links $GroupLinks # Group | 

# Create a Group
try {
    $Result = New-OktaGroup -Group $Group
} catch {
    Write-Host ("Exception occurred when calling New-OktaGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="New-OktaGroupRule"></a>
# **New-OktaGroupRule**
> GroupRule New-OktaGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupRule] <PSCustomObject><br>

Create a Group Rule

Creates a group rule to dynamically add users to the specified group if they match the condition

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupRuleGroupAssignment = Initialize-OktaGroupRuleGroupAssignment -GroupIds "MyGroupIds"
$GroupRuleAction = Initialize-OktaGroupRuleAction -AssignUserToGroups $GroupRuleGroupAssignment

$GroupRuleExpression = Initialize-OktaGroupRuleExpression -Type "MyType" -Value "MyValue"

$GroupRuleGroupCondition = Initialize-OktaGroupRuleGroupCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRuleUserCondition = Initialize-OktaGroupRuleUserCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRulePeopleCondition = Initialize-OktaGroupRulePeopleCondition -Groups $GroupRuleGroupCondition -Users $GroupRuleUserCondition

$GroupRuleConditions = Initialize-OktaGroupRuleConditions -Expression $GroupRuleExpression -People $GroupRulePeopleCondition

$GroupRule = Initialize-OktaGroupRule -Actions $GroupRuleAction -Conditions $GroupRuleConditions -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "MyType" # GroupRule | 

# Create a Group Rule
try {
    $Result = New-OktaGroupRule -GroupRule $GroupRule
} catch {
    Write-Host ("Exception occurred when calling New-OktaGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeactivateGroupRule"></a>
# **Invoke-OktaDeactivateGroupRule**
> void Invoke-OktaDeactivateGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>

Deactivate a Group Rule

Deactivates a specific group rule by id from your organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RuleId = "MyRuleId" # String | 

# Deactivate a Group Rule
try {
    $Result = Invoke-OktaDeactivateGroupRule -RuleId $RuleId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteGroup"></a>
# **Invoke-OktaDeleteGroup**
> void Invoke-OktaDeleteGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete a Group

Removes a group with `OKTA_GROUP` type from your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 

# Delete a Group
try {
    $Result = Invoke-OktaDeleteGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteGroupOwner"></a>
# **Invoke-OktaDeleteGroupOwner**
> void Invoke-OktaDeleteGroupOwner<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OwnerId] <String><br>

Delete a Group Owner

Delete a group owner from a specific group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$OwnerId = "MyOwnerId" # String | 

# Delete a Group Owner
try {
    $Result = Invoke-OktaDeleteGroupOwner -GroupId $GroupId -OwnerId $OwnerId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteGroupOwner: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaDeleteGroupRule"></a>
# **Invoke-OktaDeleteGroupRule**
> void Invoke-OktaDeleteGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoveUsers] <System.Nullable[Boolean]><br>

Delete a group Rule

Removes a specific group rule by id from your organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RuleId = "MyRuleId" # String | 
$RemoveUsers = $true # Boolean | Indicates whether to keep or remove users from groups assigned by this rule. (optional)

# Delete a group Rule
try {
    $Result = Invoke-OktaDeleteGroupRule -RuleId $RuleId -RemoveUsers $RemoveUsers
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaGroup"></a>
# **Get-OktaGroup**
> Group Get-OktaGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

List all Group Rules

Fetches a group from your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 

# List all Group Rules
try {
    $Result = Get-OktaGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaGroupOwners"></a>
# **Get-OktaGroupOwners**
> GroupOwner[] Get-OktaGroupOwners<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Owners

List all owners for a specific group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$Filter = "MyFilter" # String | SCIM Filter expression for group owners. Allows to filter owners by type. (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of owners (optional)
$Limit = 56 # Int32 | Specifies the number of owner results in a page (optional) (default to 1000)

# List all Owners
try {
    $Result = Get-OktaGroupOwners -GroupId $GroupId -Filter $Filter -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Get-OktaGroupOwners: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-OktaGroupRule"></a>
# **Get-OktaGroupRule**
> GroupRule Get-OktaGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

Retrieve a Group Rule

Fetches a specific group rule by id from your organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RuleId = "MyRuleId" # String | 
$Expand = "MyExpand" # String |  (optional)

# Retrieve a Group Rule
try {
    $Result = Get-OktaGroupRule -RuleId $RuleId -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Get-OktaGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListAssignedApplicationsForGroup"></a>
# **Invoke-OktaListAssignedApplicationsForGroup**
> Application[] Invoke-OktaListAssignedApplicationsForGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Assigned Applications

Enumerates all applications that are assigned to a group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of apps (optional)
$Limit = 56 # Int32 | Specifies the number of app results for a page (optional) (default to 20)

# List all Assigned Applications
try {
    $Result = Invoke-OktaListAssignedApplicationsForGroup -GroupId $GroupId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListAssignedApplicationsForGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListGroupRules"></a>
# **Invoke-OktaListGroupRules**
> GroupRule[] Invoke-OktaListGroupRules<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Expand] <String><br>

List all Group Rules

Lists all group rules for your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Limit = 56 # Int32 | Specifies the number of rule results in a page (optional) (default to 50)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of rules (optional)
$Search = "MySearch" # String | Specifies the keyword to search fules for (optional)
$Expand = "MyExpand" # String | If specified as `groupIdToGroupNameMap`, then show group names (optional)

# List all Group Rules
try {
    $Result = Invoke-OktaListGroupRules -Limit $Limit -After $After -Search $Search -Expand $Expand
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListGroupRules: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListGroupUsers"></a>
# **Invoke-OktaListGroupUsers**
> User[] Invoke-OktaListGroupUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>

List all Member Users

Enumerates all users that are a member of a group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of users (optional)
$Limit = 56 # Int32 | Specifies the number of user results in a page (optional) (default to 1000)

# List all Member Users
try {
    $Result = Invoke-OktaListGroupUsers -GroupId $GroupId -After $After -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListGroupUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-OktaListGroups"></a>
# **Invoke-OktaListGroups**
> Group[] Invoke-OktaListGroups<br>
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
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$Q = "MyQ" # String | Searches the name property of groups for matching value (optional)
$Filter = "MyFilter" # String | Filter expression for groups (optional)
$After = "MyAfter" # String | Specifies the pagination cursor for the next page of groups (optional)
$Limit = 56 # Int32 | Specifies the number of group results in a page (optional) (default to 10000)
$Expand = "MyExpand" # String | If specified, it causes additional metadata to be included in the response. (optional)
$Search = "MySearch" # String | Searches for groups with a supported filtering expression for all attributes except for _embedded, _links, and objectClass (optional)

# List all Groups
try {
    $Result = Invoke-OktaListGroups -Q $Q -Filter $Filter -After $After -Limit $Limit -Expand $Expand -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-OktaUserFromGroup"></a>
# **Remove-OktaUserFromGroup**
> void Remove-OktaUserFromGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserId] <String><br>

Unassign a User

Removes a user from a group with 'OKTA_GROUP' type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$UserId = "MyUserId" # String | 

# Unassign a User
try {
    $Result = Remove-OktaUserFromGroup -GroupId $GroupId -UserId $UserId
} catch {
    Write-Host ("Exception occurred when calling Remove-OktaUserFromGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaGroup"></a>
# **Update-OktaGroup**
> Group Update-OktaGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Group] <PSCustomObject><br>

Replace a Group

Updates the profile for a group with `OKTA_GROUP` type from your organization.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$GroupId = "MyGroupId" # String | 
$HrefObjectHints = Initialize-OktaHrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-OktaHrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$GroupLinks = Initialize-OktaGroupLinks -Apps $HrefObject -Logo $HrefObject -Self $HrefObject -Source $HrefObject -Users $HrefObject

$Group = Initialize-OktaGroup -Created (Get-Date) -Id "MyId" -LastMembershipUpdated (Get-Date) -LastUpdated (Get-Date) -ObjectClass "MyObjectClass" -VarProfile  -Type "APP_GROUP" -Embedded @{ key_example =  } -Links $GroupLinks # Group | 

# Replace a Group
try {
    $Result = Update-OktaGroup -GroupId $GroupId -Group $Group
} catch {
    Write-Host ("Exception occurred when calling Update-OktaGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-OktaGroupRule"></a>
# **Update-OktaGroupRule**
> GroupRule Update-OktaGroupRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RuleId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupRule] <PSCustomObject><br>

Replace a Group Rule

Updates a group rule. Only `INACTIVE` rules can be updated.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OKTA_SCOPES" # for example okta.users.read

$RuleId = "MyRuleId" # String | 
$GroupRuleGroupAssignment = Initialize-OktaGroupRuleGroupAssignment -GroupIds "MyGroupIds"
$GroupRuleAction = Initialize-OktaGroupRuleAction -AssignUserToGroups $GroupRuleGroupAssignment

$GroupRuleExpression = Initialize-OktaGroupRuleExpression -Type "MyType" -Value "MyValue"

$GroupRuleGroupCondition = Initialize-OktaGroupRuleGroupCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRuleUserCondition = Initialize-OktaGroupRuleUserCondition -Exclude "MyExclude" -Include "MyInclude"
$GroupRulePeopleCondition = Initialize-OktaGroupRulePeopleCondition -Groups $GroupRuleGroupCondition -Users $GroupRuleUserCondition

$GroupRuleConditions = Initialize-OktaGroupRuleConditions -Expression $GroupRuleExpression -People $GroupRulePeopleCondition

$GroupRule = Initialize-OktaGroupRule -Actions $GroupRuleAction -Conditions $GroupRuleConditions -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "MyType" # GroupRule | 

# Replace a Group Rule
try {
    $Result = Update-OktaGroupRule -RuleId $RuleId -GroupRule $GroupRule
} catch {
    Write-Host ("Exception occurred when calling Update-OktaGroupRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

