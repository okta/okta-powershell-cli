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

.PARAMETER Attestation
No description available.
.PARAMETER ClientData
No description available.
.PARAMETER PassCode
No description available.
.PARAMETER RegistrationData
No description available.
.PARAMETER StateToken
No description available.
.OUTPUTS

ActivateFactorRequest<PSCustomObject>
#>

function Initialize-OktaActivateFactorRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attestation},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClientData},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PassCode},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RegistrationData},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StateToken}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaActivateFactorRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attestation" = ${Attestation}
            "clientData" = ${ClientData}
            "passCode" = ${PassCode}
            "registrationData" = ${RegistrationData}
            "stateToken" = ${StateToken}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ActivateFactorRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ActivateFactorRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ActivateFactorRequest<PSCustomObject>
#>
function ConvertFrom-OktaJsonToActivateFactorRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaActivateFactorRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaActivateFactorRequest
        $AllProperties = ("attestation", "clientData", "passCode", "registrationData", "stateToken")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attestation"))) { #optional property not found
            $Attestation = $null
        } else {
            $Attestation = $JsonParameters.PSobject.Properties["attestation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientData"))) { #optional property not found
            $ClientData = $null
        } else {
            $ClientData = $JsonParameters.PSobject.Properties["clientData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passCode"))) { #optional property not found
            $PassCode = $null
        } else {
            $PassCode = $JsonParameters.PSobject.Properties["passCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "registrationData"))) { #optional property not found
            $RegistrationData = $null
        } else {
            $RegistrationData = $JsonParameters.PSobject.Properties["registrationData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stateToken"))) { #optional property not found
            $StateToken = $null
        } else {
            $StateToken = $JsonParameters.PSobject.Properties["stateToken"].value
        }

        $PSO = [PSCustomObject]@{
            "attestation" = ${Attestation}
            "clientData" = ${ClientData}
            "passCode" = ${PassCode}
            "registrationData" = ${RegistrationData}
            "stateToken" = ${StateToken}
        }

        return $PSO
    }

}

