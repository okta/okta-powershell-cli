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

.PARAMETER Include
No description available.
.OUTPUTS

DeviceAssuranceDiskEncryptionType<PSCustomObject>
#>

function Initialize-OktaDeviceAssuranceDiskEncryptionType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Include}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaDeviceAssuranceDiskEncryptionType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "include" = ${Include}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeviceAssuranceDiskEncryptionType<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeviceAssuranceDiskEncryptionType<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeviceAssuranceDiskEncryptionType<PSCustomObject>
#>
function ConvertFrom-OktaJsonToDeviceAssuranceDiskEncryptionType {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaDeviceAssuranceDiskEncryptionType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaDeviceAssuranceDiskEncryptionType
        $AllProperties = ("include")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "include"))) { #optional property not found
            $Include = $null
        } else {
            $Include = $JsonParameters.PSobject.Properties["include"].value
        }

        $PSO = [PSCustomObject]@{
            "include" = ${Include}
        }

        return $PSO
    }

}

