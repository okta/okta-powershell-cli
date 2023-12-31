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

.PARAMETER Alg
No description available.
.PARAMETER Created
No description available.
.PARAMETER E
No description available.
.PARAMETER ExpiresAt
No description available.
.PARAMETER KeyOps
No description available.
.PARAMETER Kid
No description available.
.PARAMETER Kty
No description available.
.PARAMETER LastUpdated
No description available.
.PARAMETER N
No description available.
.PARAMETER Status
No description available.
.PARAMETER Use
No description available.
.PARAMETER X5c
No description available.
.PARAMETER X5t
No description available.
.PARAMETER X5tS256
No description available.
.PARAMETER X5u
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

JsonWebKey<PSCustomObject>
#>

function Initialize-OktaJsonWebKey {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Alg},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${E},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${KeyOps},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Kid},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Kty},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${N},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Use},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${X5c},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${X5t},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${X5tS256},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${X5u},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaJsonWebKey' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "alg" = ${Alg}
            "created" = ${Created}
            "e" = ${E}
            "expiresAt" = ${ExpiresAt}
            "key_ops" = ${KeyOps}
            "kid" = ${Kid}
            "kty" = ${Kty}
            "lastUpdated" = ${LastUpdated}
            "n" = ${N}
            "status" = ${Status}
            "use" = ${Use}
            "x5c" = ${X5c}
            "x5t" = ${X5t}
            "x5t#S256" = ${X5tS256}
            "x5u" = ${X5u}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JsonWebKey<PSCustomObject>

.DESCRIPTION

Convert from JSON to JsonWebKey<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JsonWebKey<PSCustomObject>
#>
function ConvertFrom-OktaJsonToJsonWebKey {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaJsonWebKey' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaJsonWebKey
        $AllProperties = ("alg", "created", "e", "expiresAt", "key_ops", "kid", "kty", "lastUpdated", "n", "status", "use", "x5c", "x5t", "x5t#S256", "x5u", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alg"))) { #optional property not found
            $Alg = $null
        } else {
            $Alg = $JsonParameters.PSobject.Properties["alg"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "e"))) { #optional property not found
            $E = $null
        } else {
            $E = $JsonParameters.PSobject.Properties["e"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiresAt"))) { #optional property not found
            $ExpiresAt = $null
        } else {
            $ExpiresAt = $JsonParameters.PSobject.Properties["expiresAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key_ops"))) { #optional property not found
            $KeyOps = $null
        } else {
            $KeyOps = $JsonParameters.PSobject.Properties["key_ops"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kid"))) { #optional property not found
            $Kid = $null
        } else {
            $Kid = $JsonParameters.PSobject.Properties["kid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kty"))) { #optional property not found
            $Kty = $null
        } else {
            $Kty = $JsonParameters.PSobject.Properties["kty"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "n"))) { #optional property not found
            $N = $null
        } else {
            $N = $JsonParameters.PSobject.Properties["n"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "use"))) { #optional property not found
            $Use = $null
        } else {
            $Use = $JsonParameters.PSobject.Properties["use"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "x5c"))) { #optional property not found
            $X5c = $null
        } else {
            $X5c = $JsonParameters.PSobject.Properties["x5c"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "x5t"))) { #optional property not found
            $X5t = $null
        } else {
            $X5t = $JsonParameters.PSobject.Properties["x5t"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "x5t#S256"))) { #optional property not found
            $X5tS256 = $null
        } else {
            $X5tS256 = $JsonParameters.PSobject.Properties["x5t#S256"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "x5u"))) { #optional property not found
            $X5u = $null
        } else {
            $X5u = $JsonParameters.PSobject.Properties["x5u"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "alg" = ${Alg}
            "created" = ${Created}
            "e" = ${E}
            "expiresAt" = ${ExpiresAt}
            "key_ops" = ${KeyOps}
            "kid" = ${Kid}
            "kty" = ${Kty}
            "lastUpdated" = ${LastUpdated}
            "n" = ${N}
            "status" = ${Status}
            "use" = ${Use}
            "x5c" = ${X5c}
            "x5t" = ${X5t}
            "x5t#S256" = ${X5tS256}
            "x5u" = ${X5u}
            "_links" = ${Links}
        }

        return $PSO
    }

}

