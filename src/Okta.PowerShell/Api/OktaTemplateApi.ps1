#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create an SMS Template

.DESCRIPTION

No description available.

.PARAMETER SmsTemplate
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SmsTemplate
#>
function New-OktaSmsTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SmsTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-OktaSmsTemplate' | Write-Debug
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

        $LocalVarUri = '/api/v1/templates/sms'

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if (!$SmsTemplate) {
            throw "Error! The required parameter `SmsTemplate` missing when calling createSmsTemplate."
        }

        $LocalVarBodyParameter = $SmsTemplate | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "SmsTemplate" `
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

Delete an SMS Template

.DESCRIPTION

No description available.

.PARAMETER TemplateId
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-OktaDeleteSmsTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TemplateId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaDeleteSmsTemplate' | Write-Debug
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

        $LocalVarUri = '/api/v1/templates/sms/{templateId}'
        if (!$TemplateId) {
            throw "Error! The required parameter `TemplateId` missing when calling deleteSmsTemplate."
        }
        $LocalVarUri = $LocalVarUri.replace('{templateId}', [System.Web.HTTPUtility]::UrlEncode($TemplateId))

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
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

Retrieve an SMS Template

.DESCRIPTION

No description available.

.PARAMETER TemplateId
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SmsTemplate
#>
function Get-OktaSmsTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TemplateId},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-OktaSmsTemplate' | Write-Debug
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

        $LocalVarUri = '/api/v1/templates/sms/{templateId}'
        if (!$TemplateId) {
            throw "Error! The required parameter `TemplateId` missing when calling getSmsTemplate."
        }
        $LocalVarUri = $LocalVarUri.replace('{templateId}', [System.Web.HTTPUtility]::UrlEncode($TemplateId))

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "SmsTemplate" `
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

List all SMS Templates

.DESCRIPTION

No description available.

.PARAMETER TemplateType
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SmsTemplate[]
#>
function Invoke-OktaListSmsTemplates {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TemplateType},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaListSmsTemplates' | Write-Debug
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

        $LocalVarUri = '/api/v1/templates/sms'

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if ($TemplateType) {
            $LocalVarQueryParameters['templateType'] = $TemplateType
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "SmsTemplate[]" `
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

Update an SMS Template

.DESCRIPTION

No description available.

.PARAMETER TemplateId
No description available.

.PARAMETER SmsTemplate
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SmsTemplate
#>
function Invoke-OktaPartialUpdateSmsTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TemplateId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SmsTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-OktaPartialUpdateSmsTemplate' | Write-Debug
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

        $LocalVarUri = '/api/v1/templates/sms/{templateId}'
        if (!$TemplateId) {
            throw "Error! The required parameter `TemplateId` missing when calling partialUpdateSmsTemplate."
        }
        $LocalVarUri = $LocalVarUri.replace('{templateId}', [System.Web.HTTPUtility]::UrlEncode($TemplateId))

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if (!$SmsTemplate) {
            throw "Error! The required parameter `SmsTemplate` missing when calling partialUpdateSmsTemplate."
        }

        $LocalVarBodyParameter = $SmsTemplate | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "SmsTemplate" `
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

Replace an SMS Template

.DESCRIPTION

No description available.

.PARAMETER TemplateId
No description available.

.PARAMETER SmsTemplate
No description available.


.PARAMETER Uri

Specifies the absolute Uri to be used when making the request. Recommended for paginated results. Optional.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SmsTemplate
#>
function Update-OktaSmsTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TemplateId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SmsTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Uri},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-OktaSmsTemplate' | Write-Debug
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

        $LocalVarUri = '/api/v1/templates/sms/{templateId}'
        if (!$TemplateId) {
            throw "Error! The required parameter `TemplateId` missing when calling updateSmsTemplate."
        }
        $LocalVarUri = $LocalVarUri.replace('{templateId}', [System.Web.HTTPUtility]::UrlEncode($TemplateId))

        if ($Uri) {
            $ParsedUri = Invoke-ParseAbsoluteUri -Uri $Uri
            $LocalVarUri = $ParsedUri["RelativeUri"]
            $LocalVarQueryParameters = $ParsedUri["QueryParameters"]
        }

        if (!$SmsTemplate) {
            throw "Error! The required parameter `SmsTemplate` missing when calling updateSmsTemplate."
        }

        $LocalVarBodyParameter = $SmsTemplate | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["apiToken"]) {
            $LocalVarHeaderParameters['apiToken'] = $Configuration["ApiKey"]["apiToken"]
            Write-Verbose ("Using API key 'apiToken' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "SmsTemplate" `
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

