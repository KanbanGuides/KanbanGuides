---
name: guide.genpdfs
description: "Generates PDFs from the KanbanGuides markdown content files using Pandoc. Use when: generate PDFs, create PDFs, build PDFs, export PDF, pdf generation, create guide PDF, build guide PDF."
argument-hint: "Optionally specify a language code (e.g. 'fa') and/or -Force to regenerate existing PDFs."
---

# Create Guide PDFs

Generates PDF files from the KanbanGuides markdown content using Pandoc with XeLaTeX.

## Prerequisites

- **Pandoc** must be installed and on the PATH
- **XeLaTeX** (TeX distribution such as TeX Live or MiKTeX) must be installed

## What It Does

Scans `site/content/guide/` for all `index.{lang}.md` files (excluding `index.en.md`) and generates a PDF for each at `site/content/guide/pdf/open-guide-to-kanban.{lang}.pdf`.

PDFs are skipped if the source file hasn't changed since the last PDF was generated, unless `-Force` is specified.

## How to Invoke

Run the PowerShell script directly or ask Copilot to run it:

```powershell
# Generate all missing/outdated PDFs
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1

# Force regenerate all PDFs
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1 -Force

# Generate PDF for a single language
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1 -Language fa
```

## Bundled Assets

- `Create-GuidePDFs.ps1` — the PowerShell generation script
- `cover-page.tex` — LaTeX snippet for the PDF cover page (can be passed to Pandoc via `--include-before-body`)

## Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `-Force` | Switch | Overwrite existing PDFs even if source hasn't changed |
| `-Language` | String | Generate PDF for one specific language code only (e.g. `fa`, `ja`) |

## Agent Steps

When the user asks to generate PDFs:

1. Check that Pandoc is available (`pandoc --version`)
2. Run the script from the project root:
   ```powershell
   .\.agents\skills\guide.genpdfs\Create-GuidePDFs.ps1
   ```
3. Report which PDFs were generated, skipped, or failed
