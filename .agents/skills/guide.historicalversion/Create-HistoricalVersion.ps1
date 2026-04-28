[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Guide,
    
    [Parameter(Mandatory = $true)]
    [string]$Version,
    
    [Parameter(Mandatory = $false)]
    [string]$Date,
    
    [Parameter(Mandatory = $false)]
    [string]$WorkspaceRoot = ".",
    
    [Parameter(Mandatory = $false)]
    [switch]$Force
)

<#
.SYNOPSIS
    Creates a historical version of a guide by moving the current latest to history.

.DESCRIPTION
    This script helps maintain the version history by:
    1. Creating a new historical entry from the current latest version
    2. Updating metadata appropriately
    3. Maintaining the fork relationship chain

.PARAMETER Guide
    The guide name (e.g., "kanban-guide" or "open-guide-for-kanban")

.PARAMETER Version
    The version identifier for the historical entry (e.g., "2025-07" or "2025.7.1")

.PARAMETER Date
    Optional date for the historical version (defaults to current latest date)

.PARAMETER WorkspaceRoot
    Root workspace directory (defaults to current directory)

.PARAMETER Force
    Overwrite existing historical version if it exists

.EXAMPLE
    .\Create-HistoricalVersion.ps1 -Guide "open-guide-for-kanban" -Version "2025-07"
    
.EXAMPLE
    .\Create-HistoricalVersion.ps1 -Guide "kanban-guide" -Version "2025.5.1" -Date "2025-05-15"
#>

# Validate parameters
$validGuides = @("kanban-guide", "open-guide-for-kanban")
if ($Guide -notin $validGuides) {
    Write-Error "Guide must be one of: $($validGuides -join ', ')"
    exit 1
}

# Set up paths
$siteRoot = Join-Path $WorkspaceRoot "site"
$contentRoot = Join-Path $siteRoot "content"
$guideRoot = Join-Path $contentRoot $Guide
$latestPath = Join-Path $guideRoot "latest"
$historyRoot = Join-Path $guideRoot "history"
$versionPath = Join-Path $historyRoot $Version

# Check if latest exists
$latestIndexPath = Join-Path $latestPath "index.md"
if (-not (Test-Path $latestIndexPath)) {
    Write-Error "Latest version not found at: $latestIndexPath"
    exit 1
}

# Check if version already exists
if (Test-Path $versionPath) {
    if (-not $Force) {
        Write-Error "Version $Version already exists. Use -Force to overwrite."
        exit 1
    }
    Write-Warning "Overwriting existing version: $Version"
    Remove-Item $versionPath -Recurse -Force
}

# Create version directory
Write-Host "Creating historical version: $Guide/$Version" -ForegroundColor Green
New-Item -ItemType Directory -Path $versionPath -Force | Out-Null

# Copy latest content to version
Copy-Item -Path "$latestPath\*" -Destination $versionPath -Recurse -Force

# Read and update the index.md metadata
$indexPath = Join-Path $versionPath "index.md"
$content = Get-Content $indexPath -Raw

# Parse front matter
if ($content -match '(?s)^---\r?\n(.+?)\r?\n---\r?\n(.*)$') {
    $frontMatter = $matches[1]
    $body = $matches[2]
    
    # Update version-specific metadata
    $lines = $frontMatter -split '\r?\n'
    $updatedLines = @()
    $hasVersion = $false
    $hasDate = $false
    
    foreach ($line in $lines) {
        if ($line -match '^title:\s*(.+)$') {
            # Update title to include version
            $originalTitle = $matches[1].Trim('"')
            if ($originalTitle -notmatch '\([^)]*\d{4}[^)]*\)$') {
                $versionDate = if ($Date) { 
                    [datetime]::Parse($Date).ToString("MMMM yyyy") 
                }
                else { 
                    (Get-Date).ToString("MMMM yyyy") 
                }
                $newTitle = "$originalTitle ($versionDate)"
                $updatedLines += "title: `"$newTitle`""
            }
            else {
                $updatedLines += $line
            }
        }
        elseif ($line -match '^date:\s*') {
            # Update date if provided
            if ($Date) {
                $parsedDate = [datetime]::Parse($Date)
                $updatedLines += "date: $($parsedDate.ToString('yyyy-MM-ddTHH:mm:ssZ'))"
            }
            else {
                $updatedLines += $line
            }
            $hasDate = $true
        }
        elseif ($line -match '^version:\s*') {
            # Update version
            $updatedLines += "version: $Version"
            $hasVersion = $true
        }
        elseif ($line -match '^type:\s*') {
            # Keep type but ensure it's appropriate for historical
            $updatedLines += $line
        }
        else {
            $updatedLines += $line
        }
    }
    
    # Add version if not present
    if (-not $hasVersion) {
        $updatedLines += "version: $Version"
    }
    
    # Add date if not present
    if (-not $hasDate) {
        $dateValue = if ($Date) { 
            [datetime]::Parse($Date).ToString('yyyy-MM-ddTHH:mm:ssZ')
        }
        else { 
            (Get-Date).ToString('yyyy-MM-ddTHH:mm:ssZ')
        }
        $updatedLines += "date: $dateValue"
    }
    
    # Reconstruct content
    $newFrontMatter = $updatedLines -join "`n"
    $newContent = "---`n$newFrontMatter`n---`n$body"
    
    # Write updated content
    Set-Content -Path $indexPath -Value $newContent -Encoding UTF8
    
    Write-Host "✓ Created historical version at: $versionPath" -ForegroundColor Green
    Write-Host "✓ Updated metadata for version: $Version" -ForegroundColor Green
    
    # Show summary
    Write-Host "`nSummary:" -ForegroundColor Yellow
    Write-Host "  Guide: $Guide" -ForegroundColor Cyan
    Write-Host "  Version: $Version" -ForegroundColor Cyan
    Write-Host "  Path: $versionPath" -ForegroundColor Cyan
    
    # Check for translations
    $translationFiles = Get-ChildItem -Path $versionPath -Filter "index.*.md"
    if ($translationFiles) {
        Write-Host "`nTranslation files found:" -ForegroundColor Yellow
        foreach ($file in $translationFiles) {
            $langCode = ($file.Name -split '\.')[1]
            Write-Host "  - $langCode ($($file.Name))" -ForegroundColor Cyan
            
            # Update translation metadata too
            $translationContent = Get-Content $file.FullName -Raw
            if ($translationContent -match '(?s)^---\r?\n(.+?)\r?\n---\r?\n(.*)$') {
                $transFrontMatter = $matches[1]
                $transBody = $matches[2]
                
                $transLines = $transFrontMatter -split '\r?\n'
                $updatedTransLines = @()
                $hasTransVersion = $false
                
                foreach ($line in $transLines) {
                    if ($line -match '^title:\s*(.+)$') {
                        # Update title to include version
                        $originalTitle = $matches[1].Trim('"')
                        if ($originalTitle -notmatch '\([^)]*\d{4}[^)]*\)$') {
                            $versionDate = if ($Date) { 
                                [datetime]::Parse($Date).ToString("MMMM yyyy") 
                            }
                            else { 
                                (Get-Date).ToString("MMMM yyyy") 
                            }
                            $newTitle = "$originalTitle ($versionDate)"
                            $updatedTransLines += "title: `"$newTitle`""
                        }
                        else {
                            $updatedTransLines += $line
                        }
                    }
                    elseif ($line -match '^version:\s*') {
                        $updatedTransLines += "version: $Version"
                        $hasTransVersion = $true
                    }
                    else {
                        $updatedTransLines += $line
                    }
                }
                
                if (-not $hasTransVersion) {
                    $updatedTransLines += "version: $Version"
                }
                
                $newTransFrontMatter = $updatedTransLines -join "`n"
                $newTransContent = "---`n$newTransFrontMatter`n---`n$transBody"
                Set-Content -Path $file.FullName -Value $newTransContent -Encoding UTF8
            }
        }
    }
    
    Write-Host "`nNext steps:" -ForegroundColor Yellow
    Write-Host "1. Review the historical version content" -ForegroundColor White
    Write-Host "2. Update the latest version with new content" -ForegroundColor White
    Write-Host "3. Test the history timeline visualization" -ForegroundColor White
    Write-Host "4. Commit the changes to version control" -ForegroundColor White
    
}
else {
    Write-Error "Could not parse front matter in: $indexPath"
    exit 1
}
