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

.PARAMETER Sensitive
No description available.
.PARAMETER Value
No description available.
.OUTPUTS

DeviceDisplayName<PSCustomObject>
#>

function Initialize-OktaDeviceDisplayName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Sensitive},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaDeviceDisplayName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "sensitive" = ${Sensitive}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeviceDisplayName<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeviceDisplayName<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeviceDisplayName<PSCustomObject>
#>
function ConvertFrom-OktaJsonToDeviceDisplayName {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaDeviceDisplayName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaDeviceDisplayName
        $AllProperties = ("sensitive", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sensitive"))) { #optional property not found
            $Sensitive = $null
        } else {
            $Sensitive = $JsonParameters.PSobject.Properties["sensitive"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "sensitive" = ${Sensitive}
            "value" = ${Value}
        }

        return $PSO
    }

}

