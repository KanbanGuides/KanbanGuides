# Maintainer Guide

Reference for maintainers and developers with repository access. For contribution workflows, see [contributing.md](./contributing.md).

---

## Local Development Setup

### Prerequisites

- **Hugo Extended** v0.146.0+ — `choco install hugo-extended` (Windows) / `brew install hugo` (macOS)
- **Git**
- **PowerShell 7+** — required for PDF generation scripts

```powershell
# Verify
hugo version   # must show "extended"
git --version
pwsh --version
```

### Run the development server

```bash
# From project root
hugo serve --source site --config hugo.yaml,hugo.local.yaml
```

Navigate to `http://localhost:1313`. The preview environment is at [red-pond-0d8225910-preview.centralus.2.azurestaticapps.net](https://red-pond-0d8225910-preview.centralus.2.azurestaticapps.net/).

### Module dependencies

```bash
cd site
hugo mod download
cd ..
```

Hugo also downloads the module automatically on first serve/build.

---

## Architecture

The site is a Hugo static site deployed to Azure Static Web Apps. All templates, partials, shortcodes, and render hooks are provided by the **HugoGuides Hugo module** (`github.com/nkdAgility/HugoGuides/module`) declared in `site/go.mod`. There is no local `layouts/` directory.

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
    - path: github.com/nkdAgility/HugoGuides/module

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

| Environment | URL | Branch | Hugo config |
|---|---|---|---|
| Production | [kanbanguides.org](https://kanbanguides.org) | `main` | `hugo.production.yaml` |
| Preview | [red-pond-0d8225910-preview...](https://red-pond-0d8225910-preview.centralus.2.azurestaticapps.net/) | `preview` | `hugo.preview.yaml` |
| Canary | `red-pond-0d8225910-{PR#}.centralus.6...` | Per PR | `hugo.canary.yaml` |

Deployments are triggered automatically by GitHub Actions (Azure Static Web Apps CI/CD). Each PR gets a unique preview URL.

### Production build command

```bash
hugo --source site --config hugo.yaml,hugo.production.yaml --minify
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

1. Check the [preview site](https://red-pond-0d8225910-preview.centralus.2.azurestaticapps.net/) header for the current preview version (e.g. `v1.1.0-preview.166`)
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
├── open-guide-to-kanban.yml
└── the-kanban-guide.yml
```

Entry structure:

```yaml
- name: John Coleman
  githubUsername: ViralGoodAgile
  url: https://www.linkedin.com/in/johnanthonycoleman/
  contributions:
    - "2025.7"
  role: creator       # creator | contributor | reviewer | translator
  founder: true
  weight: 1
```

Translator entries also include `language: es-419`.

**Profile image priority:** `image` URL → `gravatarHash` → `githubUsername` (GitHub avatar) → default.

To generate a Gravatar hash:
```bash
echo -n "email@example.com" | sha256sum
```

---

## PDF Generation

Requires **Pandoc** and a **LaTeX distribution** (MiKTeX/TeX Live/MacTeX) in addition to PowerShell 7+.

```powershell
# From project root
./scripts/Create-GuidePDFs.ps1
```

The script generates PDFs for all available languages using YAML front matter for configuration and `scripts/cover-page.tex` as the cover page template. Output includes working hyperlinks suitable for electronic distribution.

---

## Troubleshooting

### Hugo not found or wrong version

```powershell
hugo version        # must include "extended" and be v0.146.0+
hugo env            # check extended: true
choco upgrade hugo-extended   # Windows upgrade
```

### Server won't start

```powershell
# Run from project root (not from site/)
hugo serve --source site --config hugo.yaml,hugo.local.yaml

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

```bash
cd site
hugo mod download
# or
hugo mod tidy
```
