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

.PARAMETER FileName
(Optional) File name for Admin Console display
.PARAMETER KeyId
10-character Key ID obtained from the Apple developer account
.PARAMETER TeamId
10-character Team ID used to develop the iOS app
.PARAMETER TokenSigningKey
APNs private authentication token signing key
.OUTPUTS

APNSConfiguration<PSCustomObject>
#>

function Initialize-OktaAPNSConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FileName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${KeyId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TeamId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TokenSigningKey}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaAPNSConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "fileName" = ${FileName}
            "keyId" = ${KeyId}
            "teamId" = ${TeamId}
            "tokenSigningKey" = ${TokenSigningKey}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to APNSConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to APNSConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

APNSConfiguration<PSCustomObject>
#>
function ConvertFrom-OktaJsonToAPNSConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaAPNSConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaAPNSConfiguration
        $AllProperties = ("fileName", "keyId", "teamId", "tokenSigningKey")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fileName"))) { #optional property not found
            $FileName = $null
        } else {
            $FileName = $JsonParameters.PSobject.Properties["fileName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keyId"))) { #optional property not found
            $KeyId = $null
        } else {
            $KeyId = $JsonParameters.PSobject.Properties["keyId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "teamId"))) { #optional property not found
            $TeamId = $null
        } else {
            $TeamId = $JsonParameters.PSobject.Properties["teamId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tokenSigningKey"))) { #optional property not found
            $TokenSigningKey = $null
        } else {
            $TokenSigningKey = $JsonParameters.PSobject.Properties["tokenSigningKey"].value
        }

        $PSO = [PSCustomObject]@{
            "fileName" = ${FileName}
            "keyId" = ${KeyId}
            "teamId" = ${TeamId}
            "tokenSigningKey" = ${TokenSigningKey}
        }

        return $PSO
    }

}

