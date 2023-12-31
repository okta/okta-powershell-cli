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

.PARAMETER DomainId
No description available.
.OUTPUTS

CreateBrandDomainRequest<PSCustomObject>
#>

function Initialize-OktaCreateBrandDomainRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainId}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaCreateBrandDomainRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "domainId" = ${DomainId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateBrandDomainRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateBrandDomainRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateBrandDomainRequest<PSCustomObject>
#>
function ConvertFrom-OktaJsonToCreateBrandDomainRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaCreateBrandDomainRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaCreateBrandDomainRequest
        $AllProperties = ("domainId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainId"))) { #optional property not found
            $DomainId = $null
        } else {
            $DomainId = $JsonParameters.PSobject.Properties["domainId"].value
        }

        $PSO = [PSCustomObject]@{
            "domainId" = ${DomainId}
        }

        return $PSO
    }

}

