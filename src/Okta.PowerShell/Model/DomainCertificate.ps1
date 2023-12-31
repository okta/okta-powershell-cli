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

.PARAMETER Certificate
No description available.
.PARAMETER CertificateChain
No description available.
.PARAMETER PrivateKey
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

DomainCertificate<PSCustomObject>
#>

function Initialize-OktaDomainCertificate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Certificate},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CertificateChain},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PrivateKey},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PEM")]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaDomainCertificate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "certificate" = ${Certificate}
            "certificateChain" = ${CertificateChain}
            "privateKey" = ${PrivateKey}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainCertificate<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainCertificate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainCertificate<PSCustomObject>
#>
function ConvertFrom-OktaJsonToDomainCertificate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaDomainCertificate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaDomainCertificate
        $AllProperties = ("certificate", "certificateChain", "privateKey", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "certificate"))) { #optional property not found
            $Certificate = $null
        } else {
            $Certificate = $JsonParameters.PSobject.Properties["certificate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "certificateChain"))) { #optional property not found
            $CertificateChain = $null
        } else {
            $CertificateChain = $JsonParameters.PSobject.Properties["certificateChain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privateKey"))) { #optional property not found
            $PrivateKey = $null
        } else {
            $PrivateKey = $JsonParameters.PSobject.Properties["privateKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "certificate" = ${Certificate}
            "certificateChain" = ${CertificateChain}
            "privateKey" = ${PrivateKey}
            "type" = ${Type}
        }

        return $PSO
    }

}

