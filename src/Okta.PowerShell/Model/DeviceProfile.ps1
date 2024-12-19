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

.PARAMETER DisplayName
Display name of the device
.PARAMETER Imei
International Mobile Equipment Identity of the device
.PARAMETER Manufacturer
Name of the manufacturer of the device
.PARAMETER Meid
Mobile equipment identifier of the device
.PARAMETER Model
Model of the device
.PARAMETER OsVersion
Version of the device OS
.PARAMETER Platform
No description available.
.PARAMETER Registered
Indicates if the device is registered at Okta
.PARAMETER SecureHardwarePresent
Indicates if the device constains a secure hardware functionality
.PARAMETER SerialNumber
Serial number of the device
.PARAMETER Sid
Windows Security identifier of the device
.PARAMETER TpmPublicKeyHash
Windows Trsted Platform Module hash value
.PARAMETER Udid
macOS Unique Device identifier of the device
.OUTPUTS

DeviceProfile<PSCustomObject>
#>

function Initialize-OktaDeviceProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Imei},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Manufacturer},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Meid},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Model},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsVersion},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ANDROID", "IOS", "MACOS", "WINDOWS")]
        [PSCustomObject]
        ${Platform},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Registered},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SecureHardwarePresent},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SerialNumber},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Sid},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TpmPublicKeyHash},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Udid}
    )

    Process {
        'Creating PSCustomObject: Okta.PowerShell => OktaDeviceProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $DisplayName) {
            throw "invalid value for 'DisplayName', 'DisplayName' cannot be null."
        }

        if ($DisplayName.length -gt 255) {
            throw "invalid value for 'DisplayName', the character length must be smaller than or equal to 255."
        }

        if ($DisplayName.length -lt 1) {
            throw "invalid value for 'DisplayName', the character length must be great than or equal to 1."
        }

        if ($Imei -and $Imei.length -gt 17) {
            throw "invalid value for 'Imei', the character length must be smaller than or equal to 17."
        }

        if ($Imei -and $Imei.length -lt 14) {
            throw "invalid value for 'Imei', the character length must be great than or equal to 14."
        }

        if ($Manufacturer -and $Manufacturer.length -gt 127) {
            throw "invalid value for 'Manufacturer', the character length must be smaller than or equal to 127."
        }

        if ($Meid -and $Meid.length -gt 14) {
            throw "invalid value for 'Meid', the character length must be smaller than or equal to 14."
        }

        if ($Model -and $Model.length -gt 127) {
            throw "invalid value for 'Model', the character length must be smaller than or equal to 127."
        }

        if ($OsVersion -and $OsVersion.length -gt 127) {
            throw "invalid value for 'OsVersion', the character length must be smaller than or equal to 127."
        }

        if ($null -eq $Platform) {
            throw "invalid value for 'Platform', 'Platform' cannot be null."
        }

        if ($null -eq $Registered) {
            throw "invalid value for 'Registered', 'Registered' cannot be null."
        }

        if ($SerialNumber -and $SerialNumber.length -gt 127) {
            throw "invalid value for 'SerialNumber', the character length must be smaller than or equal to 127."
        }

        if ($Sid -and $Sid.length -gt 256) {
            throw "invalid value for 'Sid', the character length must be smaller than or equal to 256."
        }

        if ($Udid -and $Udid.length -gt 47) {
            throw "invalid value for 'Udid', the character length must be smaller than or equal to 47."
        }


        $PSO = [PSCustomObject]@{
            "displayName" = ${DisplayName}
            "imei" = ${Imei}
            "manufacturer" = ${Manufacturer}
            "meid" = ${Meid}
            "model" = ${Model}
            "osVersion" = ${OsVersion}
            "platform" = ${Platform}
            "registered" = ${Registered}
            "secureHardwarePresent" = ${SecureHardwarePresent}
            "serialNumber" = ${SerialNumber}
            "sid" = ${Sid}
            "tpmPublicKeyHash" = ${TpmPublicKeyHash}
            "udid" = ${Udid}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeviceProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeviceProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeviceProfile<PSCustomObject>
#>
function ConvertFrom-OktaJsonToDeviceProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Okta.PowerShell => OktaDeviceProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OktaDeviceProfile
        $AllProperties = ("displayName", "imei", "manufacturer", "meid", "model", "osVersion", "platform", "registered", "secureHardwarePresent", "serialNumber", "sid", "tpmPublicKeyHash", "udid")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'displayName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'displayName' missing."
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "platform"))) {
            throw "Error! JSON cannot be serialized due to the required property 'platform' missing."
        } else {
            $Platform = $JsonParameters.PSobject.Properties["platform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "registered"))) {
            throw "Error! JSON cannot be serialized due to the required property 'registered' missing."
        } else {
            $Registered = $JsonParameters.PSobject.Properties["registered"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "imei"))) { #optional property not found
            $Imei = $null
        } else {
            $Imei = $JsonParameters.PSobject.Properties["imei"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manufacturer"))) { #optional property not found
            $Manufacturer = $null
        } else {
            $Manufacturer = $JsonParameters.PSobject.Properties["manufacturer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "meid"))) { #optional property not found
            $Meid = $null
        } else {
            $Meid = $JsonParameters.PSobject.Properties["meid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "model"))) { #optional property not found
            $Model = $null
        } else {
            $Model = $JsonParameters.PSobject.Properties["model"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "osVersion"))) { #optional property not found
            $OsVersion = $null
        } else {
            $OsVersion = $JsonParameters.PSobject.Properties["osVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secureHardwarePresent"))) { #optional property not found
            $SecureHardwarePresent = $null
        } else {
            $SecureHardwarePresent = $JsonParameters.PSobject.Properties["secureHardwarePresent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serialNumber"))) { #optional property not found
            $SerialNumber = $null
        } else {
            $SerialNumber = $JsonParameters.PSobject.Properties["serialNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sid"))) { #optional property not found
            $Sid = $null
        } else {
            $Sid = $JsonParameters.PSobject.Properties["sid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tpmPublicKeyHash"))) { #optional property not found
            $TpmPublicKeyHash = $null
        } else {
            $TpmPublicKeyHash = $JsonParameters.PSobject.Properties["tpmPublicKeyHash"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "udid"))) { #optional property not found
            $Udid = $null
        } else {
            $Udid = $JsonParameters.PSobject.Properties["udid"].value
        }

        $PSO = [PSCustomObject]@{
            "displayName" = ${DisplayName}
            "imei" = ${Imei}
            "manufacturer" = ${Manufacturer}
            "meid" = ${Meid}
            "model" = ${Model}
            "osVersion" = ${OsVersion}
            "platform" = ${Platform}
            "registered" = ${Registered}
            "secureHardwarePresent" = ${SecureHardwarePresent}
            "serialNumber" = ${SerialNumber}
            "sid" = ${Sid}
            "tpmPublicKeyHash" = ${TpmPublicKeyHash}
            "udid" = ${Udid}
        }

        return $PSO
    }

}

