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

.PARAMETER City
No description available.
.PARAMETER Country
No description available.
.PARAMETER Geolocation
No description available.
.PARAMETER PostalCode
No description available.
.PARAMETER State
No description available.
.OUTPUTS

LogGeographicalContext<PSCustomObject>
#>

function Initialize-OktaLogGeographicalContext {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${City},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Country},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Geolocation},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PostalCode},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${State}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaLogGeographicalContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "city" = ${City}
            "country" = ${Country}
            "geolocation" = ${Geolocation}
            "postalCode" = ${PostalCode}
            "state" = ${State}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LogGeographicalContext<PSCustomObject>

.DESCRIPTION

Convert from JSON to LogGeographicalContext<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LogGeographicalContext<PSCustomObject>
#>
function ConvertFrom-OktaJsonToLogGeographicalContext {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaLogGeographicalContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaLogGeographicalContext
        $AllProperties = ("city", "country", "geolocation", "postalCode", "state")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "city"))) { #optional property not found
            $City = $null
        } else {
            $City = $JsonParameters.PSobject.Properties["city"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "country"))) { #optional property not found
            $Country = $null
        } else {
            $Country = $JsonParameters.PSobject.Properties["country"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "geolocation"))) { #optional property not found
            $Geolocation = $null
        } else {
            $Geolocation = $JsonParameters.PSobject.Properties["geolocation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "postalCode"))) { #optional property not found
            $PostalCode = $null
        } else {
            $PostalCode = $JsonParameters.PSobject.Properties["postalCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        $PSO = [PSCustomObject]@{
            "city" = ${City}
            "country" = ${Country}
            "geolocation" = ${Geolocation}
            "postalCode" = ${PostalCode}
            "state" = ${State}
        }

        return $PSO
    }

}

