#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER DefaultScope
No description available.
.PARAMETER Mode
No description available.
.OUTPUTS

OpenIdConnectApplicationIdpInitiatedLogin<PSCustomObject>
#>

function Initialize-OktaOpenIdConnectApplicationIdpInitiatedLogin {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DefaultScope},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Mode}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaOpenIdConnectApplicationIdpInitiatedLogin' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "default_scope" = ${DefaultScope}
            "mode" = ${Mode}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OpenIdConnectApplicationIdpInitiatedLogin<PSCustomObject>

.DESCRIPTION

Convert from JSON to OpenIdConnectApplicationIdpInitiatedLogin<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OpenIdConnectApplicationIdpInitiatedLogin<PSCustomObject>
#>
function ConvertFrom-OktaJsonToOpenIdConnectApplicationIdpInitiatedLogin {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaOpenIdConnectApplicationIdpInitiatedLogin' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaOpenIdConnectApplicationIdpInitiatedLogin
        $AllProperties = ("default_scope", "mode")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "default_scope"))) { #optional property not found
            $DefaultScope = $null
        } else {
            $DefaultScope = $JsonParameters.PSobject.Properties["default_scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["mode"].value
        }

        $PSO = [PSCustomObject]@{
            "default_scope" = ${DefaultScope}
            "mode" = ${Mode}
        }

        return $PSO
    }

}

