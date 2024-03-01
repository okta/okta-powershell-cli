$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$minPSVersion = '6.2.0'
$moduleName = 'Okta.PowerShell'
$savedParamsPath = Join-Path $toolsDir -ChildPath 'parameters.saved'

if (Get-Command -Name 'pwsh.exe' -ErrorAction SilentlyContinue) {
  $hostVersion = ((pwsh.exe -Command { $PSVersionTable }).PSVersion)

  if ($hostVersion.ToString() -lt $minPSVersion) {
      Write-Warning "$moduleName module requires a minimum of PowerShell v$minPSVersion."
  }
}

Remove-Module -Name $moduleName -Force -ErrorAction SilentlyContinue

$sourcePath = Join-Path -Path $toolsDir -ChildPath "$moduleName.zip"

$destinationPath += Join-Path -Path $env:ProgramFiles -ChildPath "PowerShell\Modules\"

if (Test-Path -Path $destinationPath) {
  $null = New-Item -Path $destinationPath -ItemType Directory -Force
}

Get-ChocolateyUnzip -FileFullPath $sourcePath -Destination $destinationPath -PackageName $moduleName -Verbose 

Remove-Item -Path $sourcePath -Force -Recurse




