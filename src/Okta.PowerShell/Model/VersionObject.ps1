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

.PARAMETER Minimum
No description available.
.OUTPUTS

VersionObject<PSCustomObject>
#>

function Initialize-OktaVersionObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Minimum}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaVersionObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "minimum" = ${Minimum}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VersionObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to VersionObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VersionObject<PSCustomObject>
#>
function ConvertFrom-OktaJsonToVersionObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaVersionObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaVersionObject
        $AllProperties = ("minimum")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minimum"))) { #optional property not found
            $Minimum = $null
        } else {
            $Minimum = $JsonParameters.PSobject.Properties["minimum"].value
        }

        $PSO = [PSCustomObject]@{
            "minimum" = ${Minimum}
        }

        return $PSO
    }

}

