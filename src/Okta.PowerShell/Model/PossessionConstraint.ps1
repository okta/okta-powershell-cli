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

.PARAMETER Methods
No description available.
.PARAMETER ReauthenticateIn
No description available.
.PARAMETER Types
No description available.
.PARAMETER DeviceBound
No description available.
.PARAMETER HardwareProtection
No description available.
.PARAMETER PhishingResistant
No description available.
.PARAMETER UserPresence
No description available.
.OUTPUTS

PossessionConstraint<PSCustomObject>
#>

function Initialize-OktaPossessionConstraint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Methods},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReauthenticateIn},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Types},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceBound},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HardwareProtection},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PhishingResistant},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserPresence}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaPossessionConstraint' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "methods" = ${Methods}
            "reauthenticateIn" = ${ReauthenticateIn}
            "types" = ${Types}
            "deviceBound" = ${DeviceBound}
            "hardwareProtection" = ${HardwareProtection}
            "phishingResistant" = ${PhishingResistant}
            "userPresence" = ${UserPresence}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PossessionConstraint<PSCustomObject>

.DESCRIPTION

Convert from JSON to PossessionConstraint<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PossessionConstraint<PSCustomObject>
#>
function ConvertFrom-OktaJsonToPossessionConstraint {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaPossessionConstraint' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaPossessionConstraint
        $AllProperties = ("methods", "reauthenticateIn", "types", "deviceBound", "hardwareProtection", "phishingResistant", "userPresence")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "methods"))) { #optional property not found
            $Methods = $null
        } else {
            $Methods = $JsonParameters.PSobject.Properties["methods"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reauthenticateIn"))) { #optional property not found
            $ReauthenticateIn = $null
        } else {
            $ReauthenticateIn = $JsonParameters.PSobject.Properties["reauthenticateIn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "types"))) { #optional property not found
            $Types = $null
        } else {
            $Types = $JsonParameters.PSobject.Properties["types"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceBound"))) { #optional property not found
            $DeviceBound = $null
        } else {
            $DeviceBound = $JsonParameters.PSobject.Properties["deviceBound"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hardwareProtection"))) { #optional property not found
            $HardwareProtection = $null
        } else {
            $HardwareProtection = $JsonParameters.PSobject.Properties["hardwareProtection"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phishingResistant"))) { #optional property not found
            $PhishingResistant = $null
        } else {
            $PhishingResistant = $JsonParameters.PSobject.Properties["phishingResistant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userPresence"))) { #optional property not found
            $UserPresence = $null
        } else {
            $UserPresence = $JsonParameters.PSobject.Properties["userPresence"].value
        }

        $PSO = [PSCustomObject]@{
            "methods" = ${Methods}
            "reauthenticateIn" = ${ReauthenticateIn}
            "types" = ${Types}
            "deviceBound" = ${DeviceBound}
            "hardwareProtection" = ${HardwareProtection}
            "phishingResistant" = ${PhishingResistant}
            "userPresence" = ${UserPresence}
        }

        return $PSO
    }

}

