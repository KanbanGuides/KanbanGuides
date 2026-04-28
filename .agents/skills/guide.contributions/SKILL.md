---
name: guide.contributions
description: "Creates or updates guide-specific contributor YAML files in site/data/contributions/. Use when: manage contributors, add contributor, update contributors, create contributions file, contributor list, guide contributors."
argument-hint: "Provide a guide name (e.g. 'open-guide-to-kanban'). Optionally specify -ContributorsFile path to import from an existing YAML, and -Force to overwrite without prompting."
---

# Manage Guide Contributions

Creates or updates the per-guide contributor YAML file under `site/data/contributions/`.  
If no source file is supplied a commented template is generated, ready for manual editing.

## Prerequisites

- PowerShell 7.0 or later
- Optional: [`yq`](https://github.com/mikefarah/yq) on the PATH for YAML validation

## What It Does

1. Ensures `site/data/contributions/` exists.
2. If `-ContributorsFile` is given, copies that file to `site/data/contributions/<GuideName>.yml`.
3. Otherwise creates a commented template explaining the contributor YAML schema.
4. Optionally validates the file with `yq` if available.

## How to Invoke

Run the PowerShell script directly or ask Copilot to run it:

```powershell
# Create a template for a new guide
.\.agents\skills\guide.contributions\Manage-GuideContributions.ps1 -GuideName "open-guide-to-kanban"

# Import an existing contributors file
.\.agents\skills\guide.contributions\Manage-GuideContributions.ps1 -GuideName "open-guide-to-kanban" -ContributorsFile "path\to\contributors.yml"

# Overwrite without prompting
.\.agents\skills\guide.contributions\Manage-GuideContributions.ps1 -GuideName "open-guide-to-kanban" -Force
```

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `-GuideName` | String | *(required)* | The guide name, matching the Hugo content section (e.g. `open-guide-to-kanban`). |
| `-ContributorsFile` | String | — | Path to an existing YAML file to import as the contributor list. |
| `-Force` | Switch | — | Overwrite an existing file without prompting for confirmation. |

## Contributor YAML Schema

```yaml
- name: Contributor Name
  githubUsername: username
  url: https://www.linkedin.com/in/profile/
  gravatarHash: <sha256-hash>   # optional, use guide.gravatar skill to generate
  contributions:
    - 2025.7                    # version(s) the contributor worked on
  role: creator|contributor|involved
  weight: 1                     # lower numbers appear first
  founder: true|false
```

## Agent Steps

When the user asks to manage contributors for a guide:

1. Confirm the guide name (ask if not provided).
2. Run the script from the project root:
   ```powershell
   .\.agents\skills\guide.contributions\Manage-GuideContributions.ps1 -GuideName "<guide-name>"
   ```
3. Open (or show the path to) the generated YAML file.
4. If adding a specific contributor, edit the YAML and note that `gravatarHash` can be generated with the `guide.gravatar` skill.
