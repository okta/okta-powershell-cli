# PSOpenAPITools.PSOpenAPITools\Api.SchemaApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ApplicationLayout**](SchemaApi.md#Get-ApplicationLayout) | **GET** /api/v1/meta/layouts/apps/{appName} | Retrieve the UI Layout for an Application
[**Get-ApplicationUserSchema**](SchemaApi.md#Get-ApplicationUserSchema) | **GET** /api/v1/meta/schemas/apps/{appInstanceId}/default | Retrieve the default Application User Schema for an Application
[**Get-GroupSchema**](SchemaApi.md#Get-GroupSchema) | **GET** /api/v1/meta/schemas/group/default | Retrieve the default Group Schema
[**Get-LogStreamSchema**](SchemaApi.md#Get-LogStreamSchema) | **GET** /api/v1/meta/schemas/logStream/{logStreamType} | Retrieve the Log Stream Schema for the schema type
[**Get-UserSchema**](SchemaApi.md#Get-UserSchema) | **GET** /api/v1/meta/schemas/user/{schemaId} | Retrieve a User Schema
[**Invoke-ListLogStreamSchemas**](SchemaApi.md#Invoke-ListLogStreamSchemas) | **GET** /api/v1/meta/schemas/logStream | List the Log Stream Schemas
[**Update-ApplicationUserProfile**](SchemaApi.md#Update-ApplicationUserProfile) | **POST** /api/v1/meta/schemas/apps/{appInstanceId}/default | Update the default Application User Schema for an Application
[**Update-GroupSchema**](SchemaApi.md#Update-GroupSchema) | **POST** /api/v1/meta/schemas/group/default | Update the default Group Schema
[**Update-UserProfile**](SchemaApi.md#Update-UserProfile) | **POST** /api/v1/meta/schemas/user/{schemaId} | Update a User Schema


<a name="Get-ApplicationLayout"></a>
# **Get-ApplicationLayout**
> ApplicationLayout Get-ApplicationLayout<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppName] <String><br>

Retrieve the UI Layout for an Application

Takes an Application name as an input parameter and retrieves the App Instance page Layout for that Application.

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

$AppName = "MyAppName" # String | 

# Retrieve the UI Layout for an Application
try {
    $Result = Get-ApplicationLayout -AppName $AppName
} catch {
    Write-Host ("Exception occurred when calling Get-ApplicationLayout: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppName** | **String**|  | 

### Return type

[**ApplicationLayout**](ApplicationLayout.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ApplicationUserSchema"></a>
# **Get-ApplicationUserSchema**
> UserSchema Get-ApplicationUserSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppInstanceId] <String><br>

Retrieve the default Application User Schema for an Application

Fetches the Schema for an App User

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

$AppInstanceId = "MyAppInstanceId" # String | 

# Retrieve the default Application User Schema for an Application
try {
    $Result = Get-ApplicationUserSchema -AppInstanceId $AppInstanceId
} catch {
    Write-Host ("Exception occurred when calling Get-ApplicationUserSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppInstanceId** | **String**|  | 

### Return type

[**UserSchema**](UserSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroupSchema"></a>
# **Get-GroupSchema**
> GroupSchema Get-GroupSchema<br>

Retrieve the default Group Schema

Fetches the group schema

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


# Retrieve the default Group Schema
try {
    $Result = Get-GroupSchema
} catch {
    Write-Host ("Exception occurred when calling Get-GroupSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupSchema**](GroupSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-LogStreamSchema"></a>
# **Get-LogStreamSchema**
> LogStreamSchema Get-LogStreamSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogStreamType] <PSCustomObject><br>

Retrieve the Log Stream Schema for the schema type

Retrieves the schema for a Log Stream type. The `logStreamType` element in the URL specifies the Log Stream type, which is either `aws_eventbridge` or `splunk_cloud_logstreaming`. Use the `aws_eventbridge` literal to retrieve the AWS EventBridge type schema, and use the `splunk_cloud_logstreaming` literal retrieve the Splunk Cloud type schema.

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

$LogStreamType = "aws_eventbridge" # LogStreamType | 

# Retrieve the Log Stream Schema for the schema type
try {
    $Result = Get-LogStreamSchema -LogStreamType $LogStreamType
} catch {
    Write-Host ("Exception occurred when calling Get-LogStreamSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogStreamType** | [**LogStreamType**](LogStreamType.md)|  | 

### Return type

[**LogStreamSchema**](LogStreamSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserSchema"></a>
# **Get-UserSchema**
> UserSchema Get-UserSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>

Retrieve a User Schema

Fetches the schema for a Schema Id.

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

$SchemaId = "MySchemaId" # String | 

# Retrieve a User Schema
try {
    $Result = Get-UserSchema -SchemaId $SchemaId
} catch {
    Write-Host ("Exception occurred when calling Get-UserSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemaId** | **String**|  | 

### Return type

[**UserSchema**](UserSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ListLogStreamSchemas"></a>
# **Invoke-ListLogStreamSchemas**
> LogStreamSchema[] Invoke-ListLogStreamSchemas<br>

List the Log Stream Schemas

Lists the schema for all log stream types visible for this org.

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


# List the Log Stream Schemas
try {
    $Result = Invoke-ListLogStreamSchemas
} catch {
    Write-Host ("Exception occurred when calling Invoke-ListLogStreamSchemas: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LogStreamSchema[]**](LogStreamSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-ApplicationUserProfile"></a>
# **Update-ApplicationUserProfile**
> UserSchema Update-ApplicationUserProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppInstanceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <PSCustomObject><br>

Update the default Application User Schema for an Application

Partial updates on the User Profile properties of the Application User Schema.

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

$AppInstanceId = "MyAppInstanceId" # String | 
$UserSchemaAttributeEnum = Initialize-UserSchemaAttributeEnum -Const "MyConst" -Title "MyTitle"
$UserSchemaAttributeItems = Initialize-UserSchemaAttributeItems -Enum "MyEnum" -OneOf $UserSchemaAttributeEnum -Type "MyType"

$UserSchemaAttributeMasterPriority = Initialize-UserSchemaAttributeMasterPriority -Type "MyType" -Value "MyValue"
$UserSchemaAttributeMaster = Initialize-UserSchemaAttributeMaster -Priority $UserSchemaAttributeMasterPriority -Type "OKTA"

$UserSchemaAttributePermission = Initialize-UserSchemaAttributePermission -Action "MyAction" -Principal "MyPrincipal"
$UserSchemaAttribute = Initialize-UserSchemaAttribute -Description "MyDescription" -Enum "MyEnum" -ExternalName "MyExternalName" -ExternalNamespace "MyExternalNamespace" -Items $UserSchemaAttributeItems -Master $UserSchemaAttributeMaster -MaxLength 0 -MinLength 0 -Mutability "MyMutability" -OneOf $UserSchemaAttributeEnum -Pattern "MyPattern" -Permissions $UserSchemaAttributePermission -Required $false -Scope "NONE" -Title "MyTitle" -Type "array" -Union "DISABLE" -Unique "MyUnique"

$UserSchemaBaseProperties = Initialize-UserSchemaBaseProperties -City $UserSchemaAttribute -CostCenter $UserSchemaAttribute -CountryCode $UserSchemaAttribute -Department $UserSchemaAttribute -DisplayName $UserSchemaAttribute -Division $UserSchemaAttribute -Email $UserSchemaAttribute -EmployeeNumber $UserSchemaAttribute -FirstName $UserSchemaAttribute -HonorificPrefix $UserSchemaAttribute -HonorificSuffix $UserSchemaAttribute -LastName $UserSchemaAttribute -Locale $UserSchemaAttribute -Login $UserSchemaAttribute -Manager $UserSchemaAttribute -ManagerId $UserSchemaAttribute -MiddleName $UserSchemaAttribute -MobilePhone $UserSchemaAttribute -NickName $UserSchemaAttribute -Organization $UserSchemaAttribute -PostalAddress $UserSchemaAttribute -PreferredLanguage $UserSchemaAttribute -PrimaryPhone $UserSchemaAttribute -ProfileUrl $UserSchemaAttribute -SecondEmail $UserSchemaAttribute -State $UserSchemaAttribute -StreetAddress $UserSchemaAttribute -Timezone $UserSchemaAttribute -Title $UserSchemaAttribute -UserType $UserSchemaAttribute -ZipCode $UserSchemaAttribute

$UserSchemaBase = Initialize-UserSchemaBase -Id "MyId" -Properties $UserSchemaBaseProperties -Required "MyRequired" -Type "MyType"

$UserSchemaPublic = Initialize-UserSchemaPublic -Id "MyId" -Properties @{ key_example = $UserSchemaAttribute } -Required "MyRequired" -Type "MyType"

$UserSchemaDefinitions = Initialize-UserSchemaDefinitions -Base $UserSchemaBase -Custom $UserSchemaPublic

$UserSchemaPropertiesProfileItem = Initialize-UserSchemaPropertiesProfileItem -Ref "MyRef"
$UserSchemaPropertiesProfile = Initialize-UserSchemaPropertiesProfile -AllOf $UserSchemaPropertiesProfileItem

$UserSchemaProperties = Initialize-UserSchemaProperties -VarProfile $UserSchemaPropertiesProfile

$UserSchema = Initialize-UserSchema -Schema "MySchema" -Created "MyCreated" -Definitions $UserSchemaDefinitions -Id "MyId" -LastUpdated "MyLastUpdated" -Name "MyName" -Properties $UserSchemaProperties -Title "MyTitle" -Type "MyType" -Links @{ key_example =  } # UserSchema |  (optional)

# Update the default Application User Schema for an Application
try {
    $Result = Update-ApplicationUserProfile -AppInstanceId $AppInstanceId -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Update-ApplicationUserProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AppInstanceId** | **String**|  | 
 **Body** | [**UserSchema**](UserSchema.md)|  | [optional] 

### Return type

[**UserSchema**](UserSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-GroupSchema"></a>
# **Update-GroupSchema**
> GroupSchema Update-GroupSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupSchema] <PSCustomObject><br>

Update the default Group Schema

Updates, adds or removes one or more custom Group Profile properties in the schema

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

$UserSchemaAttributeEnum = Initialize-UserSchemaAttributeEnum -Const "MyConst" -Title "MyTitle"
$UserSchemaAttributeItems = Initialize-UserSchemaAttributeItems -Enum "MyEnum" -OneOf $UserSchemaAttributeEnum -Type "MyType"

$UserSchemaAttributeMasterPriority = Initialize-UserSchemaAttributeMasterPriority -Type "MyType" -Value "MyValue"
$UserSchemaAttributeMaster = Initialize-UserSchemaAttributeMaster -Priority $UserSchemaAttributeMasterPriority -Type "OKTA"

$UserSchemaAttributePermission = Initialize-UserSchemaAttributePermission -Action "MyAction" -Principal "MyPrincipal"
$GroupSchemaAttribute = Initialize-GroupSchemaAttribute -Description "MyDescription" -Enum "MyEnum" -ExternalName "MyExternalName" -ExternalNamespace "MyExternalNamespace" -Items $UserSchemaAttributeItems -Master $UserSchemaAttributeMaster -MaxLength 0 -MinLength 0 -Mutability "MyMutability" -OneOf $UserSchemaAttributeEnum -Permissions $UserSchemaAttributePermission -Required $false -Scope "NONE" -Title "MyTitle" -Type "array" -Union "DISABLE" -Unique "MyUnique"

$GroupSchemaBaseProperties = Initialize-GroupSchemaBaseProperties -Description $GroupSchemaAttribute -Name $GroupSchemaAttribute

$GroupSchemaBase = Initialize-GroupSchemaBase -Id "MyId" -Properties $GroupSchemaBaseProperties -Required "MyRequired" -Type "MyType"

$GroupSchemaCustom = Initialize-GroupSchemaCustom -Id "MyId" -Properties @{ key_example = $GroupSchemaAttribute } -Required "MyRequired" -Type "MyType"

$GroupSchemaDefinitions = Initialize-GroupSchemaDefinitions -Base $GroupSchemaBase -Custom $GroupSchemaCustom

$UserSchemaPropertiesProfileItem = Initialize-UserSchemaPropertiesProfileItem -Ref "MyRef"
$UserSchemaPropertiesProfile = Initialize-UserSchemaPropertiesProfile -AllOf $UserSchemaPropertiesProfileItem

$UserSchemaProperties = Initialize-UserSchemaProperties -VarProfile $UserSchemaPropertiesProfile

$GroupSchema = Initialize-GroupSchema -Schema "MySchema" -Created "MyCreated" -Definitions $GroupSchemaDefinitions -Description "MyDescription" -Id "MyId" -LastUpdated "MyLastUpdated" -Name "MyName" -Properties $UserSchemaProperties -Title "MyTitle" -Type "MyType" -Links @{ key_example =  } # GroupSchema |  (optional)

# Update the default Group Schema
try {
    $Result = Update-GroupSchema -GroupSchema $GroupSchema
} catch {
    Write-Host ("Exception occurred when calling Update-GroupSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupSchema** | [**GroupSchema**](GroupSchema.md)|  | [optional] 

### Return type

[**GroupSchema**](GroupSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-UserProfile"></a>
# **Update-UserProfile**
> UserSchema Update-UserProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SchemaId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserSchema] <PSCustomObject><br>

Update a User Schema

Partial updates on the User Profile properties of the user schema.

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

$SchemaId = "MySchemaId" # String | 
$UserSchemaAttributeEnum = Initialize-UserSchemaAttributeEnum -Const "MyConst" -Title "MyTitle"
$UserSchemaAttributeItems = Initialize-UserSchemaAttributeItems -Enum "MyEnum" -OneOf $UserSchemaAttributeEnum -Type "MyType"

$UserSchemaAttributeMasterPriority = Initialize-UserSchemaAttributeMasterPriority -Type "MyType" -Value "MyValue"
$UserSchemaAttributeMaster = Initialize-UserSchemaAttributeMaster -Priority $UserSchemaAttributeMasterPriority -Type "OKTA"

$UserSchemaAttributePermission = Initialize-UserSchemaAttributePermission -Action "MyAction" -Principal "MyPrincipal"
$UserSchemaAttribute = Initialize-UserSchemaAttribute -Description "MyDescription" -Enum "MyEnum" -ExternalName "MyExternalName" -ExternalNamespace "MyExternalNamespace" -Items $UserSchemaAttributeItems -Master $UserSchemaAttributeMaster -MaxLength 0 -MinLength 0 -Mutability "MyMutability" -OneOf $UserSchemaAttributeEnum -Pattern "MyPattern" -Permissions $UserSchemaAttributePermission -Required $false -Scope "NONE" -Title "MyTitle" -Type "array" -Union "DISABLE" -Unique "MyUnique"

$UserSchemaBaseProperties = Initialize-UserSchemaBaseProperties -City $UserSchemaAttribute -CostCenter $UserSchemaAttribute -CountryCode $UserSchemaAttribute -Department $UserSchemaAttribute -DisplayName $UserSchemaAttribute -Division $UserSchemaAttribute -Email $UserSchemaAttribute -EmployeeNumber $UserSchemaAttribute -FirstName $UserSchemaAttribute -HonorificPrefix $UserSchemaAttribute -HonorificSuffix $UserSchemaAttribute -LastName $UserSchemaAttribute -Locale $UserSchemaAttribute -Login $UserSchemaAttribute -Manager $UserSchemaAttribute -ManagerId $UserSchemaAttribute -MiddleName $UserSchemaAttribute -MobilePhone $UserSchemaAttribute -NickName $UserSchemaAttribute -Organization $UserSchemaAttribute -PostalAddress $UserSchemaAttribute -PreferredLanguage $UserSchemaAttribute -PrimaryPhone $UserSchemaAttribute -ProfileUrl $UserSchemaAttribute -SecondEmail $UserSchemaAttribute -State $UserSchemaAttribute -StreetAddress $UserSchemaAttribute -Timezone $UserSchemaAttribute -Title $UserSchemaAttribute -UserType $UserSchemaAttribute -ZipCode $UserSchemaAttribute

$UserSchemaBase = Initialize-UserSchemaBase -Id "MyId" -Properties $UserSchemaBaseProperties -Required "MyRequired" -Type "MyType"

$UserSchemaPublic = Initialize-UserSchemaPublic -Id "MyId" -Properties @{ key_example = $UserSchemaAttribute } -Required "MyRequired" -Type "MyType"

$UserSchemaDefinitions = Initialize-UserSchemaDefinitions -Base $UserSchemaBase -Custom $UserSchemaPublic

$UserSchemaPropertiesProfileItem = Initialize-UserSchemaPropertiesProfileItem -Ref "MyRef"
$UserSchemaPropertiesProfile = Initialize-UserSchemaPropertiesProfile -AllOf $UserSchemaPropertiesProfileItem

$UserSchemaProperties = Initialize-UserSchemaProperties -VarProfile $UserSchemaPropertiesProfile

$UserSchema = Initialize-UserSchema -Schema "MySchema" -Created "MyCreated" -Definitions $UserSchemaDefinitions -Id "MyId" -LastUpdated "MyLastUpdated" -Name "MyName" -Properties $UserSchemaProperties -Title "MyTitle" -Type "MyType" -Links @{ key_example =  } # UserSchema | 

# Update a User Schema
try {
    $Result = Update-UserProfile -SchemaId $SchemaId -UserSchema $UserSchema
} catch {
    Write-Host ("Exception occurred when calling Update-UserProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SchemaId** | **String**|  | 
 **UserSchema** | [**UserSchema**](UserSchema.md)|  | 

### Return type

[**UserSchema**](UserSchema.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

