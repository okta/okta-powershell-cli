#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

List all Subscriptions of a Custom Role with a specific notification type

.DESCRIPTION

No description available.

.PARAMETER RoleTypeOrRoleId
No description available.

.PARAMETER NotificationType
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

Subscription
#>
function Get-OktaRoleSubscriptionByNotificationType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RoleTypeOrRoleId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Get-OktaRoleSubscriptionByNotificationType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}'
        if (!$PSBoundParameters.ContainsKey("RoleTypeOrRoleId")) {
            throw "Error! The required parameter `RoleTypeOrRoleId` missing when calling getRoleSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{roleTypeOrRoleId}', [System.Web.HTTPUtility]::UrlEncode($RoleTypeOrRoleId))
        if (!$PSBoundParameters.ContainsKey("NotificationType")) {
            throw "Error! The required parameter `NotificationType` missing when calling getRoleSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationType}', [System.Web.HTTPUtility]::UrlEncode($NotificationType))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Subscription" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List all Subscriptions by type

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER NotificationType
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

Subscription
#>
function Get-OktaUserSubscriptionByNotificationType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Get-OktaUserSubscriptionByNotificationType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/subscriptions/{notificationType}'
        if (!$PSBoundParameters.ContainsKey("UserId")) {
            throw "Error! The required parameter `UserId` missing when calling getUserSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$PSBoundParameters.ContainsKey("NotificationType")) {
            throw "Error! The required parameter `NotificationType` missing when calling getUserSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationType}', [System.Web.HTTPUtility]::UrlEncode($NotificationType))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Subscription" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List all Subscriptions of a Custom Role

.DESCRIPTION

No description available.

.PARAMETER RoleTypeOrRoleId
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

Subscription[]
#>
function Invoke-OktaListRoleSubscriptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RoleTypeOrRoleId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaListRoleSubscriptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/roles/{roleTypeOrRoleId}/subscriptions'
        if (!$PSBoundParameters.ContainsKey("RoleTypeOrRoleId")) {
            throw "Error! The required parameter `RoleTypeOrRoleId` missing when calling listRoleSubscriptions."
        }
        $LocalVarUri = $LocalVarUri.replace('{roleTypeOrRoleId}', [System.Web.HTTPUtility]::UrlEncode($RoleTypeOrRoleId))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Subscription[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List all Subscriptions

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

Subscription[]
#>
function Invoke-OktaListUserSubscriptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaListUserSubscriptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/subscriptions'
        if (!$PSBoundParameters.ContainsKey("UserId")) {
            throw "Error! The required parameter `UserId` missing when calling listUserSubscriptions."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Subscription[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Subscribe a Custom Role to a specific notification type

.DESCRIPTION

No description available.

.PARAMETER RoleTypeOrRoleId
No description available.

.PARAMETER NotificationType
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

None
#>
function Invoke-OktaSubscribeRoleSubscriptionByNotificationType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RoleTypeOrRoleId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaSubscribeRoleSubscriptionByNotificationType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/subscribe'
        if (!$PSBoundParameters.ContainsKey("RoleTypeOrRoleId")) {
            throw "Error! The required parameter `RoleTypeOrRoleId` missing when calling subscribeRoleSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{roleTypeOrRoleId}', [System.Web.HTTPUtility]::UrlEncode($RoleTypeOrRoleId))
        if (!$PSBoundParameters.ContainsKey("NotificationType")) {
            throw "Error! The required parameter `NotificationType` missing when calling subscribeRoleSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationType}', [System.Web.HTTPUtility]::UrlEncode($NotificationType))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Subscribe to a specific notification type

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER NotificationType
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

None
#>
function Invoke-OktaSubscribeUserSubscriptionByNotificationType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaSubscribeUserSubscriptionByNotificationType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/subscriptions/{notificationType}/subscribe'
        if (!$PSBoundParameters.ContainsKey("UserId")) {
            throw "Error! The required parameter `UserId` missing when calling subscribeUserSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$PSBoundParameters.ContainsKey("NotificationType")) {
            throw "Error! The required parameter `NotificationType` missing when calling subscribeUserSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationType}', [System.Web.HTTPUtility]::UrlEncode($NotificationType))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Unsubscribe a Custom Role from a specific notification type

.DESCRIPTION

No description available.

.PARAMETER RoleTypeOrRoleId
No description available.

.PARAMETER NotificationType
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

None
#>
function Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RoleTypeOrRoleId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaUnsubscribeRoleSubscriptionByNotificationType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/roles/{roleTypeOrRoleId}/subscriptions/{notificationType}/unsubscribe'
        if (!$PSBoundParameters.ContainsKey("RoleTypeOrRoleId")) {
            throw "Error! The required parameter `RoleTypeOrRoleId` missing when calling unsubscribeRoleSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{roleTypeOrRoleId}', [System.Web.HTTPUtility]::UrlEncode($RoleTypeOrRoleId))
        if (!$PSBoundParameters.ContainsKey("NotificationType")) {
            throw "Error! The required parameter `NotificationType` missing when calling unsubscribeRoleSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationType}', [System.Web.HTTPUtility]::UrlEncode($NotificationType))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Unsubscribe from a specific notification type

.DESCRIPTION

No description available.

.PARAMETER UserId
No description available.

.PARAMETER NotificationType
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

None
#>
function Invoke-OktaUnsubscribeUserSubscriptionByNotificationType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${UserId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaUnsubscribeUserSubscriptionByNotificationType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-OktaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/api/v1/users/{userId}/subscriptions/{notificationType}/unsubscribe'
        if (!$PSBoundParameters.ContainsKey("UserId")) {
            throw "Error! The required parameter `UserId` missing when calling unsubscribeUserSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{userId}', [System.Web.HTTPUtility]::UrlEncode($UserId))
        if (!$PSBoundParameters.ContainsKey("NotificationType")) {
            throw "Error! The required parameter `NotificationType` missing when calling unsubscribeUserSubscriptionByNotificationType."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationType}', [System.Web.HTTPUtility]::UrlEncode($NotificationType))

        if ($PSBoundParameters.ContainsKey("Uri")) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"]) {
            $AuthorizationHeaderValue = $Configuration["ApiKey"]
            if(-not ([string]::IsNullOrEmpty($Configuration["ApiKeyPrefix"]))){
                $AuthorizationHeaderValue = $Configuration["ApiKeyPrefix"] + " " + $AuthorizationHeaderValue
            }
            $LocalVarHeaderParameters['Authorization'] = $AuthorizationHeaderValue
            Write-Verbose ("Using API key Authorization in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            if ($null -ne $LocalVarResult.Headers.Link) {
                foreach($Link in $LocalVarResult.Headers.Link)   {
                    # Link looks like '<https://myorg.okta.com/api/v1/groups?after=00g9erhe4rJGXhdYs5d7&limit=1>;rel="next"
                    if ($Link.Contains('rel="next"', 'InvariantCultureIgnoreCase')) {
                        $LinkValue = $Link.split(";")[0].ToString()
                        $LocalVarResult.NextPageUri = $LinkValue -replace '[<>]',''
                    }
                }
            }
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

