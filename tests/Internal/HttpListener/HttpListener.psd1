# Licensed under the Apache License, Version 2.0. See LICENSE in the project root for license information.
# Contains code modified from the PowerShell project licensed under the MIT license. See https://github.com/PowerShell/PowerShell/blob/master/LICENSE.txt.
@{
    ModuleVersion = '1.0.0'
    CompanyName = 'Okta'
    Description = 'Creates a new HTTP Listener for testing purposes'
    RootModule = 'HttpListener.psm1'
    FunctionsToExport = @('Start-HttpListener','Stop-HttpListener')
    AliasesToExport = @()
    CmdletsToExport = @()
}