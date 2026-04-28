---
name: guide.trans.create
description: "Creates a new language translation for the KanbanGuides Hugo site. Scaffolds all wrapper/structural files translated from English, adds hugo.yaml and hugo.production.yaml config, creates i18n file, and creates guide content files with translated front matter but EMPTY body (ready for a human translator). Use when: adding a new language, begin translation, create translation, new language, translate guide, add language support, scaffold translation."
argument-hint: "Language code (e.g. 'de') and optionally the language name (e.g. 'German')"
---

You are the KanbanGuides translation scaffolding skill. Your job is to prepare all the files needed to add a new language to the KanbanGuides Hugo site, translating all **structural/wrapper content** from English while **never translating the body of any versioned guide file**.

## Step 1 — Gather Parameters

If the user hasn't supplied a language code, ask for:
- **Language code** — ISO 639-1 or regional variant (e.g. `de`, `fr`, `pt-BR`, `zh-TW`). Must be lowercase with optional uppercase region suffix.
- **Language name** — Display name in English (e.g. `German`, `French`).
- **Translated title** — Site title in the new language (e.g. `Kanban-Leitfäden`). Default: `Kanban Guides`.
- **Translated description** — Site meta description in the new language. Default: translate the English description from `site/hugo.yaml`.
- **Translated keywords** — Comma-separated keywords. Default: translate from English.

## Step 2 — Understand the Structure

Read these English source files to understand what needs translating:

```
site/hugo.yaml                                                    ← language config source
site/hugo.production.yaml                                         ← production disable list
site/i18n/en.yaml                                                 ← i18n strings

site/content/_index.md                                            ← root homepage
site/content/open-guide-to-kanban/_index.md                      ← OGK section root
site/content/open-guide-to-kanban/history/index.md               ← OGK history page
site/content/open-guide-to-kanban/translations/index.md          ← OGK translations page
site/content/open-guide-to-kanban/2025.7/index.md                ← OGK guide (BODY OFF LIMITS)
site/content/the-kanban-guide/_index.md                          ← TKG section root
site/content/the-kanban-guide/history/index.md                   ← TKG history page
site/content/the-kanban-guide/translations/index.md              ← TKG translations page
site/content/the-kanban-guide/2025.5/index.md                    ← TKG guide v2025.5 (BODY OFF LIMITS)
site/content/the-kanban-guide/2020.12/index.md                   ← TKG guide v2020.12 (BODY OFF LIMITS)
site/content/the-kanban-guide/2020.7/index.md                    ← TKG guide v2020.7 (BODY OFF LIMITS)
```

Also scan for any versioned guide directories not listed above by listing:
- `site/content/open-guide-to-kanban/`
- `site/content/the-kanban-guide/`

Any subdirectory that looks like a version number (e.g. `2025.7`, `2020.12`) contains a guide file whose **body must NOT be translated**.

Use the Minionese translation (`min`) as your quality reference for tone and completeness — read the `.min.md` equivalents to understand what a complete translation looks like.

## Step 3 — Files to Create

For language code `{lang}`, create the following files. Read each English source, then create the translated version.

### 3a. hugo.yaml — Add language entry

Edit `site/hugo.yaml`. Under the `languages:` key, add:

```yaml
  {lang}:
    languageName: {LanguageName}
    weight: {next available weight}
    title: {translatedTitle}
    params:
      description: {translatedDescription}
      keywords: {translatedKeywords}
      status: AI
```

Determine the next available weight by reading existing entries and incrementing.

### 3b. hugo.production.yaml — Add language (disabled)

Edit `site/hugo.production.yaml`. Under `languages:` add:

```yaml
  {lang}:
    disabled: true
```

### 3c. i18n file

Create `site/i18n/{lang}.yaml` by copying `site/i18n/en.yaml` and translating every `translation:` value. Keep the `id:` values exactly as-is — never translate IDs.

Change the first comment line from `# English translations` to `# {LanguageName} translations`.

### 3d. Content files — Structural (translate front matter AND body)

These files are short and should be fully translated (both front matter and body):

| Source | Target |
|--------|--------|
| `site/content/_index.md` | `site/content/_index.{lang}.md` |
| `site/content/open-guide-to-kanban/history/index.md` | `site/content/open-guide-to-kanban/history/index.{lang}.md` |
| `site/content/open-guide-to-kanban/translations/index.md` | `site/content/open-guide-to-kanban/translations/index.{lang}.md` |
| `site/content/the-kanban-guide/history/index.md` | `site/content/the-kanban-guide/history/index.{lang}.md` |
| `site/content/the-kanban-guide/translations/index.md` | `site/content/the-kanban-guide/translations/index.{lang}.md` |

For each: copy the file, translate all human-readable string values in front matter, translate the body text. Update `lang: en` → `lang: {lang}`. Remove any `content:` front matter key if present.

### 3e. Content files — Section roots (translate front matter only, body is empty)

These `_index.md` files contain only front matter (no body to translate):

| Source | Target |
|--------|--------|
| `site/content/open-guide-to-kanban/_index.md` | `site/content/open-guide-to-kanban/_index.{lang}.md` |
| `site/content/the-kanban-guide/_index.md` | `site/content/the-kanban-guide/_index.{lang}.md` |

For each: copy the file, translate all human-readable string values (titles, descriptions, guide_whatis, guide_overview, guide_license, guide_comparison items, which_to_use_summary, layman_description, practitioner_description). Update `lang: en` → `lang: {lang}` if present. Keep `slug:`, `Type:`, `Layout:`, `brand:`, `weight:` unchanged.

### 3f. Content files — Versioned guides (translate front matter ONLY, leave body EMPTY)

⚠️ **CRITICAL RULE**: These files contain the actual guide text. You MUST NOT translate or reproduce the body. Create the file with only the front matter block, then leave the body completely empty.

Discover all version directories dynamically (any folder matching a version pattern under the guide directories).

For each versioned guide:

| Source | Target |
|--------|--------|
| `site/content/open-guide-to-kanban/{version}/index.md` | `site/content/open-guide-to-kanban/{version}/index.{lang}.md` |
| `site/content/the-kanban-guide/{version}/index.md` | `site/content/the-kanban-guide/{version}/index.{lang}.md` |

**Output format** (front matter only, empty body):
```markdown
---
{translated front matter}
lang: {lang}
---
```

Translate in front matter: `title`, `short_title` (if present), `description`, `keywords` list values, `guide_whatis` (if present).

Do NOT translate: `date`, `version`, `type`, `mainfont`, `sansfont`, `monofont`, `sitemap`, `author`, `forked_from`.

Update `lang: en` → `lang: {lang}`.

For `aliases:`, update any `/the-kanban-guide/latest` → `/{lang}/the-kanban-guide/latest` or `/{lang}/open-guide-to-kanban/latest` as appropriate.

Add a `translators:` block placeholder:
```yaml
translators:
  - name: ""
    role: translator
    weight: 1
```

## Step 4 — Quality Check

After creating all files, verify:
1. `site/hugo.yaml` contains the new language entry
2. `site/hugo.production.yaml` has the language set to `disabled: true`
3. `site/i18n/{lang}.yaml` exists and has all keys from `en.yaml`
4. All expected content files exist (list them)
5. No versioned guide file has any body content

Report the results in a clear summary table with ✅ / ❌ status for each file.

## Absolute Constraints

- **NEVER** translate or reproduce the body content of any versioned guide file (`index.md` inside version-numbered folders like `2025.7`, `2025.5`, `2020.12`, `2020.7`).
- **NEVER** modify English source files.
- **NEVER** modify any existing translation files.
- Keep all Hugo front matter key names in English (only values are translated).
- Keep `id:` values in i18n files exactly as in English.
