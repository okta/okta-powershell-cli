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

.PARAMETER PageContent
No description available.
.PARAMETER WidgetCustomizations
No description available.
.PARAMETER WidgetVersion
The version specified as a [Semantic Version](https://semver.org/).
.OUTPUTS

SignInPage<PSCustomObject>
#>

function Initialize-OktaSignInPage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PageContent},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${WidgetCustomizations},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$")]
        [String]
        ${WidgetVersion}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaSignInPage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "pageContent" = ${PageContent}
            "widgetCustomizations" = ${WidgetCustomizations}
            "widgetVersion" = ${WidgetVersion}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SignInPage<PSCustomObject>

.DESCRIPTION

Convert from JSON to SignInPage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SignInPage<PSCustomObject>
#>
function ConvertFrom-OktaJsonToSignInPage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaSignInPage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaSignInPage
        $AllProperties = ("pageContent", "widgetCustomizations", "widgetVersion")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pageContent"))) { #optional property not found
            $PageContent = $null
        } else {
            $PageContent = $JsonParameters.PSobject.Properties["pageContent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "widgetCustomizations"))) { #optional property not found
            $WidgetCustomizations = $null
        } else {
            $WidgetCustomizations = $JsonParameters.PSobject.Properties["widgetCustomizations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "widgetVersion"))) { #optional property not found
            $WidgetVersion = $null
        } else {
            $WidgetVersion = $JsonParameters.PSobject.Properties["widgetVersion"].value
        }

        $PSO = [PSCustomObject]@{
            "pageContent" = ${PageContent}
            "widgetCustomizations" = ${WidgetCustomizations}
            "widgetVersion" = ${WidgetVersion}
        }

        return $PSO
    }

}

