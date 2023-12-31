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

.PARAMETER ResetPasswordUrl
No description available.
.OUTPUTS

ResetPasswordToken<PSCustomObject>
#>

function Initialize-OktaResetPasswordToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ResetPasswordUrl}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaResetPasswordToken' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "resetPasswordUrl" = ${ResetPasswordUrl}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResetPasswordToken<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResetPasswordToken<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResetPasswordToken<PSCustomObject>
#>
function ConvertFrom-OktaJsonToResetPasswordToken {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaResetPasswordToken' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaResetPasswordToken
        $AllProperties = ("resetPasswordUrl")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resetPasswordUrl"))) { #optional property not found
            $ResetPasswordUrl = $null
        } else {
            $ResetPasswordUrl = $JsonParameters.PSobject.Properties["resetPasswordUrl"].value
        }

        $PSO = [PSCustomObject]@{
            "resetPasswordUrl" = ${ResetPasswordUrl}
        }

        return $PSO
    }

}

