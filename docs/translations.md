# Translation Guide

Help make the guides accessible worldwide by contributing a translation. Before starting, you must read and agree to the [Translations Code of Conduct](./translations-code-of-conduct.md).

> Open a discussion at [kanbanguides.org](https://kanbanguides.org) or via the KanbanGuides Slack channel to notify the translation guardian **before** starting any translation work.

---

## What Needs Translating

Adding a new language involves two distinct phases:

### Phase 1: Site Scaffolding (tooling-handled)

The `@tranguide.create` agent handles all of this automatically:

| What | File(s) |
|---|---|
| Language config | `site/hugo.yaml`, `site/hugo.production.yaml` |
| UI strings | `site/i18n/{LANG}.yaml` (~40 strings) |
| Homepage index | `site/content/_index.{LANG}.md` |
| Guide section indexes | `site/content/open-guide-to-kanban/_index.{LANG}.md`, `site/content/the-kanban-guide/_index.{LANG}.md` |
| Versioned guide files | Created with translated front matter and **empty body** |

### Phase 2: Guide Body Translation (always manual)

The agent never translates guide body text — that is your work:

| File | Size |
|---|---|
| `site/content/open-guide-to-kanban/2025.7/index.{LANG}.md` | ~900 lines |
| `site/content/the-kanban-guide/2025.5/index.{LANG}.md` | ~400 lines |

The front matter is already translated by the agent. Translate only the body content below the closing `---`.

---

## GitHub Workflow

For translators familiar with Git and [Pull Requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests).

### Step 1: Fork and branch

```bash
git clone https://github.com/YOUR-USERNAME/KanbanGuides.git
cd KanbanGuides
git checkout -b translation/add-{LANG}-language
```

### Step 2: Scaffold the site (Phase 1)

Use the `@tranguide.create` agent in GitHub Copilot Chat:

```
@tranguide.create de German
```

If you don't have Copilot Chat, do it manually — see [Manual scaffolding](#manual-scaffolding) below.

### Step 3: Translate the guide bodies (Phase 2)

Open the scaffolded files and translate the body content:

- `site/content/open-guide-to-kanban/2025.7/index.{LANG}.md`
- `site/content/the-kanban-guide/2025.5/index.{LANG}.md`

**Preserve while translating:**
- Markdown formatting (`##`, `**bold**`, `[links](url)`)
- Hugo shortcodes
- HTML comments and IDs
- Reference numbers exactly as-is (e.g. `(40)`, `(58)`)

See [Reserved Words](#reserved-words) for terms that require special handling.

### Step 4: Test locally

```bash
# From project root
hugo serve --source site --config hugo.yaml,hugo.local.yaml
```

Navigate to `http://localhost:1313/{LANG}/open-guide-to-kanban/` and verify all pages and UI elements.

### Step 5: Submit a Pull Request

```bash
git add .
git commit -m "Add {Language Name} translation"
git push origin translation/add-{LANG}-language
```

Open a PR with title `Add {Language Name} translation`. Reference the prior site discussion in the description. The community and guide creators will review and collaborate on refinements before merge.

---

## Manual Workflow

For translators who do not use GitHub directly. Guide body translation is still required regardless of path.

### Step 1: Download the source files

- [Open Guide to Kanban (English)](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/content/open-guide-to-kanban/2025.7/index.md)
- [The Kanban Guide (English)](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/content/the-kanban-guide/2025.5/index.md)
- [UI Strings Template](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/i18n/en.yaml)

Save them locally as `index.{LANG}.md` and `{LANG}.yaml`.

### Step 2: Translate

Translate the guide body content and all `translation:` values in the i18n YAML (keep `id:` values unchanged).

### Step 3: Submit via GitHub Issue

1. Go to [Issues](https://github.com/KanbanGuides/KanbanGuides/issues) → New Issue
2. Title: `Translation Submission: {Language Name}`
3. Attach your translated files and list any collaborators to credit
4. Maintainers will create the PR and coordinate community review

---

## Manual Scaffolding

If you need to set up the site infrastructure without the `@tranguide.create` agent:

**1. Add language to `site/hugo.yaml`:**

```yaml
languages:
  {LANG}:
    languageName: Your Language Name
    weight: 2
    title: Your Translated Site Title
```

**2. Create the UI strings file:**

```bash
cp site/i18n/en.yaml site/i18n/{LANG}.yaml
# Translate each translation: value; keep all id: values unchanged
```

**3. Create section index files** (copy English, translate front matter and body):

```bash
cp site/content/_index.md site/content/_index.{LANG}.md
cp site/content/open-guide-to-kanban/_index.md site/content/open-guide-to-kanban/_index.{LANG}.md
cp site/content/the-kanban-guide/_index.md site/content/the-kanban-guide/_index.{LANG}.md
```

**4. Create versioned guide files** (copy English, translate front matter, clear body):

```bash
cp site/content/open-guide-to-kanban/2025.7/index.md \
   site/content/open-guide-to-kanban/2025.7/index.{LANG}.md
cp site/content/the-kanban-guide/2025.5/index.md \
   site/content/the-kanban-guide/2025.5/index.{LANG}.md
```

---

## Reserved Words

Some terms require special handling. See the full list in the [Translations Code of Conduct §5](./translations-code-of-conduct.md).

The key rule: if you translate a reserved word, the American English term must appear in parentheses after its first occurrence. Subsequently, you may use the translated term. You may also keep the English term throughout if that is the better option.

Example (French): *Le concept de flux(Flow) est au cœur de la compréhension de Kanban.*

Reference sections and cited titles must **not** be translated.

---

## Language Codes

Use [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) tags. Current languages:

| Code | Language |
|---|---|
| `en` | English (default) |
| `ja` | Japanese |
| `es-419` | Spanish (Latin America) |
| `es-ES` | Spanish (Spain) |
| `fa` | Farsi/Persian (RTL) |
| `pl` | Polish |

Use two-letter codes for most new languages (`pt`, `de`, `fr`, `ko`). Use regional subtags where regional differences matter (`pt-BR`).

---

## Translator Attribution

Translators are credited in `site/data/contributions/{guide-name}.yml`:

```yaml
- name: María García
  language: es-419
  githubUsername: mariagarcia
  contributions:
    - "2025.7"
  role: translator
  weight: 100
```

You may also include a `Translator Acknowledgement` section in the translated document — see [Translations Code of Conduct §4](./translations-code-of-conduct.md) for required fields.

---

## Auditing Existing Translations

Use the `@tranguide.reconcile` agent to check for gaps:

```
@tranguide.reconcile de          # audit German
@tranguide.reconcile all         # audit all languages
@tranguide.reconcile de fix      # audit and repair German
```

Or use `@tranguide.status` for a dashboard view:

```
@tranguide.status                # all languages
@tranguide.status de             # one language
```
