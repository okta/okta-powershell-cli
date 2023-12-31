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

.PARAMETER Expiration
No description available.
.PARAMETER Support
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

OrgOktaSupportSettingsObj<PSCustomObject>
#>

function Initialize-OktaOrgOktaSupportSettingsObj {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Expiration},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DISABLED", "ENABLED")]
        [PSCustomObject]
        ${Support},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaOrgOktaSupportSettingsObj' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expiration" = ${Expiration}
            "support" = ${Support}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrgOktaSupportSettingsObj<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrgOktaSupportSettingsObj<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrgOktaSupportSettingsObj<PSCustomObject>
#>
function ConvertFrom-OktaJsonToOrgOktaSupportSettingsObj {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaOrgOktaSupportSettingsObj' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaOrgOktaSupportSettingsObj
        $AllProperties = ("expiration", "support", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiration"))) { #optional property not found
            $Expiration = $null
        } else {
            $Expiration = $JsonParameters.PSobject.Properties["expiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "support"))) { #optional property not found
            $Support = $null
        } else {
            $Support = $JsonParameters.PSobject.Properties["support"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "expiration" = ${Expiration}
            "support" = ${Support}
            "_links" = ${Links}
        }

        return $PSO
    }

}

