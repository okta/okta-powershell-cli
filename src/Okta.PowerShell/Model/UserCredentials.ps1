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

.PARAMETER Password
No description available.
.PARAMETER Provider
No description available.
.PARAMETER RecoveryQuestion
No description available.
.OUTPUTS

UserCredentials<PSCustomObject>
#>

function Initialize-OktaUserCredentials {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Password},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Provider},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RecoveryQuestion}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaUserCredentials' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "password" = ${Password}
            "provider" = ${Provider}
            "recovery_question" = ${RecoveryQuestion}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserCredentials<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserCredentials<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserCredentials<PSCustomObject>
#>
function ConvertFrom-OktaJsonToUserCredentials {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaUserCredentials' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaUserCredentials
        $AllProperties = ("password", "provider", "recovery_question")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provider"))) { #optional property not found
            $Provider = $null
        } else {
            $Provider = $JsonParameters.PSobject.Properties["provider"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recovery_question"))) { #optional property not found
            $RecoveryQuestion = $null
        } else {
            $RecoveryQuestion = $JsonParameters.PSobject.Properties["recovery_question"].value
        }

        $PSO = [PSCustomObject]@{
            "password" = ${Password}
            "provider" = ${Provider}
            "recovery_question" = ${RecoveryQuestion}
        }

        return $PSO
    }

}

