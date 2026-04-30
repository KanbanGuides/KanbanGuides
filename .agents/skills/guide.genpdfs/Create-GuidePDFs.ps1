#!/usr/bin/env pwsh
<#
.SYNOPSIS
PDF generator for KanbanGuides content

.DESCRIPTION
Generates PDFs from markdown files in versioned guide directories using Pandoc with XeLaTeX.
Supports both "open-guide-to-kanban" and "the-kanban-guide". Automatically discovers the
latest version directory (format YYYY.N) under each guide and writes PDFs to its pdf/ subfolder.

.PARAMETER Force
Overwrite existing PDF files even if source is unchanged

.PARAMETER Language
Generate PDF for a specific language code only (e.g. fa, ja, es-419). Use "en" for English.

.PARAMETER Guide
Which guide to process. One of: open-guide-to-kanban, the-kanban-guide, all (default: all)

.EXAMPLE
.\Create-GuidePDFs.ps1
.\Create-GuidePDFs.ps1 -Force
.\Create-GuidePDFs.ps1 -Language fa
.\Create-GuidePDFs.ps1 -Guide open-guide-to-kanban -Language ja
#>

param(
    [switch]$Force,
    [string]$Language,
    [ValidateSet("open-guide-to-kanban", "the-kanban-guide", "all")]
    [string]$Guide = "all"
)

# Script lives at .agents/skills/guide.genpdfs/ — project root is 3 levels up
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $scriptDir))
$contentDir = Join-Path $projectRoot "site/content"

Write-Host "📚 Generating PDFs..." -ForegroundColor Green

# Check dependencies
try {
    & pandoc --version | Out-Null
    Write-Host "✅ Pandoc found" -ForegroundColor Green
}
catch {
    throw "Pandoc required but not found"
}

# Ensure xelatex is on PATH — MiKTeX user installs are not always added automatically
if (-not (Get-Command xelatex -ErrorAction SilentlyContinue)) {
    $miktexCandidates = @(
        "$env:LOCALAPPDATA\Programs\MiKTeX\miktex\bin\x64"
        "$env:LOCALAPPDATA\Programs\MiKTeX\miktex\bin"
        "C:\Program Files\MiKTeX\miktex\bin\x64"
        "C:\Program Files\MiKTeX\miktex\bin"
    )
    $found = $false
    foreach ($candidate in $miktexCandidates) {
        if (Test-Path (Join-Path $candidate "xelatex.exe")) {
            $env:PATH += ";$candidate"
            Write-Host "✅ XeLaTeX found (added to PATH: $candidate)" -ForegroundColor Green
            $found = $true
            break
        }
    }
    if (-not $found) {
        throw "xelatex not found. Install MiKTeX or TeX Live and ensure it is on the PATH."
    }
}
else {
    Write-Host "✅ XeLaTeX found" -ForegroundColor Green
}

# Returns $true if the markdown file has body content after the front matter block
function Test-HasContent {
    param([string]$FilePath)

    $raw = Get-Content -Path $FilePath -Raw
    # Strip the opening front matter block (--- ... ---)
    if ($raw -match '(?s)^---\s*\r?\n.*?\r?\n---\s*\r?\n(.*)$') {
        $body = $matches[1].Trim()
        return ($body.Length -gt 0)
    }
    # No front matter — treat entire file as content
    return ($raw.Trim().Length -gt 0)
}

# Returns the latest versioned subdirectory (format YYYY.N) inside a guide directory
function Get-LatestVersionDir {
    param([string]$GuideDir)

    Get-ChildItem -Path $GuideDir -Directory |
        Where-Object { $_.Name -match '^\d{4}\.\d+$' } |
        Sort-Object {
            $parts = $_.Name -split '\.'
            [int]$parts[0] * 1000 + [int]$parts[1]
        } -Descending |
        Select-Object -First 1
}

# Processes all matching markdown files in a single versioned guide directory
function Invoke-GuideVersionPDFs {
    param(
        [string]$GuideName,
        [string]$PdfBaseName,       # e.g. "open-guide-to-kanban" or "kanban-guide"
        [string]$Version,           # e.g. "2025.7"
        [string]$VersionDir,        # full path to version directory
        [string]$Language,
        [switch]$Force,
        [bool]$VersionInFilename    # whether to embed version in PDF filename
    )

    $pdfOutputDir = Join-Path $VersionDir "pdf"
    if (-not (Test-Path $pdfOutputDir)) {
        New-Item -ItemType Directory -Path $pdfOutputDir -Force | Out-Null
    }

    # Collect files to process
    if ($Language) {
        $langCode = $Language
        $mdFile   = if ($langCode -eq "en") { "index.md" } else { "index.$langCode.md" }
        $files    = @(Get-ChildItem -Path $VersionDir -Name $mdFile -ErrorAction SilentlyContinue)
    }
    else {
        # index.md = English; index.{lang}.md = all other languages
        $files = Get-ChildItem -Path $VersionDir -Name "index*.md" |
            Where-Object { $_ -eq "index.md" -or $_ -match '^index\.[^.]+\.md$' }
    }

    if (-not $files) {
        Write-Host "  No files found to process in $VersionDir" -ForegroundColor Yellow
        return
    }

    Write-Host "  Found $($files.Count) file(s): $($files -join ', ')" -ForegroundColor Yellow

    foreach ($file in $files) {
        $inputPath = Join-Path $VersionDir $file

        # Determine language code: index.md → en, index.fa.md → fa
        if ($file -eq "index.md") {
            $langCode = "en"
        }
        elseif ($file -match '^index\.(.+)\.md$') {
            $langCode = $matches[1]
        }
        else {
            Write-Host "  Skipping $file — cannot determine language code" -ForegroundColor Yellow
            continue
        }

        # Skip scaffolded files that have no body content (front matter only)
        if (-not (Test-HasContent -FilePath $inputPath)) {
            Write-Host "  ⏭️  $langCode — skipped (no body content, scaffolding only)" -ForegroundColor DarkGray
            continue
        }

        # Build output PDF filename
        $pdfName   = if ($VersionInFilename) { "$PdfBaseName.v$Version.$langCode.pdf" } else { "$PdfBaseName.$langCode.pdf" }
        $outputPath = Join-Path $pdfOutputDir $pdfName

        # Skip if up to date
        if ((Test-Path $outputPath) -and -not $Force) {
            $sourceTime = (Get-Item $inputPath).LastWriteTime
            $pdfTime    = (Get-Item $outputPath).LastWriteTime
            if ($sourceTime -le $pdfTime) {
                Write-Host "  ✅ $langCode — PDF up to date" -ForegroundColor Green
                continue
            }
        }

        Write-Host "  📄 Generating PDF for $langCode ($pdfName)..." -ForegroundColor Blue

        # Build pandoc command — lang passed via --metadata since Hugo v0.144.0 removed lang: from front matter
        $pandocArgs = @(
            $inputPath
            "--pdf-engine=xelatex"
            "--metadata", "lang=$langCode"
            "-o", $outputPath
        )

        try {
            & pandoc @pandocArgs
            if ($LASTEXITCODE -eq 0) {
                Write-Host "  ✅ Generated: $pdfName" -ForegroundColor Green
            }
            else {
                Write-Host "  ❌ Failed: $langCode (exit code $LASTEXITCODE)" -ForegroundColor Red
            }
        }
        catch {
            Write-Host "  ❌ Error generating $langCode`: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}

# Guide configuration: guide directory name → pdf base name and filename convention
$guideConfigs = @(
    [pscustomobject]@{
        DirName         = "open-guide-to-kanban"
        PdfBaseName     = "open-guide-to-kanban"
        VersionInFilename = $false
    }
    [pscustomobject]@{
        DirName         = "the-kanban-guide"
        PdfBaseName     = "kanban-guide"
        VersionInFilename = $true
    }
)

# Filter to requested guide(s)
if ($Guide -ne "all") {
    $guideConfigs = $guideConfigs | Where-Object { $_.DirName -eq $Guide }
}

foreach ($cfg in $guideConfigs) {
    $guideDir = Join-Path $contentDir $cfg.DirName
    if (-not (Test-Path $guideDir)) {
        Write-Host "⚠️  Guide directory not found, skipping: $guideDir" -ForegroundColor Yellow
        continue
    }

    $latestDir = Get-LatestVersionDir -GuideDir $guideDir
    if (-not $latestDir) {
        Write-Host "⚠️  No versioned directory found in: $guideDir" -ForegroundColor Yellow
        continue
    }

    Write-Host "`n📖 $($cfg.DirName) — version $($latestDir.Name)" -ForegroundColor Cyan

    Invoke-GuideVersionPDFs `
        -GuideName        $cfg.DirName `
        -PdfBaseName      $cfg.PdfBaseName `
        -Version          $latestDir.Name `
        -VersionDir       $latestDir.FullName `
        -Language         $Language `
        -Force:$Force `
        -VersionInFilename $cfg.VersionInFilename
}

Write-Host "`n🎉 PDF generation complete!" -ForegroundColor Green
