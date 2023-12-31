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

.PARAMETER EmailDomains
No description available.
.OUTPUTS

EmailDomainListResponse<PSCustomObject>
#>

function Initialize-OktaEmailDomainListResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${EmailDomains}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaEmailDomainListResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "email-domains" = ${EmailDomains}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailDomainListResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailDomainListResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailDomainListResponse<PSCustomObject>
#>
function ConvertFrom-OktaJsonToEmailDomainListResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaEmailDomainListResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaEmailDomainListResponse
        $AllProperties = ("email-domains")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email-domains"))) { #optional property not found
            $EmailDomains = $null
        } else {
            $EmailDomains = $JsonParameters.PSobject.Properties["email-domains"].value
        }

        $PSO = [PSCustomObject]@{
            "email-domains" = ${EmailDomains}
        }

        return $PSO
    }

}

