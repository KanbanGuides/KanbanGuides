---
name: guide.historicalversion
description: "Creates a historical version of a guide by snapshotting the current 'latest' content into the history folder and updating front matter metadata. Use when: create historical version, archive guide version, snapshot guide, version history, move to history, release version."
argument-hint: "Provide -Guide (e.g. 'open-guide-to-kanban') and -Version (e.g. '2025.7'). Optionally specify -Date (YYYY-MM-DD) and -Force to overwrite an existing version."
---

# Create Historical Guide Version

Snapshots the current `latest` content for a guide into `site/content/<guide>/history/<version>/` and updates YAML front matter (title, version, date) for both the primary and all translation files.

## Prerequisites

- PowerShell 5.1 or later

## What It Does

1. Copies all files from `site/content/<guide>/latest/` into `site/content/<guide>/history/<version>/`.
2. Updates `index.md` front matter:
   - Appends `(Month Year)` to the title if not already present.
   - Sets `version:` to the supplied version string.
   - Sets `date:` to the supplied date (or today if omitted).
3. Applies the same front matter updates to every `index.<lang>.md` translation file.

## How to Invoke

Run the PowerShell script directly or ask Copilot to run it:

```powershell
# Archive the current latest as version 2025.7
.\.agents\skills\guide.historicalversion\Create-HistoricalVersion.ps1 -Guide "open-guide-to-kanban" -Version "2025.7"

# Archive with a specific date
.\.agents\skills\guide.historicalversion\Create-HistoricalVersion.ps1 -Guide "open-guide-to-kanban" -Version "2025.7" -Date "2025-07-01"

# Overwrite an existing historical version
.\.agents\skills\guide.historicalversion\Create-HistoricalVersion.ps1 -Guide "open-guide-to-kanban" -Version "2025.7" -Force
```

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `-Guide` | String | *(required)* | Guide name. Must be `kanban-guide` or `open-guide-to-kanban`. |
| `-Version` | String | *(required)* | Version identifier for the historical entry (e.g. `2025.7`, `2025.5.1`). |
| `-Date` | String | today | Date for the historical version in `YYYY-MM-DD` format. |
| `-WorkspaceRoot` | String | `.` | Root workspace directory (defaults to current directory). |
| `-Force` | Switch | — | Overwrite the target version directory if it already exists. |

## Agent Steps

When the user asks to archive or create a historical version:

1. Confirm the guide name and version (ask if not provided).
2. Run the script from the project root:
   ```powershell
   .\.agents\skills\guide.historicalversion\Create-HistoricalVersion.ps1 -Guide "<guide>" -Version "<version>"
   ```
3. Report the path created and list any translation files that were updated.
4. Remind the user of the suggested next steps:
   - Review the historical version content.
   - Update `latest/` with the new content.
   - Test the history timeline in the Hugo dev server.
   - Commit the changes.
