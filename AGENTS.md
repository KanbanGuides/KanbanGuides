# Agent Instructions — KanbanGuides

## Always Run a Build

**After every content, template, or configuration change, run a full Hugo build to verify there are no errors:**

```powershell
hugo --source site --config hugo.yaml,hugo.local.yaml
```

The build must complete with exit code 0 and no `ERROR` lines before committing. Warnings are acceptable.

## Front Matter Rules

- **Do NOT use `lang:` in front matter.** Hugo v0.144.0+ removed this field and will error on it. Hugo determines language from the file suffix (e.g. `index.fa.md` → Farsi).
- For PDF generation, `lang` is passed via `--metadata lang=...` in the Pandoc script — it must **not** be in front matter.

## Project Structure

- `site/` — Hugo source (content, layouts, i18n, static assets)
- `site/content/` — Markdown content files
- `site/layouts/` — Hugo templates (v0.146.0+ structure: `_partials/`, `_shortcodes/`, `_markup/`)
- `site/i18n/` — Translation strings per language
- `site/hugo.yaml` — Main Hugo config
- `site/hugo.production.yaml` — Production overrides (language `disabled:` flags)
- `.agents/skills/` — Agent skill definitions (see each `SKILL.md`)

## Key Commands

| Task | Command |
|------|---------|
| Build (verify changes) | `hugo --source site --config hugo.yaml,hugo.local.yaml` |
| Dev server | `hugo serve --source site --config hugo.yaml,hugo.local.yaml` |
| Hugo version/env | `hugo version` / `hugo env` |
| Generate PDFs | `.\.agents\skills\guide.genpdfs\Create-GuidePDFs.ps1` |

## Available Skills

Skills are in `.agents/skills/`. Always read the relevant `SKILL.md` before executing a skill.

| Skill | Trigger |
|-------|---------|
| `guide.transcreate` | Add a new language translation |
| `guide.transstatus` | Report translation progress dashboard |
| `guide.transreconcile` | Audit/fix incomplete translations |
| `guide.contributions` | Manage contributor YAML files |
| `guide.genpdfs` | Generate PDFs from guide content |
| `guide.gravatar` | Generate Gravatar hash for a contributor |
| `guide.historicalversion` | Archive current guide as a historical version |

## Hugo Version

Hugo Extended v0.146.0+ required (uses new template system). Check with `hugo version`.
