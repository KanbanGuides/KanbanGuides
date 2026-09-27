# Maintainer Guide

Reference for maintainers and developers with repository access. For contribution workflows, see [contributing.md](./contributing.md).

---

## Local Development Setup

### Prerequisites

- **Hugo Extended 0.158.0+** — `choco install hugo-extended` (Windows) / `brew install hugo` (macOS)
- **Git**
- **PowerShell 7.4+** — required for every root build entry-point command, including the development server
- **Go 1.24.5+** — required for Hugo module resolution
- **GitHub CLI (`gh`)**, authenticated with access to the platform release — required when the resolver restores release assets that are not cached

The installed release requirements in [installation.json](../.OpenGuidePlatform/installation.json) are the source of truth for platform minimum versions. This site may require newer tools: its documented Hugo Extended minimum remains 0.158.0, above the current platform minimum of 0.146.0. The current platform also requires PowerShell 7.4+ and Go 1.24.5+. Use a PowerShell session (`pwsh` on macOS/Linux) for the commands below. Release restoration also needs network access; see the [resolver](../.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1).

```powershell
# Verify
hugo version   # must show "extended"
git --version
pwsh --version
go version
gh --version
gh auth status
```

### Run the development server

```powershell
# From project root
./build.ps1 -Stage Serve -Target local
```

Navigate to `http://localhost:1313`. The preview destination is configured in [settings.yaml](../.OpenGuidePlatform/settings.yaml).

### Module dependencies

```powershell
Set-Location site
hugo mod download
Set-Location ..
```

Hugo also downloads the module automatically on first serve/build.

---

## Architecture

The site is a Hugo static site deployed to Azure Static Web Apps. All templates, partials, shortcodes, and render hooks are provided by the **OpenGuidePlatform Hugo Guides module** (`github.com/nkdAgility/OpenGuidePlatform/system/OpenGuidePlatform.Hugo.Guides`) declared in `site/go.mod`. There is no local `layouts/` directory.

```
KanbanGuides/
├── site/
│   ├── content/          # Guide content (versioned Markdown)
│   ├── static/           # CSS, images
│   ├── data/
│   │   └── contributions/  # Contributor attribution per guide
│   ├── i18n/             # UI translation strings
│   ├── go.mod            # Hugo module (provides all templates)
│   └── hugo.yaml         # Main Hugo configuration
├── public/               # Generated output (not committed)
├── .github/              # GitHub Actions workflows
└── staticwebapp.config.*.json  # Azure SWA configs per environment
```

### Content structure

```
site/content/
├── _index.md                          # Homepage
├── open-guide-to-kanban/
│   ├── _index.md                      # Section index
│   ├── 2025.7/                        # Current versioned release
│   │   ├── index.md                   # English
│   │   └── index.{lang}.md            # Per-language translations
│   ├── history/
│   └── translations/
└── the-kanban-guide/
    ├── _index.md
    ├── 2025.5/                        # Current versioned release
    ├── 2020.12/                       # Historical versions
    ├── 2020.7/
    ├── history/
    └── translations/
```

### Active languages

Controlled by `disabled: true/false` in `site/hugo.production.yaml`:

| Code | Language |
|---|---|
| `en` | English (default) |
| `ja` | Japanese |
| `es-419` | Spanish (Latin America) |
| `es-ES` | Spanish (Spain) |
| `fa` | Farsi/Persian (RTL) |
| `pl` | Polish |
| `min` | Minionese (reference implementation) |

### History visualization

Each guide's `history/_index.md` renders a visual timeline. The `forked_from` front matter field on `2025.7/index.md` (pointing to `the-kanban-guide/2025.5`) drives the fork-branch indicator. Historical versions are picked up automatically from sibling directories.

---

## Configuration

### Hugo config files

| File | Purpose |
|---|---|
| `site/hugo.yaml` | Base configuration (all environments) |
| `site/hugo.local.yaml` | Local development overrides |
| `site/hugo.preview.yaml` | Preview environment |
| `site/hugo.canary.yaml` | Canary environment |
| `site/hugo.production.yaml` | Production (controls active languages) |

### Key `hugo.yaml` settings

```yaml
title: Kanban Guides
publishDir: ../public
defaultContentLanguage: en
defaultContentLanguageInSubdir: false
enableMissingTranslationPlaceholders: true

module:
  imports:
    - path: github.com/nkdAgility/OpenGuidePlatform/system/OpenGuidePlatform.Hugo.Guides

markup:
  goldmark:
    renderer:
      unsafe: true   # Required for HTML in Markdown
```

### Production Hugo config (`hugo.production.yaml`)

Disables languages not yet ready for production:

```yaml
languages:
  de:
    disabled: true   # Disable until translation is complete
```

### Azure Static Web Apps (`staticwebapp.config.*.json`)

Each environment has its own config handling:
- Multi-language URL routing (per-language fallback to `index.html`)
- Custom 404 page
- PDF MIME type
- Cache-Control headers
- SPA navigation fallback

---

## Deployment

### Environments

Deployment URLs and Azure environment names belong to this site and are defined in [settings.yaml](../.OpenGuidePlatform/settings.yaml). Shared OpenGuidePlatform tooling consumes that configuration; it does not own KanbanGuides hostnames or regions.

| Site ring | Selection | Hugo config |
|---|---|---|
| Production | GitVersion has no prerelease label | `hugo.production.yaml` |
| Preview | GitVersion preview label; currently `main` | `hugo.preview.yaml` |
| Canary | PR context or another prerelease label | `hugo.canary.yaml` |

The workflow builds and validates one selected ring. PR deployment links are posted on the PR. The local production build below validates production output without deploying it.

### Production build command

```powershell
./build.ps1 -Target production
```

---

## Branch Protection Rules

Three layered rules on the default branch (`main`):

| Rule | Bypass | Key settings |
|---|---|---|
| `Default-NoBypass` | None (applies to admins too) | No deletion, no force push, no direct push; PR required; review threads must resolve; status checks: `Publish Site`, `Build Site`, `license/cla`; merge commits only |
| `Default-Bypass-AdminAllowed` | Admins | Stale reviews dismissed on push; automatic Copilot code review enabled |
| `Default-Bypass-MaintainAllowed` | Maintainers | `code-review/reviewable` status check required |

Tags are protected: must match `^v(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)$` (e.g. `v1.2.3`). Admins can bypass tag restrictions.

---

## Version Numbering

The project uses **GitVersion** with semantic versioning (`MAJOR.MINOR.PATCH`):

| Change type | Version bump | Example |
|---|---|---|
| Typos, grammar, small fixes | Patch | `v1.0.0` → `v1.0.1` |
| New sections, translations, substantial additions | Minor | `v1.0.0` → `v1.1.0` |
| Complete rewrites, breaking structural changes | Major | `v1.0.0` → `v2.0.0` |

On `main`, every commit generates a preview version: `v1.1.0-preview.166`. Release branches produce clean versions: `v1.1.0`.

---

## Creating a Release

1. Open the preview URL from the [settings.yaml delivery configuration](../.OpenGuidePlatform/settings.yaml) and check its header for the current preview version (e.g. `v1.1.0-preview.166`)
2. Determine the release version:
   - Same minor = `v1.1.0` (patch changes)
   - Increment minor = `v1.2.0` (new content or translations)
3. Go to **Releases** → **Create a new release**
4. Enter the version as the tag (e.g. `v1.1.0`) and release title
5. Write a short description of changes
6. **Publish release** — GitHub Actions deploys to production automatically
7. Verify at [kanbanguides.org](https://kanbanguides.org)

---

## Reverting a Release

1. Go to **Releases**, find the bad release, click **Delete**
2. Find the last good release, click **Edit** → check **"Set as the latest release"** → **Update release**
3. Go to **Actions** → **Build & Release** workflow → **Run workflow** → select the previous good tag → **Run workflow**
4. Verify the production site restored correctly

---

## Contributor Attribution

Creators, contributors, reviewers, and translators are managed in YAML data files (not in content front matter):

```
site/data/contributions/
├── open-guide-to-kanban.yml          ← creators (authors), contributors, reviewers
├── open-guide-to-kanban.<lang>.yml   ← one translation team per language
├── the-kanban-guide.yml
└── the-kanban-guide.<lang>.yml
```

Entry structure:

```yaml
- name: John Coleman
  githubUsername: ViralGoodAgile
  url: https://www.linkedin.com/in/johnanthonycoleman/
  contributions:
    - "2025.7"
  role: creator       # guide file: creator | contributor | reviewer | involved
  founder: true       # language file: translator | reviewer
  weight: 1           # lower weights are listed first
  localizedNames:     # optional: the name shown in one language
    fa: جان کولمن
```

Authors are the records with `role: creator`; the home page, guide pages and PDF covers all read them from here. Do not add `author` or `translators` to guide front matter — Prepare blocks both.

**Profile image priority:** `image` URL → `gravatarHash` → `githubUsername` (GitHub avatar) → default.

To generate a Gravatar hash:
```powershell
$email = "email@example.com"
$bytes = [System.Text.Encoding]::UTF8.GetBytes($email.ToLower().Trim())
[System.BitConverter]::ToString([System.Security.Cryptography.SHA256]::Create().ComputeHash($bytes)).Replace("-","").ToLower()
```

---

## PDF Generation

Requires **Pandoc** and a **LaTeX distribution** (MiKTeX/TeX Live/MacTeX) in addition to PowerShell 7.4+.

Use the distributed [PDF skill](../.agents/skills/guide.genpdfs/SKILL.md) and its version-locked Core module. The former local PDF, contributor, Gravatar and edition scripts have been retired; their operations are supplied by the corresponding shared skills.

PDF settings, templates and filters live in [`site/pdf/`](../site/pdf/README.md), layered by site, guide, edition and language on top of the platform defaults. Fonts are in `site/pdf/pdf.yaml`, `pdf.fa.yaml` and `pdf.ja.yaml`; right-to-left layout comes from the `fa` language direction in `site/hugo.yaml`. Do not put fonts or `dir` in guide front matter.

This migration replaced the current-edition PDFs (Open Guide to Kanban 2025.7 and The Kanban Guide 2025.5 in en, es-ES, fr, pl, fa, ja and min, plus the Letter-size `en-us` copy; `es-419` has no guide text of its own and has no PDF) with reviewed PDFs generated from the site content using these templates. All other PDFs keep their existing bytes: the 2020.7 and 2020.12 editions (whose web text is abridged, so the published PDFs stay authoritative) and translations that exist only as PDFs.

Only downloads explicitly declared `handling: generated` in the edition's PDF configuration are eligible for generation. All other PDFs remain supplied/protected and retain their bytes. Follow the installed PDF workflow: inspect the plan, check fonts and tools, generate the selected output, visually review actual pages and record the required receipt. Prepare validates generated-PDF receipts; ordinary builds do not generate PDFs automatically. Replacements require the reviewed existing PDF hash and must preserve the published filename. Font substitutions require review; do not silently install substitutes.

---

## Troubleshooting

### Hugo not found or wrong version

```powershell
hugo version        # must include "extended" and be v0.158.0+
hugo env            # check extended: true
choco upgrade hugo-extended   # Windows upgrade
```

### Server won't start

```powershell
# Run from project root (not from site/)
./build.ps1 -Stage Serve -Target local

# Check for port conflicts
netstat -an | Select-String ":1313"

# Clear cache
hugo --gc
```

### Content not appearing

- Confirm `draft: false` in front matter
- Run `hugo list all` to see what Hugo recognizes
- Restart the server after adding new files

### Language switching broken

- Verify the language is configured in `site/hugo.yaml` under `languages:`
- Confirm the translation file exists in `site/i18n/{LANG}.yaml`
- Check that the language is not `disabled: true` in the active environment config

### Missing i18n strings

```powershell
# Find template keys without translations
Select-String -Path "site/**/*.html" -Pattern '{{ i18n'
```

### Module download fails

```powershell
Set-Location site
hugo mod download
# or
hugo mod tidy
```
