#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#


<#
.SYNOPSIS

Establishes the access token via the device code flow

#>

function Invoke-OktaEstablishAccessToken {
    Process {
        'Calling method: Invoke-OktaEstablishAccessToken' | Write-Debug
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
        $LocalVarContentTypes = @('application/x-www-form-urlencoded')

        $LocalVarUri = '/oauth2/v1/device/authorize'
      
        $body = @{ 
                    client_id = $Configuration.ClientId
                    scope = 'openid ' + $Configuration.Scope
                }

        $LocalVarFormParameters = $body

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PSCustomObject" `
                                -IsBodyNullable $false

        if ($LocalVarResult.StatusCode -ne 200) {
            Write-Error "Authorization failed"
            
            if ($WithHttpInfo.IsPresent) {
                return $LocalVarResult
            } else {
                return $LocalVarResult["Response"]
            }
        }
        
        $DeviceUrl = $LocalVarResult.Response.verification_uri_complete 
        $DeviceCode = $LocalVarResult.Response.device_code

        Write-Host "Open your browser and navigate to the following URL to begin the Okta device authorization for the Powershell CLI: " $DeviceUrl
        
        $keepPolling = $true
        $CountPolling = 1
        $TokenVarResult = $null
        $Timeout = 3600 # in seconds (5 min)
        $Timer = [Diagnostics.Stopwatch]::StartNew()
        
        while ($keepPolling -and $Timer.Elapsed.TotalSeconds -lt $Timeout) {
            Start-Sleep -Milliseconds 2000
            try {
                $TokenVarResult = Invoke-OktaFetchAccessToken -DeviceCode $DeviceCode

                if ($TokenVarResult.StatusCode -eq 200) {
                    $keepPolling = $false
                }
            }
            catch {
                $CountPolling++
                $DebugMessage = "Polling count: " + $CountPolling + "| Elapsed time (Timeout 3600 secs): " + $Timer.Elapsed.TotalSeconds
                Write-Debug $DebugMessage
            }
        }

        $Timer.Stop()

        if ($null -ne $TokenVarResult) {
            Set-OktaConfigurationAccessToken $TokenVarResult.Response.access_token
            Write-Host "Your token has been successfully retrieved and set to your configuration"
        }
        elseif ($Timer.Elapsed.TotalSeconds -gt $Timeout) {
                Write-Host "INFO: Polling token has timed out"
        }
        else{
            Write-Host "ERROR: No token has been established. Please try again."
        }              
    }
}

<#
.SYNOPSIS

Fetches an access token via the device code flow

.PARAMETER DeviceCode

Code obtained via the device flow


#>

function Invoke-OktaFetchAccessToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${DeviceCode}
    )

    Process {
        'Calling method: Invoke-OktaFetchAccessToken' | Write-Debug
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
        $LocalVarContentTypes = @('application/x-www-form-urlencoded')

        $LocalVarUri = '/oauth2/v1/token'
      
        $body = @{ 
                    client_id = $Configuration.ClientId
                    device_code = $DeviceCode
                    grant_type = 'urn:ietf:params:oauth:grant-type:device_code'
                }

        $LocalVarFormParameters = $body

        $LocalVarResult = Invoke-OktaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PSCustomObject" `
                                -IsBodyNullable $false

        if ($LocalVarResult.StatusCode -ne 200) {
            $DebugMessage = "Status Code " + $LocalVarResult.StatusCode + ". Continue polling." 
            Write-Debug $DebugMessage
        }
        
        return $LocalVarResult
    }
   
}

<#
.SYNOPSIS

Revokes the access token from the Configuration object

#>

function Invoke-OktaRevokeAccessToken {
    Process {
        'Calling method: Invoke-OktaRevokeAccessToken' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        # Can't revoke a token if there is no token
        if ([string]::IsNullOrWhiteSpace($Configuration.AccessToken)) {
            Write-Host "No token found in configuration."
            return
        }

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
        $LocalVarContentTypes = @('application/x-www-form-urlencoded')

        $LocalVarUri = '/oauth2/v1/revoke'
      
        $LocalVarFormParameters = @{ 
                    client_id = $Configuration.ClientId
                    token = $Configuration.AccessToken
                    token_type_hint = 'access_token'
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
                                -ReturnType $null `
                                -IsBodyNullable $false

        if ($LocalVarResult.StatusCode -ne 200) {
            $DebugMessage = "Status Code " + $LocalVarResult.StatusCode + "." 
            Write-Debug $DebugMessage
        }
        
        else {
            Set-OktaConfigurationAccessToken -AccessToken $null
            Write-Host "Your token has been successfully revoked and removed from configuration." 
        }
    }
}

