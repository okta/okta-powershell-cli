# Okta.PowerShell.Okta.PowerShell\Api.OktaLogStreamApi

All URIs are relative to *https://subdomain.okta.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OktaActivateLogStream**](OktaLogStreamApi.md#Invoke-OktaActivateLogStream) | **POST** /api/v1/logStreams/{logStreamId}/lifecycle/activate | Activate a Log Stream
[**New-OktaLogStream**](OktaLogStreamApi.md#New-OktaLogStream) | **POST** /api/v1/logStreams | Create a Log Stream
[**Invoke-OktaDeactivateLogStream**](OktaLogStreamApi.md#Invoke-OktaDeactivateLogStream) | **POST** /api/v1/logStreams/{logStreamId}/lifecycle/deactivate | Deactivate a Log Stream
[**Invoke-OktaDeleteLogStream**](OktaLogStreamApi.md#Invoke-OktaDeleteLogStream) | **DELETE** /api/v1/logStreams/{logStreamId} | Delete a Log Stream
[**Get-OktaLogStream**](OktaLogStreamApi.md#Get-OktaLogStream) | **GET** /api/v1/logStreams/{logStreamId} | Retrieve a Log Stream
[**Invoke-OktaListLogStreams**](OktaLogStreamApi.md#Invoke-OktaListLogStreams) | **GET** /api/v1/logStreams | List all Log Streams
[**Invoke-OktaReplaceLogStream**](OktaLogStreamApi.md#Invoke-OktaReplaceLogStream) | **PUT** /api/v1/logStreams/{logStreamId} | Replace a Log Stream


<a id="Invoke-OktaActivateLogStream"></a>
# **Invoke-OktaActivateLogStream**
> LogStream Invoke-OktaActivateLogStream<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogStreamId] <String><br>

Activate a Log Stream

Activates a log stream by `logStreamId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$LogStreamId = "abcd1234" # String | id of the log stream

# Activate a Log Stream
try {
    $Result = Invoke-OktaActivateLogStream -LogStreamId $LogStreamId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaActivateLogStream: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogStreamId** | **String**| id of the log stream | 

### Return type

[**LogStream**](LogStream.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="New-OktaLogStream"></a>
# **New-OktaLogStream**
> LogStream New-OktaLogStream<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Create a Log Stream

Creates a new log stream

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$LogStreamLinks = Initialize-LogStreamLinks -Self $HrefObject -Activate $HrefObject -Deactivate $HrefObject

$LogStream = Initialize-LogStream -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "aws_eventbridge" -Links $LogStreamLinks # LogStream | 

# Create a Log Stream
try {
    $Result = New-OktaLogStream -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling New-OktaLogStream: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Instance** | [**LogStream**](LogStream.md)|  | 

### Return type

[**LogStream**](LogStream.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeactivateLogStream"></a>
# **Invoke-OktaDeactivateLogStream**
> LogStream Invoke-OktaDeactivateLogStream<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogStreamId] <String><br>

Deactivate a Log Stream

Deactivates a log stream by `logStreamId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$LogStreamId = "abcd1234" # String | id of the log stream

# Deactivate a Log Stream
try {
    $Result = Invoke-OktaDeactivateLogStream -LogStreamId $LogStreamId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeactivateLogStream: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogStreamId** | **String**| id of the log stream | 

### Return type

[**LogStream**](LogStream.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaDeleteLogStream"></a>
# **Invoke-OktaDeleteLogStream**
> void Invoke-OktaDeleteLogStream<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogStreamId] <String><br>

Delete a Log Stream

Deletes a log stream by `logStreamId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$LogStreamId = "abcd1234" # String | id of the log stream

# Delete a Log Stream
try {
    $Result = Invoke-OktaDeleteLogStream -LogStreamId $LogStreamId
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaDeleteLogStream: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogStreamId** | **String**| id of the log stream | 

### Return type

void (empty response body)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-OktaLogStream"></a>
# **Get-OktaLogStream**
> LogStream Get-OktaLogStream<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogStreamId] <String><br>

Retrieve a Log Stream

Retrieve a log stream by `logStreamId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$LogStreamId = "abcd1234" # String | id of the log stream

# Retrieve a Log Stream
try {
    $Result = Get-OktaLogStream -LogStreamId $LogStreamId
} catch {
    Write-Host ("Exception occurred when calling Get-OktaLogStream: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogStreamId** | **String**| id of the log stream | 

### Return type

[**LogStream**](LogStream.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaListLogStreams"></a>
# **Invoke-OktaListLogStreams**
> LogStream[] Invoke-OktaListLogStreams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>

List all Log Streams

Lists all log streams. You can request a paginated list or a subset of Log Streams that match a supported filter expression.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$After = "MyAfter" # String | The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the `Link` response header. See [Pagination](/#pagination) for more information. (optional)
$Limit = 56 # Int32 | A limit on the number of objects to return. (optional) (default to 20)
$Filter = "type eq "aws_eventbridge"" # String | SCIM filter expression that filters the results. This expression only supports the `eq` operator on either the `status` or `type`. (optional)

# List all Log Streams
try {
    $Result = Invoke-OktaListLogStreams -After $After -Limit $Limit -Filter $Filter
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaListLogStreams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **After** | **String**| The cursor to use for pagination. It is an opaque string that specifies your current location in the list and is obtained from the &#x60;Link&#x60; response header. See [Pagination](/#pagination) for more information. | [optional] 
 **Limit** | **Int32**| A limit on the number of objects to return. | [optional] [default to 20]
 **Filter** | **String**| SCIM filter expression that filters the results. This expression only supports the &#x60;eq&#x60; operator on either the &#x60;status&#x60; or &#x60;type&#x60;. | [optional] 

### Return type

[**LogStream[]**](LogStream.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-OktaReplaceLogStream"></a>
# **Invoke-OktaReplaceLogStream**
> LogStream Invoke-OktaReplaceLogStream<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LogStreamId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instance] <PSCustomObject><br>

Replace a Log Stream

Replaces a log stream by `logStreamId`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-OktaConfiguration

# Configure your client ID and scope for authorization
$Configuration.ClientId = "YOUR_CLIENT_ID"
$Configuration.Scope = "OTKA_SCOPES" # for example okta.users.read

$LogStreamId = "abcd1234" # String | id of the log stream
$HrefObjectHints = Initialize-HrefObjectHints -Allow "DELETE"
$HrefObject = Initialize-HrefObject -Hints $HrefObjectHints -Href "MyHref" -Name "MyName" -Type "MyType"

$LogStreamLinks = Initialize-LogStreamLinks -Self $HrefObject -Activate $HrefObject -Deactivate $HrefObject

$LogStream = Initialize-LogStream -Created (Get-Date) -Id "MyId" -LastUpdated (Get-Date) -Name "MyName" -Status "ACTIVE" -Type "aws_eventbridge" -Links $LogStreamLinks # LogStream | 

# Replace a Log Stream
try {
    $Result = Invoke-OktaReplaceLogStream -LogStreamId $LogStreamId -Instance $Instance
} catch {
    Write-Host ("Exception occurred when calling Invoke-OktaReplaceLogStream: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LogStreamId** | **String**| id of the log stream | 
 **Instance** | [**LogStream**](LogStream.md)|  | 

### Return type

[**LogStream**](LogStream.md) (PSCustomObject)

### Authorization

[apiToken](../README.md#apiToken), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

