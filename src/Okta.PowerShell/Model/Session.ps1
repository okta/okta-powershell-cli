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

.PARAMETER Amr
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER ExpiresAt
No description available.
.PARAMETER Id
No description available.
.PARAMETER Idp
No description available.
.PARAMETER LastFactorVerification
No description available.
.PARAMETER LastPasswordVerification
No description available.
.PARAMETER Login
No description available.
.PARAMETER Status
No description available.
.PARAMETER UserId
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

Session<PSCustomObject>
#>

function Initialize-OktaSession {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Amr},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Idp},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastFactorVerification},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastPasswordVerification},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Login},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACTIVE", "MFA_ENROLL", "MFA_REQUIRED")]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "amr" = ${Amr}
            "createdAt" = ${CreatedAt}
            "expiresAt" = ${ExpiresAt}
            "id" = ${Id}
            "idp" = ${Idp}
            "lastFactorVerification" = ${LastFactorVerification}
            "lastPasswordVerification" = ${LastPasswordVerification}
            "login" = ${Login}
            "status" = ${Status}
            "userId" = ${UserId}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Session<PSCustomObject>

.DESCRIPTION

Convert from JSON to Session<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Session<PSCustomObject>
#>
function ConvertFrom-OktaJsonToSession {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaSession' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaSession
        $AllProperties = ("amr", "createdAt", "expiresAt", "id", "idp", "lastFactorVerification", "lastPasswordVerification", "login", "status", "userId", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "amr"))) { #optional property not found
            $Amr = $null
        } else {
            $Amr = $JsonParameters.PSobject.Properties["amr"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "idp"))) { #optional property not found
            $Idp = $null
        } else {
            $Idp = $JsonParameters.PSobject.Properties["idp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastFactorVerification"))) { #optional property not found
            $LastFactorVerification = $null
        } else {
            $LastFactorVerification = $JsonParameters.PSobject.Properties["lastFactorVerification"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastPasswordVerification"))) { #optional property not found
            $LastPasswordVerification = $null
        } else {
            $LastPasswordVerification = $JsonParameters.PSobject.Properties["lastPasswordVerification"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "login"))) { #optional property not found
            $Login = $null
        } else {
            $Login = $JsonParameters.PSobject.Properties["login"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "amr" = ${Amr}
            "createdAt" = ${CreatedAt}
            "expiresAt" = ${ExpiresAt}
            "id" = ${Id}
            "idp" = ${Idp}
            "lastFactorVerification" = ${LastFactorVerification}
            "lastPasswordVerification" = ${LastPasswordVerification}
            "login" = ${Login}
            "status" = ${Status}
            "userId" = ${UserId}
            "_links" = ${Links}
        }

        return $PSO
    }

}

