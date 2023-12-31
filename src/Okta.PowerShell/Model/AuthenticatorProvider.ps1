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

.PARAMETER Configuration
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

AuthenticatorProvider<PSCustomObject>
#>

function Initialize-OktaAuthenticatorProvider {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Configuration},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaAuthenticatorProvider' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "configuration" = ${Configuration}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AuthenticatorProvider<PSCustomObject>

.DESCRIPTION

Convert from JSON to AuthenticatorProvider<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AuthenticatorProvider<PSCustomObject>
#>
function ConvertFrom-OktaJsonToAuthenticatorProvider {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaAuthenticatorProvider' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaAuthenticatorProvider
        $AllProperties = ("configuration", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "configuration" = ${Configuration}
            "type" = ${Type}
        }

        return $PSO
    }

}

