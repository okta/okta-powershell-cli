
<#
.Synopsis
    Helper function to parse a Uri string
.Example
    $Result = Invoke-ParseUrl -Uri "https://myorg.oktapreview.com/api/v1/apps?after=foo&limit=2"
    $Result[RelativeUri] # Removes the main host and returns the relative URI -> /api/v1/apps 
    $QueryParameters["limit"] # -> 2
    $QueryParameters["after"] # -> foo
#>

function Invoke-ParseUrl {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${Url}
    )
    Process {
        
        if (!$Url) {
            throw "Error! The required parameter `Uri` missing when calling Invoke-ParseUrl."
        }
        
        $LocalVarQueryParameters = @{}
        $LocalUri = [uri]$Url

        if ($LocalUri.IsAbsoluteUri -eq $False) {
            throw "Error! The required parameter `Uri` should be an absolute Uri"
        }
        
        $LocalVarUri = $LocalUri.LocalPath
        $ParsedQueryString = [System.Web.HttpUtility]::ParseQueryString($LocalUri.Query)
       

        $i = 0
        foreach($QueryStringObject in $ParsedQueryString) {
            $LocalVarQueryParameters[$QueryStringObject] = $ParsedQueryString[$i]
            $i++
        }

        return @{
            RelativeUri = $LocalVarUri
            QueryParameters = $LocalVarQueryParameters
        }
    }
}