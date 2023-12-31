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

.PARAMETER Next
No description available.
.PARAMETER ResourceSet
No description available.
.OUTPUTS

ResourceSetResourcesLinks<PSCustomObject>
#>

function Initialize-OktaResourceSetResourcesLinks {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Next},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ResourceSet}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaResourceSetResourcesLinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "next" = ${Next}
            "resource-set" = ${ResourceSet}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResourceSetResourcesLinks<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResourceSetResourcesLinks<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResourceSetResourcesLinks<PSCustomObject>
#>
function ConvertFrom-OktaJsonToResourceSetResourcesLinks {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaResourceSetResourcesLinks' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaResourceSetResourcesLinks
        $AllProperties = ("next", "resource-set")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "next"))) { #optional property not found
            $Next = $null
        } else {
            $Next = $JsonParameters.PSobject.Properties["next"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resource-set"))) { #optional property not found
            $ResourceSet = $null
        } else {
            $ResourceSet = $JsonParameters.PSobject.Properties["resource-set"].value
        }

        $PSO = [PSCustomObject]@{
            "next" = ${Next}
            "resource-set" = ${ResourceSet}
        }

        return $PSO
    }

}

