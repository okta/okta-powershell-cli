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

.PARAMETER Asns
No description available.
.PARAMETER Created
No description available.
.PARAMETER Gateways
No description available.
.PARAMETER Id
No description available.
.PARAMETER LastUpdated
No description available.
.PARAMETER Locations
No description available.
.PARAMETER Name
No description available.
.PARAMETER Proxies
No description available.
.PARAMETER ProxyType
No description available.
.PARAMETER Status
No description available.
.PARAMETER System
No description available.
.PARAMETER Type
No description available.
.PARAMETER Usage
No description available.
.PARAMETER Links
No description available.
.OUTPUTS

NetworkZone<PSCustomObject>
#>

function Initialize-OktaNetworkZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Asns},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Gateways},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Locations},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Proxies},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProxyType},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACTIVE", "INACTIVE")]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${System},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DYNAMIC", "IP")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("BLOCKLIST", "POLICY")]
        [PSCustomObject]
        ${Usage},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Links}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaNetworkZone' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "asns" = ${Asns}
            "created" = ${Created}
            "gateways" = ${Gateways}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "locations" = ${Locations}
            "name" = ${Name}
            "proxies" = ${Proxies}
            "proxyType" = ${ProxyType}
            "status" = ${Status}
            "system" = ${System}
            "type" = ${Type}
            "usage" = ${Usage}
            "_links" = ${Links}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkZone<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkZone<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkZone<PSCustomObject>
#>
function ConvertFrom-OktaJsonToNetworkZone {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaNetworkZone' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaNetworkZone
        $AllProperties = ("asns", "created", "gateways", "id", "lastUpdated", "locations", "name", "proxies", "proxyType", "status", "system", "type", "usage", "_links")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "asns"))) { #optional property not found
            $Asns = $null
        } else {
            $Asns = $JsonParameters.PSobject.Properties["asns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "gateways"))) { #optional property not found
            $Gateways = $null
        } else {
            $Gateways = $JsonParameters.PSobject.Properties["gateways"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locations"))) { #optional property not found
            $Locations = $null
        } else {
            $Locations = $JsonParameters.PSobject.Properties["locations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "proxies"))) { #optional property not found
            $Proxies = $null
        } else {
            $Proxies = $JsonParameters.PSobject.Properties["proxies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "proxyType"))) { #optional property not found
            $ProxyType = $null
        } else {
            $ProxyType = $JsonParameters.PSobject.Properties["proxyType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "system"))) { #optional property not found
            $System = $null
        } else {
            $System = $JsonParameters.PSobject.Properties["system"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usage"))) { #optional property not found
            $Usage = $null
        } else {
            $Usage = $JsonParameters.PSobject.Properties["usage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["_links"].value
        }

        $PSO = [PSCustomObject]@{
            "asns" = ${Asns}
            "created" = ${Created}
            "gateways" = ${Gateways}
            "id" = ${Id}
            "lastUpdated" = ${LastUpdated}
            "locations" = ${Locations}
            "name" = ${Name}
            "proxies" = ${Proxies}
            "proxyType" = ${ProxyType}
            "status" = ${Status}
            "system" = ${System}
            "type" = ${Type}
            "usage" = ${Usage}
            "_links" = ${Links}
        }

        return $PSO
    }

}

