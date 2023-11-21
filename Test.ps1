Import-Module -Name './src/Okta.PowerShell' -Verbose
Install-Module Pester -Repository 'PSGallery' -Force -SkipPublisherCheck
$Result = Invoke-Pester -PassThru
if ($Result.FailedCount -gt 0) { 
    Write-Host "Some tests failed"
    exit $Result.FailedCount 
}else {
    Write-Host "All tests passed!"
}