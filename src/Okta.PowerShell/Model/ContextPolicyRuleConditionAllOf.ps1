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

.PARAMETER Expression
No description available.
.OUTPUTS

ContextPolicyRuleConditionAllOf<PSCustomObject>
#>

function Initialize-OktaContextPolicyRuleConditionAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expression}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaContextPolicyRuleConditionAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ContextPolicyRuleConditionAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ContextPolicyRuleConditionAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ContextPolicyRuleConditionAllOf<PSCustomObject>
#>
function ConvertFrom-OktaJsonToContextPolicyRuleConditionAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaContextPolicyRuleConditionAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaContextPolicyRuleConditionAllOf
        $AllProperties = ("expression")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expression"))) { #optional property not found
            $Expression = $null
        } else {
            $Expression = $JsonParameters.PSobject.Properties["expression"].value
        }

        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
        }

        return $PSO
    }

}

