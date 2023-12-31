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

.PARAMETER Condition
No description available.
.OUTPUTS

AccessPolicyRuleCustomCondition<PSCustomObject>
#>

function Initialize-OktaAccessPolicyRuleCustomCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Condition}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaAccessPolicyRuleCustomCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "condition" = ${Condition}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessPolicyRuleCustomCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessPolicyRuleCustomCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessPolicyRuleCustomCondition<PSCustomObject>
#>
function ConvertFrom-OktaJsonToAccessPolicyRuleCustomCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaAccessPolicyRuleCustomCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaAccessPolicyRuleCustomCondition
        $AllProperties = ("condition")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "condition"))) { #optional property not found
            $Condition = $null
        } else {
            $Condition = $JsonParameters.PSobject.Properties["condition"].value
        }

        $PSO = [PSCustomObject]@{
            "condition" = ${Condition}
        }

        return $PSO
    }

}

