---
name: guide.genpdfs
description: "Generates PDFs from the KanbanGuides markdown content files using Pandoc. Use when: generate PDFs, create PDFs, build PDFs, export PDF, pdf generation, create guide PDF, build guide PDF."
argument-hint: "Optionally specify -Language (e.g. 'fa'), -Guide (open-guide-to-kanban, the-kanban-guide, or all), and/or -Force to regenerate existing PDFs."
---

# Create Guide PDFs

Generates PDF files from the KanbanGuides markdown content using Pandoc with XeLaTeX.

## Prerequisites

- **Pandoc** must be installed and on the PATH
- **XeLaTeX** (TeX distribution such as TeX Live or MiKTeX) must be installed

## What It Does

Processes both guides:

| Guide | Source directory | PDF output |
|-------|-----------------|------------|
| Open Guide to Kanban | `site/content/open-guide-to-kanban/{version}/` | `…/pdf/open-guide-to-kanban.{lang}.pdf` |
| The Kanban Guide | `site/content/the-kanban-guide/{version}/` | `…/pdf/kanban-guide.v{version}.{lang}.pdf` |

The script automatically discovers the latest versioned subdirectory (format `YYYY.N`) under each guide. English content is in `index.md`; other languages are in `index.{lang}.md`.

PDFs are skipped when:
- The source file has no body content after the front matter (scaffolded translation placeholder — no text to render)
- The source file hasn't changed since the last PDF was generated (unless `-Force` is specified)

## How to Invoke

Run the PowerShell script directly or ask Copilot to run it:

```powershell
# Generate all missing/outdated PDFs for both guides
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1

# Force regenerate all PDFs
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1 -Force

# Generate PDFs for a single language across all guides
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1 -Language fa

# Generate PDFs for one guide only
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1 -Guide open-guide-to-kanban

# Generate PDF for a specific guide and language
.agents/skills/guide.genpdfs/Create-GuidePDFs.ps1 -Guide the-kanban-guide -Language ja
```

## Bundled Assets

- `Create-GuidePDFs.ps1` — the PowerShell generation script
- `cover-page.tex` — LaTeX snippet for the PDF cover page (can be passed to Pandoc via `--include-before-body`)

## Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `-Force` | Switch | Overwrite existing PDFs even if source hasn't changed |
| `-Language` | String | Generate PDF for one specific language code only (e.g. `fa`, `ja`, `en`) |
| `-Guide` | String | Which guide to process: `open-guide-to-kanban`, `the-kanban-guide`, or `all` (default: `all`) |

## Agent Steps

When the user asks to generate PDFs:

1. Check that Pandoc is available (`pandoc --version`)
2. Run the script from the project root:
   ```powershell
   .\.agents\skills\guide.genpdfs\Create-GuidePDFs.ps1
   ```
3. Report which PDFs were generated, skipped, or failed
