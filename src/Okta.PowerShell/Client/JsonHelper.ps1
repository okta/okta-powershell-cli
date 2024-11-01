#
# Okta Management
# Allows customers to easily access the Okta Management APIs
# Version: 3.0.0
# Contact: devex-public@okta.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#


# Remove null properties from an object recursively

function Remove-NullProperties {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory, Position = 0, ValueFromPipeline)]
        [object]
        $InputObject
    )

    $NewObject = @{ }
    
    if ($InputObject -is [string] -or $InputObject.GetType().IsPrimitive -or $InputObject.GetType().IsValueType) {
        return $InputObject
    }
    elseif ($InputObject -is [System.Collections.IDictionary]) {
        $NewObject = Remove-NullPropertiesFromHashMap($InputObject)
    }
    elseif ($InputObject -is [array]){
        [array]$NewArray = Remove-NullPropertiesFromArray($InputObject)
        return $NewArray
    }
    else{
        $PropertyList = $InputObject.PSObject.Properties | Where-Object { $null -ne $_.Value }
        
        foreach ($Property in $PropertyList) { 
            if($Property.Value -is [array]){
                # explicit cast to avoid arrays to be converted to object (i.e @('foo'))
                $NewObject[$Property.Name] = Remove-NullPropertiesFromArray $Property.Value
            }else{
                $NewObject[$Property.Name] = Remove-NullProperties $Property.Value
            }
        }
    }

    return [PSCustomObject]$NewObject  
}

# Remove null properties from hashtable recursively

function Remove-NullPropertiesFromHashMap{
    [CmdletBinding()]
    param(
        [AllowEmptyCollection()]
        [Parameter(Mandatory, Position = 0, ValueFromPipeline)]
        [System.Collections.IDictionary]
        $InputObject
    )
    
    $OutputHashtable = @{}
    foreach ($Key in $InputObject.Keys) {
        $Value = $InputObject[$Key]
        # explicit cast to avoid arrays to be converted to object (i.e @('foo'))
        if($Value -is [array]){
            [array]$CleanedValue = Remove-NullProperties $Value
        }else{
            $CleanedValue = Remove-NullProperties $Value
        }

        if ($null -ne $CleanedValue) {
            $OutputHashtable[$Key] = $CleanedValue
        }
    }
    return $OutputHashtable
}

# Remove null properties from an array recursively
function Remove-NullPropertiesFromArray {
    [CmdletBinding()]
    param(
        [AllowEmptyCollection()]
        [Parameter(Mandatory, Position = 0, ValueFromPipeline)]
        [array]
        $InputArray
    )
    [array]$NewArray = @()
    
    foreach ($Item in $InputArray) {
        $NewItem = Remove-NullProperties($Item)
        $NewArray += $NewItem
    }

    #https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators?view=powershell-7.4#comma-operator-
    # Ensure the return is always an array, even if there's only one item
    return ,$NewArray
}