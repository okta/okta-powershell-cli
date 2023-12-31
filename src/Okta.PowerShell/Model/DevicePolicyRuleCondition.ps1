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

.PARAMETER Migrated
No description available.
.PARAMETER Platform
No description available.
.PARAMETER Rooted
No description available.
.PARAMETER TrustLevel
No description available.
.OUTPUTS

DevicePolicyRuleCondition<PSCustomObject>
#>

function Initialize-OktaDevicePolicyRuleCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Migrated},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Platform},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Rooted},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ANY", "TRUSTED")]
        [PSCustomObject]
        ${TrustLevel}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaDevicePolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "migrated" = ${Migrated}
            "platform" = ${Platform}
            "rooted" = ${Rooted}
            "trustLevel" = ${TrustLevel}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DevicePolicyRuleCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to DevicePolicyRuleCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DevicePolicyRuleCondition<PSCustomObject>
#>
function ConvertFrom-OktaJsonToDevicePolicyRuleCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaDevicePolicyRuleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaDevicePolicyRuleCondition
        $AllProperties = ("migrated", "platform", "rooted", "trustLevel")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "migrated"))) { #optional property not found
            $Migrated = $null
        } else {
            $Migrated = $JsonParameters.PSobject.Properties["migrated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "platform"))) { #optional property not found
            $Platform = $null
        } else {
            $Platform = $JsonParameters.PSobject.Properties["platform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rooted"))) { #optional property not found
            $Rooted = $null
        } else {
            $Rooted = $JsonParameters.PSobject.Properties["rooted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trustLevel"))) { #optional property not found
            $TrustLevel = $null
        } else {
            $TrustLevel = $JsonParameters.PSobject.Properties["trustLevel"].value
        }

        $PSO = [PSCustomObject]@{
            "migrated" = ${Migrated}
            "platform" = ${Platform}
            "rooted" = ${Rooted}
            "trustLevel" = ${TrustLevel}
        }

        return $PSO
    }

}

