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

.PARAMETER Id
No description available.
.PARAMETER LastUpdated
No description available.
.PARAMETER Priority
No description available.
.PARAMETER VarProfile
No description available.
.PARAMETER Embedded
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

ApplicationGroupAssignment<PSCustomObject>
#>

function Initialize-OktaApplicationGroupAssignment {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Priority},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarProfile},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Embedded},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaApplicationGroupAssignment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "priority" = ${Priority}
            "profile" = ${VarProfile}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationGroupAssignment<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationGroupAssignment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationGroupAssignment<PSCustomObject>
#>
function ConvertFrom-OktaJsonToApplicationGroupAssignment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaApplicationGroupAssignment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaApplicationGroupAssignment
        $AllProperties = ("id", "lastUpdated", "priority", "profile", "_embedded", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "priority"))) { #optional property not found
            $Priority = $null
        } else {
            $Priority = $JsonParameters.PSobject.Properties["priority"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "profile"))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties["profile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_embedded"))) { #optional property not found
            $Embedded = $null
        } else {
            $Embedded = $JsonParameters.PSobject.Properties["_embedded"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "priority" = ${Priority}
            "profile" = ${VarProfile}
            "_embedded" = ${Embedded}
            "_links" = ${Links}
        }

        return $PSO
    }

}

