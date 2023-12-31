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

.PARAMETER AuthProvider
No description available.
.PARAMETER People
No description available.
.OUTPUTS

PasswordPolicyConditionsAllOf<PSCustomObject>
#>

function Initialize-OktaPasswordPolicyConditionsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthProvider},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${People}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaPasswordPolicyConditionsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "authProvider" = ${AuthProvider}
            "people" = ${People}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordPolicyConditionsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordPolicyConditionsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordPolicyConditionsAllOf<PSCustomObject>
#>
function ConvertFrom-OktaJsonToPasswordPolicyConditionsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaPasswordPolicyConditionsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaPasswordPolicyConditionsAllOf
        $AllProperties = ("authProvider", "people")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authProvider"))) { #optional property not found
            $AuthProvider = $null
        } else {
            $AuthProvider = $JsonParameters.PSobject.Properties["authProvider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "people"))) { #optional property not found
            $People = $null
        } else {
            $People = $JsonParameters.PSobject.Properties["people"].value
        }

        $PSO = [PSCustomObject]@{
            "authProvider" = ${AuthProvider}
            "people" = ${People}
        }

        return $PSO
    }

}

