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

# Returns $true if a font name is visible to XeLaTeX (checks fc-list, then Windows font dirs)
function Test-FontAvailable {
    param([string]$FontName)

    # fc-list is shipped with MiKTeX/TeX Live and is the authoritative source for XeLaTeX fonts
    if (Get-Command fc-list -ErrorAction SilentlyContinue) {
        $found = & fc-list 2>$null | Select-String -SimpleMatch $FontName -Quiet
        if ($found) { return $true }
    }

    # Fallback: scan Windows font directories by filename
    $fontDirs = @("C:\Windows\Fonts", "$env:LOCALAPPDATA\Microsoft\Windows\Fonts")
    foreach ($dir in $fontDirs) {
        if (Get-ChildItem $dir -ErrorAction SilentlyContinue | Where-Object { $_.BaseName -match [regex]::Escape($FontName) }) {
            return $true
        }
    }
    return $false
}

# Downloads and installs Vazirmatn (open-source Persian/Arabic font) so XeLaTeX can use it.
# Fonts are copied into MiKTeX's own opentype directory so fontconfig picks them up.
function Install-VazirmatnFont {
    $url    = "https://github.com/rastikerdar/vazirmatn/releases/download/v33.003/vazirmatn-v33.003.zip"
    $tmpZip = Join-Path $env:TEMP "vazirmatn.zip"
    $tmpDir = Join-Path $env:TEMP "vazirmatn-extract"
    Install-FontFromZip -Url $url -TmpZip $tmpZip -TmpDir $tmpDir -SubDir "vazirmatn" -DisplayName "Vazirmatn"
}

# Downloads and installs Noto Sans/Serif JP (open-source Japanese font) so XeLaTeX can use it.
function Install-NotoJpFont {
    # Use individual JP OTF packages which register the correct "Noto Sans JP" / "Noto Serif JP" family names
    $sansUrl   = "https://github.com/notofonts/noto-cjk/releases/download/Sans2.004/16_NotoSansJP.zip"
    $serifUrl  = "https://github.com/notofonts/noto-cjk/releases/download/Serif2.003/12_NotoSerifJP.zip"
    $ok = $true
    foreach ($entry in @(
        [pscustomobject]@{ Url = $sansUrl;  TmpZip = "$env:TEMP\notosansjp.zip";  TmpDir = "$env:TEMP\notosansjp-extract";  Name = "Noto Sans JP" }
        [pscustomobject]@{ Url = $serifUrl; TmpZip = "$env:TEMP\notoserifjp.zip"; TmpDir = "$env:TEMP\notoserifjp-extract"; Name = "Noto Serif JP" }
    )) {
        if (-not (Install-FontFromZip -Url $entry.Url -TmpZip $entry.TmpZip -TmpDir $entry.TmpDir -SubDir "noto-jp" -DisplayName $entry.Name)) {
            $ok = $false
        }
    }
    return $ok
}

# Shared helper: downloads a zip, extracts all .ttf/.otf/.ttc files, installs into MiKTeX fonts dir
function Install-FontFromZip {
    param(
        [string]$Url,
        [string]$TmpZip,
        [string]$TmpDir,
        [string]$SubDir,
        [string]$DisplayName
    )

    # Prefer MiKTeX's own opentype directory (always scanned by fc-cache)
    $miktexBase = $null
    foreach ($candidate in @(
        "$env:LOCALAPPDATA\Programs\MiKTeX",
        "C:\Program Files\MiKTeX"
    )) {
        if (Test-Path "$candidate\fonts\opentype") { $miktexBase = $candidate; break }
    }
    $destDir = if ($miktexBase) {
        "$miktexBase\fonts\opentype\public\$SubDir"
    } else {
        "$env:LOCALAPPDATA\Microsoft\Windows\Fonts"
    }
    if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir -Force | Out-Null }

    Write-Host "  Downloading $DisplayName..." -ForegroundColor Yellow
    try {
        Invoke-WebRequest -Uri $Url -OutFile $TmpZip -UseBasicParsing
    }
    catch {
        Write-Host "  ❌ Download failed: $($_.Exception.Message)" -ForegroundColor Red
        return $false
    }

    Expand-Archive -Path $TmpZip -DestinationPath $TmpDir -Force

    $installed = 0
    Get-ChildItem $TmpDir -Recurse | Where-Object { $_.Extension -in ".ttf",".otf",".ttc" } | ForEach-Object {
        Copy-Item $_.FullName (Join-Path $destDir $_.Name) -Force
        $installed++
    }

    if (Get-Command fc-cache -ErrorAction SilentlyContinue) { & fc-cache -f 2>$null }
    Remove-Item $TmpZip, $TmpDir -Recurse -Force -ErrorAction SilentlyContinue

    if ($installed -gt 0) {
        Write-Host "  ✅ $DisplayName installed ($installed file(s) → $destDir)" -ForegroundColor Green
        return $true
    }
    Write-Host "  ❌ No font files found in $DisplayName archive" -ForegroundColor Red
    return $false
}

# Font requirements: maps an unavailable font to its open-source fallback and install function.
# Add entries here whenever a new language requires a font not shipped with Windows.
$fontRequirements = @(
    [pscustomobject]@{ Required = "HMXRoya";       Fallback = "Vazirmatn";      Installer = { Install-VazirmatnFont } }
    [pscustomobject]@{ Required = "Noto Serif JP";  Fallback = "Noto Serif JP";  Installer = { Install-NotoJpFont } }
    [pscustomobject]@{ Required = "Noto Sans JP";   Fallback = "Noto Sans JP";   Installer = { Install-NotoJpFont } }
)

# Build a font-substitution map for any required fonts that are not installed.
# When a font listed here is referenced in a file's front matter, pandoc will be
# passed -V overrides to use the substitute instead.
$script:FontSubstitutions = @{}
$installedFallbacks = @{}  # avoid re-downloading the same fallback twice

foreach ($req in $fontRequirements) {
    if (Test-FontAvailable $req.Required) { continue }

    Write-Host "⚠️  Font not installed: $($req.Required)" -ForegroundColor Yellow

    if (Test-FontAvailable $req.Fallback) {
        Write-Host "  ℹ️  Using $($req.Fallback) (already installed) as fallback for $($req.Required)" -ForegroundColor Yellow
        $script:FontSubstitutions[$req.Required] = $req.Fallback
    }
    elseif ($installedFallbacks.ContainsKey($req.Fallback)) {
        # Already attempted install for this fallback in this run
        if ($installedFallbacks[$req.Fallback]) {
            $script:FontSubstitutions[$req.Required] = $req.Fallback
        }
    }
    else {
        $ok = & $req.Installer
        $installedFallbacks[$req.Fallback] = $ok
        if ($ok) {
            Write-Host "  ℹ️  Using $($req.Fallback) as fallback for $($req.Required)" -ForegroundColor Yellow
            $script:FontSubstitutions[$req.Required] = $req.Fallback
        }
        else {
            Write-Host "  ❌ Could not install fallback font — $($req.Required) PDFs may fail" -ForegroundColor Red
        }
    }
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
        [bool]$VersionInFilename,   # whether to embed version in PDF filename
        [hashtable]$FontSubstitutions = @{}
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

        # If any fonts referenced in front matter are unavailable, build -V overrides
        $fontOverrideArgs = @()
        $rawContent = Get-Content $inputPath -Raw
        foreach ($fontKey in @("mainfont", "sansfont", "monofont")) {
            if ($rawContent -match "(?m)^${fontKey}:\s*(.+)$") {
                $fontValue = $matches[1].Trim().Trim('"').Trim("'")
                if ($FontSubstitutions.ContainsKey($fontValue)) {
                    $fontOverrideArgs += "-V", "${fontKey}=$($FontSubstitutions[$fontValue])"
                }
            }
        }

        # Build pandoc command — lang passed via --metadata since Hugo v0.144.0 removed lang: from front matter
        # --pdf-engine-opt=-interaction=nonstopmode prevents xelatex from blocking on missing-package prompts
        # keywords are cleared because Pandoc 3.x passes them via hyperxmp (\xmpquote) which requires
        # a working hyperxmp installation; clearing avoids the dependency entirely.
        $pandocArgs = @(
            $inputPath
            "--pdf-engine=xelatex"
            "--pdf-engine-opt=-interaction=nonstopmode"
            "--metadata", "lang=$langCode"
            "--metadata", "keywords="
        ) + $fontOverrideArgs + @(
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
        -GuideName         $cfg.DirName `
        -PdfBaseName       $cfg.PdfBaseName `
        -Version           $latestDir.Name `
        -VersionDir        $latestDir.FullName `
        -Language          $Language `
        -Force:$Force `
        -VersionInFilename $cfg.VersionInFilename `
        -FontSubstitutions $script:FontSubstitutions
}

Write-Host "`n🎉 PDF generation complete!" -ForegroundColor Green
