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

.PARAMETER Signing
No description available.
.PARAMETER UserNameTemplate
No description available.
.OUTPUTS

ApplicationCredentials<PSCustomObject>
#>

function Initialize-OktaApplicationCredentials {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Signing},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UserNameTemplate}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaApplicationCredentials' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "signing" = ${Signing}
            "userNameTemplate" = ${UserNameTemplate}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApplicationCredentials<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApplicationCredentials<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApplicationCredentials<PSCustomObject>
#>
function ConvertFrom-OktaJsonToApplicationCredentials {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaApplicationCredentials' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaApplicationCredentials
        $AllProperties = ("signing", "userNameTemplate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signing"))) { #optional property not found
            $Signing = $null
        } else {
            $Signing = $JsonParameters.PSobject.Properties["signing"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userNameTemplate"))) { #optional property not found
            $UserNameTemplate = $null
        } else {
            $UserNameTemplate = $JsonParameters.PSobject.Properties["userNameTemplate"].value
        }

        $PSO = [PSCustomObject]@{
            "signing" = ${Signing}
            "userNameTemplate" = ${UserNameTemplate}
        }

        return $PSO
    }

}

