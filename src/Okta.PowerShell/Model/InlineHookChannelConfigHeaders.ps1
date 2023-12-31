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

.PARAMETER Key
No description available.
.PARAMETER Value
No description available.
.OUTPUTS

InlineHookChannelConfigHeaders<PSCustomObject>
#>

function Initialize-OktaInlineHookChannelConfigHeaders {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaInlineHookChannelConfigHeaders' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InlineHookChannelConfigHeaders<PSCustomObject>

.DESCRIPTION

Convert from JSON to InlineHookChannelConfigHeaders<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InlineHookChannelConfigHeaders<PSCustomObject>
#>
function ConvertFrom-OktaJsonToInlineHookChannelConfigHeaders {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaInlineHookChannelConfigHeaders' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaInlineHookChannelConfigHeaders
        $AllProperties = ("key", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "value" = ${Value}
        }

        return $PSO
    }

}

