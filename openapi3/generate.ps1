#!/usr/bin/env pwsh
<#
.SYNOPSIS
    Generates the Okta PowerShell SDK from OpenAPI specification.

.DESCRIPTION
    This script automates the SDK generation process:
    1. Runs openapi-generator-cli to generate code from the OpenAPI spec
    2. Automatically fixes documentation to include Okta prefix in Initialize functions

.EXAMPLE
    .\generate.ps1
#>

[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

Write-Host "=== Okta PowerShell SDK Generator ===" -ForegroundColor Cyan
Write-Host ""

# Step 1: Run OpenAPI Generator
Write-Host "[1/2] Running OpenAPI Generator..." -ForegroundColor Yellow
try {
    openapi-generator-cli generate -g powershell -c config.json --skip-validate-spec
    if ($LASTEXITCODE -ne 0) {
        throw "OpenAPI Generator failed with exit code $LASTEXITCODE"
    }
    Write-Host "✓ Code generation completed successfully" -ForegroundColor Green
} catch {
    Write-Error "Failed to generate code: $_"
    exit 1
}

Write-Host ""

# Step 2: Fix documentation (add Okta prefix to Initialize functions)
Write-Host "[2/2] Fixing documentation (adding Okta prefix to Initialize functions)..." -ForegroundColor Yellow
try {
    $docsPath = Join-Path $PSScriptRoot "..\docs"
    $apiDocs = Get-ChildItem -Path $docsPath -Filter "Okta*Api.md"
    
    foreach ($doc in $apiDocs) {
        $content = Get-Content -Path $doc.FullName -Raw
        
        # Replace Initialize- function calls without Okta prefix
        # Pattern: Initialize-<ModelName> where ModelName is not already prefixed with Okta
        $content = $content -replace 'Initialize-(?!Okta)([A-Z])', 'Initialize-Okta$1'
        
        Set-Content -Path $doc.FullName -Value $content -NoNewline
    }
    
    Write-Host "✓ Fixed $($apiDocs.Count) API documentation files" -ForegroundColor Green
} catch {
    Write-Error "Failed to fix documentation: $_"
    exit 1
}

Write-Host ""
Write-Host "=== SDK Generation Complete ===" -ForegroundColor Cyan
Write-Host "Generated files: src/Okta.PowerShell/ and docs/" -ForegroundColor Gray
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Review changes: git status" -ForegroundColor Gray
Write-Host "  2. Build module: .\Build.ps1" -ForegroundColor Gray
Write-Host "  3. Run tests: .\Test.ps1" -ForegroundColor Gray
