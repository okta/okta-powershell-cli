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

.PARAMETER CredentialId
No description available.
.PARAMETER DeviceToken
No description available.
.PARAMETER DeviceType
No description available.
.PARAMETER Name
No description available.
.PARAMETER Platform
No description available.
.PARAMETER Version
No description available.
.OUTPUTS

PushUserFactorProfile<PSCustomObject>
#>

function Initialize-OktaPushUserFactorProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CredentialId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Platform},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaPushUserFactorProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "credentialId" = ${CredentialId}
            "deviceToken" = ${DeviceToken}
            "deviceType" = ${DeviceType}
            "name" = ${Name}
            "platform" = ${Platform}
            "version" = ${Version}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PushUserFactorProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to PushUserFactorProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PushUserFactorProfile<PSCustomObject>
#>
function ConvertFrom-OktaJsonToPushUserFactorProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaPushUserFactorProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaPushUserFactorProfile
        $AllProperties = ("credentialId", "deviceToken", "deviceType", "name", "platform", "version")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "credentialId"))) { #optional property not found
            $CredentialId = $null
        } else {
            $CredentialId = $JsonParameters.PSobject.Properties["credentialId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceToken"))) { #optional property not found
            $DeviceToken = $null
        } else {
            $DeviceToken = $JsonParameters.PSobject.Properties["deviceToken"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceType"))) { #optional property not found
            $DeviceType = $null
        } else {
            $DeviceType = $JsonParameters.PSobject.Properties["deviceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "platform"))) { #optional property not found
            $Platform = $null
        } else {
            $Platform = $JsonParameters.PSobject.Properties["platform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        $PSO = [PSCustomObject]@{
            "credentialId" = ${CredentialId}
            "deviceToken" = ${DeviceToken}
            "deviceType" = ${DeviceType}
            "name" = ${Name}
            "platform" = ${Platform}
            "version" = ${Version}
        }

        return $PSO
    }

}

