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

.PARAMETER Device
No description available.
.PARAMETER ElCondition
No description available.
.PARAMETER UserType
No description available.
.OUTPUTS

AccessPolicyRuleConditionsAllOf<PSCustomObject>
#>

function Initialize-OktaAccessPolicyRuleConditionsAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Device},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ElCondition},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UserType}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaAccessPolicyRuleConditionsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "device" = ${Device}
            "elCondition" = ${ElCondition}
            "userType" = ${UserType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessPolicyRuleConditionsAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessPolicyRuleConditionsAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessPolicyRuleConditionsAllOf<PSCustomObject>
#>
function ConvertFrom-OktaJsonToAccessPolicyRuleConditionsAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaAccessPolicyRuleConditionsAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaAccessPolicyRuleConditionsAllOf
        $AllProperties = ("device", "elCondition", "userType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "device"))) { #optional property not found
            $Device = $null
        } else {
            $Device = $JsonParameters.PSobject.Properties["device"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "elCondition"))) { #optional property not found
            $ElCondition = $null
        } else {
            $ElCondition = $JsonParameters.PSobject.Properties["elCondition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userType"))) { #optional property not found
            $UserType = $null
        } else {
            $UserType = $JsonParameters.PSobject.Properties["userType"].value
        }

        $PSO = [PSCustomObject]@{
            "device" = ${Device}
            "elCondition" = ${ElCondition}
            "userType" = ${UserType}
        }

        return $PSO
    }

}

