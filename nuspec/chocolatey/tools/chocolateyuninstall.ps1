$installationPath += Join-Path -Path $env:ProgramFiles -ChildPath "PowerShell\Modules\"

Write-Verbose "Removing all version of '$_' from '$installationPath'."
Remove-Item -Path $installationPath -Recurse -Force -ErrorAction SilentlyContinue