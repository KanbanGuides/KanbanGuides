#Requires -Version 7.0

<#
.SYNOPSIS
    Creates or updates guide-specific contribution files
    
.DESCRIPTION
    This script helps manage contributors for specific guides by creating 
    separate YAML files for each guide's contributors.
    
.PARAMETER GuideName
    The name of the guide (matches the content section name)
    
.PARAMETER ContributorsFile
    Path to a YAML file containing contributors for this guide
    
.PARAMETER Force
    Overwrite existing files without prompting
    
.EXAMPLE
    .\Manage-GuideContributions.ps1 -GuideName "open-guide-for-kanban" -ContributorsFile "contributors.yml"
    
.EXAMPLE
    .\Manage-GuideContributions.ps1 -GuideName "new-guide" -Force
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$GuideName,
    
    [Parameter(Mandatory = $false)]
    [string]$ContributorsFile,
    
    [Parameter(Mandatory = $false)]
    [switch]$Force
)

# Set the base paths
$SiteRoot = Join-Path $PSScriptRoot ".." "site"
$DataRoot = Join-Path $SiteRoot "data"
$ContributionsDir = Join-Path $DataRoot "contributions"
$OutputFile = Join-Path $ContributionsDir "$GuideName.yml"

# Ensure the contributions directory exists
if (-not (Test-Path $ContributionsDir)) {
    New-Item -ItemType Directory -Path $ContributionsDir -Force | Out-Null
    Write-Host "Created contributions directory: $ContributionsDir" -ForegroundColor Green
}

# Check if file already exists
if ((Test-Path $OutputFile) -and -not $Force) {
    $response = Read-Host "File $OutputFile already exists. Overwrite? (y/N)"
    if ($response -ne "y" -and $response -ne "Y") {
        Write-Host "Operation cancelled." -ForegroundColor Yellow
        exit 0
    }
}

# If a contributors file is provided, copy it
if ($ContributorsFile -and (Test-Path $ContributorsFile)) {
    Copy-Item $ContributorsFile $OutputFile -Force
    Write-Host "Copied contributors from $ContributorsFile to $OutputFile" -ForegroundColor Green
}
else {
    # Create a template file
    $template = @"
# Contributors to the $GuideName Guide
# This file contains information about contributors to this specific guide

# Example contributor structure:
# - name: Contributor Name
#   githubUsername: username
#   url: https://www.linkedin.com/in/profile/
#   gravatarHash: hash (optional, for custom avatars)
#   contributions:
#     - version (e.g., 2025.7)
#   role: creator|contributor|involved
#   weight: 1-100 (for sorting, lower numbers appear first)
#   founder: true|false (if this is a founding contributor)

# Add your contributors below:

"@
    
    Set-Content -Path $OutputFile -Value $template -Encoding UTF8
    Write-Host "Created template file: $OutputFile" -ForegroundColor Green
}

# Validate YAML structure
try {
    if (Get-Command "yq" -ErrorAction SilentlyContinue) {
        $null = & yq eval $OutputFile
        Write-Host "YAML file is valid." -ForegroundColor Green
    }
    else {
        Write-Host "Consider installing 'yq' to validate YAML files." -ForegroundColor Yellow
    }
}
catch {
    Write-Host "Warning: YAML validation failed. Please check the file syntax." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Guide contribution file created/updated: $OutputFile" -ForegroundColor Cyan
Write-Host "The Hugo templates will automatically use this file for the '$GuideName' section." -ForegroundColor Cyan
