# Okta.PowerShell - The PowerShell module for the Okta Management API

* [Release status](#release-status)
* [Need help?](#need-help)
* [Getting started](#getting-started)
* [Usage guide](#usage-guide)
* [Contributing](#contributing)

This repository contains the Okta management PowerShell module. This PowerShell module can be used to easily interact with the Okta management API and:
 
* Create and update users with the [Users API](https://developer.okta.com/docs/api/resources/users)
* Add security factors to users with the [Factors API](https://developer.okta.com/docs/api/resources/factors)
* Manage groups with the [Groups API](https://developer.okta.com/docs/api/resources/groups)
* Manage applications with the [Apps API](https://developer.okta.com/docs/api/resources/apps)
* Manage logs with the [Logs API](https://developer.okta.com/docs/api/resources/system_log)
* Manage sessions with the [Sessions API](https://developer.okta.com/docs/api/resources/sessions)
* Manage templates with the [Custom Templates API](https://developer.okta.com/docs/reference/api/templates/)
* Manage identity providers with the [Identity Providers API](https://developer.okta.com/docs/reference/api/idps/)
* Manage authorization servers with the [Authorization Servers API](https://developer.okta.com/docs/reference/api/authorization-servers/)
* Manage event hooks with the [Event Hooks Management API](https://developer.okta.com/docs/reference/api/event-hooks/)
* Manage inline hooks with the [Inline Hooks Management API](https://developer.okta.com/docs/reference/api/inline-hooks/).
* Manage features with the [Features API](https://developer.okta.com/docs/reference/api/features/).
* Manage linked objects with the [Linked Objects API](https://developer.okta.com/docs/reference/api/linked-objects/).
* Manage trusted origins with the [Trusted Origins API](https://developer.okta.com/docs/reference/api/trusted-origins/).
* Manage user types with the [User Types API](https://developer.okta.com/docs/reference/api/user-types/).
* Manage custom domains with the [Domains API](https://developer.okta.com/docs/reference/api/domains/).
* Manage network zones with the [Zones API's endpoints](https://developer.okta.com/docs/reference/api/zones/).
* Much more!

> Note: For more details about the APIs and models the SDK support, check out the [API docs](/API_README.md) 

## Release status

This library uses semantic versioning and follows Okta's [library version policy](https://developer.okta.com/code/library-versions/).

| Version | Status                    |
| ------- | ------------------------- |
| 1.0.0-beta | :warning: Beta |
 
The latest release can always be found on the [releases page][github-releases]. For more information about our SDKs' lifecycle, check out [our docs](https://developer.okta.com/code/library-versions/).

## Need help?
 
If you run into problems using the Okta PowerShell module, you can
 
* Ask questions on the [Okta Developer Forums][devforum]
* Post [issues][github-issues] here on GitHub (for code errors)


## Getting started

This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.0.0
- SDK version: 1.0.0-beta
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen
    For more information, please visit [https://developer.okta.com/](https://developer.okta.com/)

<a id="frameworks-supported"></a>
The Okta PowerShell module is compatible with:

- PowerShell 6.2 or later
- Mac/Windows
- OIE and Classic Okta orgs

<a id="installation"></a>
## Installation

To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\Okta.PowerShell' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\Okta.PowerShell' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "Okta.PowerShell"; ModuleVersion = "<MODULE_VERSION>"}
```

<a id="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Security recommendations

We recommend limiting the access permissions of your Okta.PowerShell scripts to only authorized users. 

Add the appropriate users or groups and assign the necessary permissions to the `OktaConfiguration.ps1` file (Full Control, Read & Execute, etc.), and remove any unnecessary users or groups from the list.

:Warning: The `OktaConfiguration.ps1` file contains secrets, so we recommend using least privilege access to the configuration file.

> Note: For more information about PowerShell script security, check out [the official PowerShell security guide](https://learn.microsoft.com/en-us/mem/configmgr/apps/deploy-use/learn-script-security).

## Usage guide

### Prerequisites 

The PowerShell module uses the [device authorization flow](https://developer.okta.com/docs/guides/device-authorization-grant/main/) to obtain an access token, so it requires, at least, three configuration values. These are the
values for the [Okta Org
domain](https://developer.okta.com/docs/guides/find-your-domain/main/), the client ID of the [OIDC Native Application](https://developer.okta.com/blog/2021/11/12/native-sso) and the scope for the API grants you are gonna need. For example, if you are going to get groups then you will need the grant `okta.group.read` configured in your scope.

### non-admin users

Non-admin users will require to be granted specific permissions to perform certain tasks and access resources.

Check out the following resources to learn more:
* [Custom admin roles](https://help.okta.com/en-us/content/topics/security/custom-admin-role/work-with-admin.htm)
* [Standard admin roles and permissions](https://help.okta.com/en-us/content/topics/security/administrators-admin-comparison.htm)

### Set your configuration and execute commands 

1. Set your configuration

```sh
$Configuration = Get-OktaConfiguration
$Configuration.BaseUrl = 'https://myorg.okta.com'
$Configuration.ClientId = 'MY_CLIENT_ID'
$Configuration.Scope = "okta.groups.read" # or "okta.groups.read okta.apps.read"
```

2. Authorize your device

```sh
Invoke-OktaEstablishAccessToken
```
> Note: You have to open the browser and navigate to the provided URL to complete the flow. Once the device is authorized, go back to the PowerShell terminal.

3. Invoke commands

```sh
Invoke-OktaListGroups

id                    : 00g9erf7s3ydK79IX5d7
created               : 5/5/23 1:45:05 PM
lastUpdated           : 5/5/23 1:45:05 PM
lastMembershipUpdated : 5/5/23 1:45:05 PM
objectClass           : {okta:user_group}
type                  : OKTA_GROUP
profile               : @{name=Sales; description=}
_links                : @{logo=System.Object[]; users=; apps=}
```

> Note: For more details about commands, check out the [documentation for API endpoints](/API_README.md)

> Note: If you want to remove the access token from configuration you can execute `Invoke-OktaRemoveAccessToken`

### Get a user

```sh
$User = Get-OktaUser -UserId "foo"
```         

### Create a user

```sh
$UserProfile = [PSCustomObject]@{
                firstName = 'John'
                lastName = 'Doe'
                login = 'john.doe@mail.com'
                email = 'john.doe@mail.com'
            }

$CreateUserRequest = Initialize-OktaCreateUserRequest -VarProfile $UserProfile -GroupIds 'foo'
$TestResult = New-OktaUser -Body $CreateUserRequest
```

> Note: If you initialize objects using `PSCustomObject`, ensure the casing is correct.

### List users with pagination

```sh
$Users  = Invoke-OktaListUsers -Limit 10 
```

Utilize the `-withHttpInfo`` flag to retrieve additional response properties, including `NextPageUri` for accessing the subsequent page of results. Additionally, you can seamlessly access all response headers through the Headers property.

To paginate results, use `Uri` param, which allows passing absolute URIs:

```sh
$UsersResponse  = Invoke-OktaListUsers -Limit 10 -withHttpInfo

While ($UsersResponse.NextPageUri)
{
	$UsersResponse = Invoke-OktaListUsers -Uri $UsersResponse.NextPageUri  -withHttpInfo #This time you can pass the absolute Uri with already contains query params such as "limit" or/and "after"
    $UsersList =  $UsersResponse.Response
}
```

### Create an application

```sh
$OAuthClient = [PSCustomObject]@{
                Client_Uri = "https://example.com/client"
                Logo_Uri = "https://example.com/assets/images/logo-new.png"
                Response_Types = @("token", "id_token", "code")
                Redirect_Uris = @("https://example.com/oauth2/callback", "myapp://callback")
                Post_Logout_Redirect_Uris = @("https://example.com/postlogout", "myapp://postlogoutcallback")
                Grant_Types = @("implicit", "authorization_code")
                Application_Type = "native"
                Tos_Uri = "https://example.com/client/tos"
                Policy_Uri = "https://example.com/client/policy"
            }
# a simple test to create an object
$Settings = Initialize-OktaOpenIdConnectApplicationSettings -OauthClient $OAuthClient

$NewApp = Initialize-OktaOpenIdConnectApplication -Label "New App" -SignOnMode "OPENID_CONNECT" -Settings $Settings

```

> Note: For more API samples checkout our [tests](https://github.com/okta/okta-powershell-cli/tree/main/tests/)

## Rate Limiting

The Okta API will return 429 responses if too many requests are made within a given time. Please see [Rate Limiting at Okta] for a complete list of which endpoints are rate limited.  When a 429 error is received, the `X-Rate-Limit-Reset` header will tell you the time at which you can retry. This section discusses  methods for handling rate limiting with this SDK.

### Built-In Retry

The Okta.PowerShell module uses a built-in retry strategy to automatically retry on 429 errors.

You can configure the following options when using the built-in retry strategy:

| Configuration Option | Description |
| ---------------------- | -------------- |
| RequestTimeout         | The waiting time in milliseconds for a request to be resolved by the client. Less than or equal to 0 means "no timeout". The default value is `$null` (None). |
| MaxRetries             | The number of times to retry. |

### Usage

```sh
$Config = Get-OktaConfiguration
$Config.MaxRetries = 2
$Config.RequestTimeout = 6000 

# Invoke your commands as usual
$Result = Invoke-OktaListApplications 
```

> Note: We're happy to accept contributions and PRs! Please see the [contribution guide](CONTRIBUTING.md) to understand how to structure a contribution.

[devforum]: https://devforum.okta.com/
[lang-landing]: https://developer.okta.com/code/dotnet/
[github-issues]: https://github.com/okta/okta-sdk-dotnet/issues
[github-releases]: https://github.com/okta/okta-powershell-cli/releases
[Rate Limiting at Okta]: https://developer.okta.com/docs/api/getting_started/rate-limits