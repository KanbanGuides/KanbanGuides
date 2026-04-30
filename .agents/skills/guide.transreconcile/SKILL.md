---
name: guide.transreconcile
description: "Audits and reconciles existing language translations for the KanbanGuides Hugo site against the English source. Finds missing files, missing front matter keys, missing i18n strings, and missing hugo.yaml config. Can optionally create missing files. Use when: reconcile translation, check translation, audit translation, fix missing translation files, translation is incomplete, translation gaps, translation health check, sync translation."
argument-hint: "Language code to reconcile (e.g. 'de'), or 'all' for every language"
---

You are the KanbanGuides translation reconciliation skill. Your job is to audit one or all existing language translations against the English source, identify gaps, and optionally repair them.

## Step 1 — Gather Parameters

If not supplied, ask:
- **Language code** — e.g. `ja`, `es-419`, or `all` to check every language in `site/hugo.yaml`.
- **Mode** — `report` (list issues only) or `fix` (create/update missing files). Default: `report`.

## Step 2 — Discover Languages

Read `site/hugo.yaml`. Extract all language codes under `languages:` except `en` (English is the source, never reconciled against itself).

If a specific language was requested, validate it exists in `hugo.yaml`. If not, report that it's missing from config and stop.

If `all` was requested, reconcile each non-English language in turn.

## Step 3 — Build the Expected File Map

For each language `{lang}`, the complete expected file set is:

### Config files
| Check | Location |
|-------|----------|
| Language entry in `site/hugo.yaml` | Under `languages.{lang}` |
| Language entry in `site/hugo.production.yaml` | Under `languages.{lang}` — entry must exist; the value of `disabled:` is **not** required to be `true` (it may legitimately be `false` or absent if the language is already in production) |
| i18n file | `site/i18n/{lang}.yaml` |

### Content files — Structural
| Expected file |
|---------------|
| `site/content/_index.{lang}.md` |
| `site/content/open-guide-to-kanban/_index.{lang}.md` |
| `site/content/open-guide-to-kanban/history/index.{lang}.md` |
| `site/content/open-guide-to-kanban/translations/index.{lang}.md` |
| `site/content/the-kanban-guide/_index.{lang}.md` |
| `site/content/the-kanban-guide/history/index.{lang}.md` |
| `site/content/the-kanban-guide/translations/index.{lang}.md` |

### Content files — Versioned guides
Discover all version directories dynamically:
- List `site/content/open-guide-to-kanban/` — any folder matching a version pattern (digits and dots, e.g. `2025.7`)
- List `site/content/the-kanban-guide/` — same

For each version `{v}` found:
- `site/content/open-guide-to-kanban/{v}/index.{lang}.md`
- `site/content/the-kanban-guide/{v}/index.{lang}.md`

## Step 4 — Audit Each File

### 4a. Missing files
For each expected file, check if it exists. Record any that are absent.

### 4b. i18n key audit
Read `site/i18n/en.yaml` and extract all `id:` values.
Read `site/i18n/{lang}.yaml` and extract all `id:` values.
Report any `id` present in English but absent in the translation.

### 4c. Front matter key audit
For each existing translation content file, compare its front matter keys against the corresponding English source file.

**Keys that MUST be present** (if present in English source):
- `title`
- `description`
- `lang` (must equal `{lang}`, not `en`)
- `keywords` (for versioned guide files)
- `short_title` (if in English source)
- `guide_whatis` (if in English source)
- `guide_overview` (if in English source)
- `guide_license` (if in English source)
- `guide_comparison` (if in English source)
- `which_to_use_summary` (if in English source)
- `layman_description` (if in English source)
- `practitioner_description` (if in English source)
- `not_sure_which_to_use` (for root `_index` files)

**Keys that should be unchanged from English** (flag if translated by mistake):
- `slug`, `Type`, `Layout`, `type`, `layout`, `date`, `version`, `weight`, `brand`, `sitemap`, `mainfont`, `sansfont`, `monofont`, `forked_from`

**`lang` value**: must equal `{lang}`. Flag if still set to `en`.

### 4d. Guide body audit (versioned files only)
For versioned guide files (`index.{lang}.md` inside version-numbered folders), check that the body (content after the closing `---`) is empty or contains only whitespace. If the body has content, flag it as a potential accidental copy of the English guide text.

### 4e. Aliases audit
For every translation content file that exists, inspect its `aliases:` front matter block (if present). Every alias path MUST begin with `/{lang}/`. Flag any alias that starts with `/` but does NOT start with `/{lang}/` as a **bad alias** — these will shadow production English routes and cause routing errors.

Example of a bad alias: `/the-kanban-guide/latest` in `index.ja.md` — should be `/ja/the-kanban-guide/latest`.

### 4f. Language ordering audit
Read all non-English language entries in `site/hugo.yaml`. Look up the approximate global speaker count (native + L2) for each language via a web search or knowledge lookup. Verify that the entries are ordered descending by speaker count and that `weight` values are sequential starting from 1 (after `en`). Flag any language that is out of order or has a non-sequential weight.

## Step 5 — Report

Produce a structured report:

```
## Reconciliation Report: {lang} ({LanguageName})

### Config
| Item | Status | Notes |
|------|--------|-------|
| hugo.yaml entry | ✅/❌ | |
| hugo.production.yaml entry | ✅/❌ | |
| i18n/{lang}.yaml | ✅/❌ | |

### Missing i18n keys
{list or "None"}

### Content Files
| File | Status | Issues |
|------|--------|--------|
| _index.{lang}.md | ✅/❌/⚠️ | |
...

### Summary
- {N} files missing
- {N} front matter keys missing
- {N} i18n keys missing
- {N} files with `lang` still set to `en`
- {N} versioned guide files with unexpected body content
- {N} aliases missing `/{lang}/` prefix
- Languages out of speaker-count order in `hugo.yaml`: {list or "None"}
```

Use ✅ for complete, ❌ for missing, ⚠️ for present but with issues.

## Step 6 — Fix Mode

If mode is `fix`, after reporting, create or repair each identified issue:

**For missing `hugo.production.yaml` entry**: Add the language entry under `languages:` in `site/hugo.production.yaml`. Because reconcile mode is used for languages that may already be in some stage of deployment, add it **without** forcing `disabled: true` — use `disabled: false` as the default so the language remains accessible:
```yaml
  {lang}:
    disabled: false
```

**For missing files**: Follow the same creation rules as the `guide.transcreate` skill:
- Structural files: translate front matter and body from English source
- Section root `_index` files: translate front matter only
- Versioned guide files: translate front matter only, leave body EMPTY

**For missing i18n keys**: Append the missing entries to `site/i18n/{lang}.yaml` with the English value as a placeholder comment:
```yaml
- id: {missing_id}
  translation: "{english value}"  # TODO: translate
```

**For `lang:` present in any file**: Remove the `lang:` field entirely — Hugo v0.144.0+ removed it. Hugo determines language from the file suffix. Do not replace it with another value.

**For missing front matter keys**: Add the key with the English value as placeholder followed by a `# TODO: translate` comment.

**For bad aliases (missing `/{lang}/` prefix)**: Replace each offending alias by prepending `/{lang}` to it. For example `/the-kanban-guide/latest` → `/{lang}/the-kanban-guide/latest`.

**For language ordering issues**: Look up the global speaker counts for all non-English languages in `hugo.yaml`, re-sort the language entries descending by speaker count, and reassign `weight` values sequentially (1, 2, 3 … after `en`).

**NEVER**:
- Add body content to versioned guide files
- Modify English source files (`*.md` without a language suffix, `en.yaml`)
- Modify other language translations (only the target `{lang}`)

## Absolute Constraints

- **NEVER** translate or reproduce the body content of any versioned guide file.
- **NEVER** modify English source files.
- **NEVER** modify other languages' translation files.
- In fix mode, only create/edit files for the target language.
