#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Activate a Network Zone

.DESCRIPTION

No description available.

.PARAMETER ZoneId
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

NetworkZone
#>
function Invoke-OktaActivateNetworkZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ZoneId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaActivateNetworkZone' | Write-Debug
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

        $LocalVarUri = '/api/v1/zones/{zoneId}/lifecycle/activate'
        if (!$ZoneId) {
            throw "Error! The required parameter `ZoneId` missing when calling activateNetworkZone."
        }
        $LocalVarUri = $LocalVarUri.replace('{zoneId}', [System.Web.HTTPUtility]::UrlEncode($ZoneId))

        if ($Uri) {
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
                                -ReturnType "NetworkZone" `
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

Create a Network Zone

.DESCRIPTION

No description available.

.PARAMETER Zone
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

NetworkZone
#>
function New-OktaNetworkZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Zone},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: New-OktaNetworkZone' | Write-Debug
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

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/api/v1/zones'

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if (!$Zone) {
            throw "Error! The required parameter `Zone` missing when calling createNetworkZone."
        }

        

        if ($IncludeNullValues.IsPresent) {
            $LocalVarBodyParameter = $Zone | ConvertTo-Json -Depth 100
        }
        else{
            $LocalVarBodyParameter = Remove-NullProperties -InputObject $Zone | ConvertTo-Json -Depth 100
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
                                -ReturnType "NetworkZone" `
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

Deactivate a Network Zone

.DESCRIPTION

No description available.

.PARAMETER ZoneId
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

NetworkZone
#>
function Invoke-OktaDeactivateNetworkZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ZoneId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaDeactivateNetworkZone' | Write-Debug
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

        $LocalVarUri = '/api/v1/zones/{zoneId}/lifecycle/deactivate'
        if (!$ZoneId) {
            throw "Error! The required parameter `ZoneId` missing when calling deactivateNetworkZone."
        }
        $LocalVarUri = $LocalVarUri.replace('{zoneId}', [System.Web.HTTPUtility]::UrlEncode($ZoneId))

        if ($Uri) {
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
                                -ReturnType "NetworkZone" `
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

Delete a Network Zone

.DESCRIPTION

No description available.

.PARAMETER ZoneId
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
function Invoke-OktaDeleteNetworkZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ZoneId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaDeleteNetworkZone' | Write-Debug
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

        $LocalVarUri = '/api/v1/zones/{zoneId}'
        if (!$ZoneId) {
            throw "Error! The required parameter `ZoneId` missing when calling deleteNetworkZone."
        }
        $LocalVarUri = $LocalVarUri.replace('{zoneId}', [System.Web.HTTPUtility]::UrlEncode($ZoneId))

        if ($Uri) {
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

        $LocalVarResult = Invoke-OktaApiClient -Method 'DELETE' `
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

Retrieve a Network Zone

.DESCRIPTION

No description available.

.PARAMETER ZoneId
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

NetworkZone
#>
function Get-OktaNetworkZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ZoneId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Get-OktaNetworkZone' | Write-Debug
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

        $LocalVarUri = '/api/v1/zones/{zoneId}'
        if (!$ZoneId) {
            throw "Error! The required parameter `ZoneId` missing when calling getNetworkZone."
        }
        $LocalVarUri = $LocalVarUri.replace('{zoneId}', [System.Web.HTTPUtility]::UrlEncode($ZoneId))

        if ($Uri) {
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
                                -ReturnType "NetworkZone" `
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

List all Network Zones

.DESCRIPTION

No description available.

.PARAMETER After
Specifies the pagination cursor for the next page of network zones

.PARAMETER Limit
Specifies the number of results for a page

.PARAMETER Filter
Filters zones by usage or id expression


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

NetworkZone[]
#>
function Invoke-OktaListNetworkZones {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${After},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filter},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Invoke-OktaListNetworkZones' | Write-Debug
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

        $LocalVarUri = '/api/v1/zones'

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($After) {
            $LocalVarQueryParameters['after'] = $After
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Filter) {
            $LocalVarQueryParameters['filter'] = $Filter
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
                                -ReturnType "NetworkZone[]" `
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

Replace a Network Zone

.DESCRIPTION

No description available.

.PARAMETER ZoneId
No description available.

.PARAMETER Zone
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.PARAMETER IncludeNullValues

A switch when turned on will include any null values in the payload; Null values are removed by default. Optional.

.OUTPUTS

NetworkZone
#>
function Update-OktaNetworkZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ZoneId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Zone},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo,
        [Switch]
        $IncludeNullValues        
    )

    Process {
        'Calling method: Update-OktaNetworkZone' | Write-Debug
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

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/api/v1/zones/{zoneId}'
        if (!$ZoneId) {
            throw "Error! The required parameter `ZoneId` missing when calling updateNetworkZone."
        }
        $LocalVarUri = $LocalVarUri.replace('{zoneId}', [System.Web.HTTPUtility]::UrlEncode($ZoneId))

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if (!$Zone) {
            throw "Error! The required parameter `Zone` missing when calling updateNetworkZone."
        }

        

        if ($IncludeNullValues.IsPresent) {
            $LocalVarBodyParameter = $Zone | ConvertTo-Json -Depth 100
        }
        else{
            $LocalVarBodyParameter = Remove-NullProperties -InputObject $Zone | ConvertTo-Json -Depth 100
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

        $LocalVarResult = Invoke-OktaApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "NetworkZone" `
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

