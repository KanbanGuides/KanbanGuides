# 🔧 Configuration Reference

This document provides a comprehensive reference for all configuration files and settings used in the Open Guide to Kanban project.

## Hugo Configuration Files

The project uses environment-specific Hugo configuration files to manage different deployment scenarios.

### Main Configuration (`hugo.yaml`)

The main configuration at `site/hugo.yaml` defines site-wide settings. Key sections:

```yaml
title: Kanban Guides
buildFuture: true
publishDir: ../public
resourceDir: ../resources
defaultContentLanguage: en
defaultContentLanguageInSubdir: false
enableMissingTranslationPlaceholders: true

languages:
  en:
    languageName: English
    weight: 1
    title: Kanban Guides
  ja:
    languageName: Japanese
    weight: 2
    title: カンバンガイド
  es-419:
    languageName: Spanish (Latin America)
    weight: 3
    title: Guías de Kanban
  es-ES:
    languageName: Spanish (Spain)
    weight: 4
    title: Guías de Kanban
  fa:
    languageName: Farsi (Persian)
    languageDirection: rtl
    weight: 5
    title: راهنماهای کانبان
  pl:
    languageName: Polish
    weight: 6
    title: Kanban Guides

params:
  siteProdUrl: https://kanbanguides.org
  supportEmail: support@kanbanguides.org
  githubUrl: https://github.com/KanbanGuides/KanbanGuides/
  GoogleTagManagerID: "GTM-T2KD2BNT"

module:
  imports:
    - path: github.com/nkdAgility/HugoGuides/module

markup:
  goldmark:
    renderer:
      unsafe: true
```

> **Note:** The site title is **Kanban Guides** (not "Open Guide to Kanban"). There is no `theme:` setting; templates come from the Hugo module.

### Hugo Module (`site/go.mod`)

The project uses a Hugo module for all templates and layouts:

```
module github.com/KanbanGuides/KanbanGuides/site

go 1.24.5

require github.com/nkdAgility/HugoGuides/module v0.7.3 // indirect
```

After cloning, run `hugo mod download` (from `site/`) or let the build pipeline handle it automatically.

### Environment-Specific Configurations

#### Local Development (`hugo.local.yaml`)

```yaml
Environment: "development"
buildDrafts: true
buildFuture: true
buildExpired: true
disableAliases: false
```

Run locally with:

```bash
huge serve --source site --config hugo.yaml,hugo.local.yaml
```

#### Production (`hugo.production.yaml`)

```yaml
baseURL: https://kanbanguides.org
Environment: production
enableMissingTranslationPlaceholders: false
minifyOutput: true
languages:
  min:
    disabled: true
  pl:
    disabled: true
  ja:
    disabled: false
  es-ES:
    disabled: false
```

> Per-environment files control which languages are enabled in each deployment ring.

## Azure Static Web Apps Configuration

Each environment has its own config file. The real routing handles the actual language codes (`ja`, `es-419`, `es-ES`, `fa`, `pl`). See `staticwebapp.config.json` and `staticwebapp.config.production.json` in the repo root for the full routing rules.

### Key headers applied globally

```json
{
  "globalHeaders": {
    "X-Frame-Options": "DENY",
    "X-Content-Type-Options": "nosniff",
    "Referrer-Policy": "strict-origin-when-cross-origin"
  }
}
```

## Internationalization Configuration

### Translation Files

Translation files are stored in `site/i18n/` — one file per language code matching the codes in `hugo.yaml`:

```
site/i18n/
├── en.yaml       # English (default)
├── ja.yaml       # Japanese
├── es-419.yaml   # Spanish (Latin America)
├── es-ES.yaml    # Spanish (Spain)
├── fa.yaml       # Farsi/Persian
├── pl.yaml       # Polish
└── min.yaml      # Minionese (reference)
```

Each file maps translation keys to localised strings. Use `en.yaml` as the template when adding a new language.

## Contributor / Attribution Configuration

Creators, contributors, reviewers, and translators are stored in per-guide data files, **not** in content front matter:

```text
site/data/contributions/
├── open-guide-to-kanban.yml
└── the-kanban-guide.yml
```

Each entry:

```yaml
- name: John Coleman
  githubUsername: ViralGoodAgile
  url: https://www.linkedin.com/in/johnanthonycoleman/
  contributions:
    - "2025.7"      # version this person contributed to
  role: creator     # creator | contributor | reviewer | translator
  founder: true
  weight: 1
```

See [Content Management](./content-management.md) for the full schema.

## Git Configuration

### `.gitignore`

```gitignore
# Hugo
/public/
/resources/_gen/
/site/.hugo_build.lock

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# IDE files
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
*.log

# Temporary files
*.tmp
*.temp

# Node.js (if using)
node_modules/
npm-debug.log
yarn-error.log

# Environment files
.env
.env.local
.env.production
```

### `.gitattributes`

```gitattributes
# Handle line endings automatically
* text=auto

# Ensure shell scripts use LF
*.sh text eol=lf

# Ensure Windows scripts use CRLF
*.bat text eol=crlf
*.cmd text eol=crlf
*.ps1 text eol=crlf

# Binary files
*.png binary
*.jpg binary
*.jpeg binary
*.gif binary
*.pdf binary
*.woff binary
*.woff2 binary
*.ttf binary
*.eot binary

# Large files
*.pdf filter=lfs diff=lfs merge=lfs -text
```

## GitHub Actions Configuration

### Main Workflow (`.github/workflows/deploy.yml`)

```yaml
name: Deploy to Azure Static Web Apps

on:
  push:
    branches: [main, preview, canary]
  pull_request:
    branches: [main]
  workflow_dispatch:

env:
  HUGO_VERSION: "0.120.4"

jobs:
  build_and_deploy:
    if: github.event_name == 'push' || (github.event_name == 'pull_request' && github.event.action != 'closed')
    runs-on: ubuntu-latest
    name: Build and Deploy Job

    steps:
      - uses: actions/checkout@v4
        with:
          submodules: true
          lfs: false

      - name: Setup Hugo
        uses: peaceiris/actions-hugo@v2
        with:
          hugo-version: ${{ env.HUGO_VERSION }}
          extended: true

      - name: Determine Environment
        id: env
        run: |
          if [[ "${{ github.ref }}" == "refs/heads/main" ]]; then
            echo "config=hugo.yaml" >> $GITHUB_OUTPUT
            echo "environment=production" >> $GITHUB_OUTPUT
          elif [[ "${{ github.ref }}" == "refs/heads/preview" ]]; then
            echo "config=hugo.preview.yaml" >> $GITHUB_OUTPUT
            echo "environment=preview" >> $GITHUB_OUTPUT
          elif [[ "${{ github.ref }}" == "refs/heads/canary" ]]; then
            echo "config=hugo.canary.yaml" >> $GITHUB_OUTPUT
            echo "environment=canary" >> $GITHUB_OUTPUT
          else
            echo "config=hugo.yaml" >> $GITHUB_OUTPUT
            echo "environment=production" >> $GITHUB_OUTPUT
          fi

      - name: Build Hugo Site
        run: |
          cd site
          hugo --config ${{ steps.env.outputs.config }} --minify --environment ${{ steps.env.outputs.environment }}

      - name: Deploy to Azure Static Web Apps
        id: builddeploy
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN }}
          repo_token: ${{ secrets.GITHUB_TOKEN }}
          action: "upload"
          app_location: "public"
          api_location: ""
          output_location: ""
          config_file_location: "staticwebapp.config.${{ steps.env.outputs.environment }}.json"

  close_pull_request_job:
    if: github.event_name == 'pull_request' && github.event.action == 'closed'
    runs-on: ubuntu-latest
    name: Close Pull Request Job
    steps:
      - name: Close Pull Request
        id: closepullrequest
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN }}
          action: "close"
```

## Development Configuration

### VS Code Settings (`.vscode/settings.json`)

```json
{
  "files.associations": {
    "*.html": "html",
    "*.yaml": "yaml",
    "*.yml": "yaml"
  },
  "emmet.includeLanguages": {
    "html": "html"
  },
  "hugo.server.renderStaticToDisk": true,
  "markdown.preview.fontSize": 14,
  "markdown.preview.lineHeight": 1.6,
  "files.exclude": {
    "public/": true,
    "resources/": true,
    "site/.hugo_build.lock": true
  }
}
```

### VS Code Extensions (`.vscode/extensions.json`)

```json
{
  "recommendations": ["budparr.language-hugo-vscode", "yzhang.markdown-all-in-one", "redhat.vscode-yaml", "ms-vscode.vscode-json", "esbenp.prettier-vscode", "streetsidesoftware.code-spell-checker"]
}
```

## Configuration Best Practices

### Security Considerations

- **Never commit secrets** to version control
- **Use environment variables** for sensitive data
- **Enable security headers** in Static Web Apps config
- **Regular updates** of dependencies and Hugo version

### Performance Optimization

- **Enable minification** in production
- **Use CDN caching** through Azure Static Web Apps
- **Optimize images** before committing
- **Monitor bundle sizes** and build times

### Maintenance

- **Regular config reviews** for outdated settings
- **Test configurations** in different environments
- **Document changes** when updating configs
- **Backup configurations** before major changes

---

🔙 **Back to**: [Documentation Home](./README.md)  
➡️ **Next**: [Troubleshooting Guide](./troubleshooting.md)
