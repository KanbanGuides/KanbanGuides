# Translation Guide

Help us make the Open Guide to Kanban accessible to everyone worldwide by contributing translations!

Please read the [Code of Conduct for Translation Contributors](translations-code-of-conduct.md) before starting.

## 🎯 Quick Start - Choose Your Path

### Option 1: GitHub Collaboration (for contributors familiar with GitHub)

**Best for:** Translators familiar with Git, GitHub, and the [Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests) Workflow.

**Process:**

1. Fork the repository
2. Create translation files with our [Automated Setup](#option-a-automated-setup-powershell---recommended)
3. Collaborate with other translators
4. Submit Pull Request for review

[📖 Skip to GitHub Workflow](#github-workflow) →

### Option 2: Manual Submission (for contributors who don't understand GitHub)

**Best for:** Translators who are non-technical and dont want to [collaborating with pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests).

**Process:**

1. Download translation templates
2. Work independently or collaborate via email/messaging
3. Submit completed translations via GitHub Issues
4. We'll create the Pull Request for community review

[📖 Skip to Manual Workflow](#manual-workflow) →

---

## 📋 What Needs Translation

Adding a new language involves **two distinct phases**. Understanding this split is important before you start.

### Phase 1: Site Scaffolding (agent-handled)

The `@tranguide.create` agent handles all of this automatically. You do not need to do it manually:

| What | File(s) | Notes |
|---|---|---|
| Language config | `site/hugo.yaml`, `site/hugo.production.yaml` | Adds language, disables in production until ready |
| UI strings | `site/i18n/{LANG}.yaml` | ~40 navigation, button, and label strings |
| Homepage index | `site/content/_index.{LANG}.md` | Section landing page |
| Guide section indexes | `site/content/open-guide-to-kanban/_index.{LANG}.md`, `site/content/the-kanban-guide/_index.{LANG}.md` | Per-guide landing pages |
| Guide version files | `site/content/open-guide-to-kanban/2025.7/index.{LANG}.md`, `site/content/the-kanban-guide/2025.5/index.{LANG}.md` | Created with translated front matter and **empty body** |

> **Note:** Contributor attribution is managed in `site/data/contributions/` YAML files — see [Content Management](./content-management.md) for details.

### Phase 2: Guide Body Translation (always manual)

This is the work that **only a human translator can do**. The agent never translates guide body text.

After site scaffolding, the guide version files exist but their body is empty. You must translate the full Markdown body of each guide into your language:

| What | File | Size |
|---|---|---|
| Open Guide to Kanban body | `site/content/open-guide-to-kanban/2025.7/index.{LANG}.md` | ~900 lines |
| The Kanban Guide body | `site/content/the-kanban-guide/2025.5/index.{LANG}.md` | ~400 lines |

> These files are created by the agent with correct front matter already filled in. Your job is to add the translated body content below the front matter.

---

**In short:** The agent sets up the site infrastructure. You translate the guide text. Both are required for a complete translation.

---

## 🔧 GitHub Workflow

### Prerequisites

- GitHub account
- Basic understanding of Git/GitHub
- Markdown knowledge helpful but not required

### Step 1: Set Up Your Fork

1. **Fork the repository**
   - Go to [KanbanGuides](https://github.com/KanbanGuides/KanbanGuides)
   - Click "Fork" button
   - Clone your fork locally

```bash
git clone https://github.com/YOUR-USERNAME/KanbanGuides.git
cd KanbanGuides
```

### Step 2: Create Translation Branch

```bash
git checkout -b translation/add-{LANG}-language
```

Replace `{LANG}` with your language code (e.g., `pt` for Portuguese, `ja` for Japanese).

### Step 3: Site Scaffolding

This step sets up the site infrastructure for your language. **Use the `@tranguide.create` agent** — it handles all of this automatically:

```
@tranguide.create de German
```

**What the agent does (Phase 1 — Site Scaffolding):**

- ✅ Adds language configuration to `hugo.yaml`
- ✅ Disables it in `hugo.production.yaml` (until the translation is ready)
- ✅ Creates `site/i18n/{LANG}.yaml` with all UI strings translated
- ✅ Creates all structural wrapper content files (`_index`, history, translations pages) fully translated
- ✅ Creates versioned guide files with translated front matter and **empty body** ready for you to fill in
- ✅ Validates the complete setup and reports results

> If you don't have access to GitHub Copilot Chat, see the [Manual Workflow](#manual-workflow) for how to set up the site scaffolding by hand.

### Step 4: Translate the Guide Bodies

This is **Phase 2 — the manual work that only you can do**. The agent has created the guide files but left the body empty. Now translate the actual guide content:

1. **Open the scaffolded guide files:**
   - `site/content/open-guide-to-kanban/2025.7/index.{LANG}.md` (~900 lines)
   - `site/content/the-kanban-guide/2025.5/index.{LANG}.md` (~400 lines)

2. **The front matter is already translated** by the agent. Translate only the body content below the `---` closing the front matter.

3. **Preserve while translating:**
   - Markdown formatting (`##`, `**bold**`, `[links](url)`)
   - Hugo shortcodes
   - HTML comments and IDs
   - Reference numbers exactly as-is (e.g. `(40)`, `(58)`)

### Step 5: Test Your Translation

1. **Install Hugo** (see [Development Guide](development.md))
2. **Start the development server** (from project root):

```bash
hugo serve --source site --config hugo.yaml,hugo.local.yaml
```

3. **View your translation:**
   - Navigate to `http://localhost:1313/{LANG}/open-guide-to-kanban/`
   - Check all pages and UI elements
   - Verify language switching works correctly

### Step 6: Submit for Review

1. **Commit your changes:**

```bash
git add .
git commit -m "Add {LANG} translation"
git push origin translation/add-{LANG}-language
```

2. **Create Pull Request:**

   - Go to your fork on GitHub
   - Click "New Pull Request"
   - Use title: "Add {Language Name} translation"
   - Include translation details in description

3. **Review Process:**
   - Creators and community will review
   - Native speakers may suggest improvements
   - Collaborate on refinements
   - Merge when approved

---

## 📝 Manual Workflow

> 💡 **Tip:** The manual workflow covers **site scaffolding by hand** for contributors without access to GitHub Copilot Chat. **Guide body translation is always manual regardless of which path you take** — see [Phase 2: Guide Body Translation](#phase-2-guide-body-translation-always-manual) above.

### Step 1: Get Translation Templates

1. **Download files to translate:**

   - [Open Guide to Kanban (English)](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/content/open-guide-to-kanban/2025.7/index.md)
   - [The Kanban Guide (English)](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/content/the-kanban-guide/2025.5/index.md)
   - [UI Translations Template](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/i18n/en.yaml)

2. **Save locally** with your language code:
   - `index.{LANG}.md` for each guide (e.g., `index.pt.md`)
   - `{LANG}.yaml` (e.g., `pt.yaml`)

### Step 2: Site Scaffolding (manual)

1. **Add language to `site/hugo.yaml`** in the `languages:` section:

```yaml
languages:
  # ... existing languages
  {LANG}:
    languageName: Your Language Name
    weight: 2 # Adjust as needed
    title: Your Translated Site Title
    params:
      description: "Your translated description"
      keywords: "Your translated keywords"
```

2. **Create the UI strings file:**

```bash
cp site/i18n/en.yaml site/i18n/{LANG}.yaml
```

   Translate each `translation:` value in the new file. Keep all `id:` values unchanged.

3. **Create section index files** (copy English and translate front matter + body):

```bash
cp site/content/_index.md site/content/_index.{LANG}.md
cp site/content/open-guide-to-kanban/_index.md site/content/open-guide-to-kanban/_index.{LANG}.md
cp site/content/the-kanban-guide/_index.md site/content/the-kanban-guide/_index.{LANG}.md
```

4. **Create empty guide version files** (front matter only — body translation is a separate step):

```bash
cp site/content/open-guide-to-kanban/2025.7/index.md \
   site/content/open-guide-to-kanban/2025.7/index.{LANG}.md
cp site/content/the-kanban-guide/2025.5/index.md \
   site/content/the-kanban-guide/2025.5/index.{LANG}.md
```

   Translate the front matter fields (`title`, `description`, `keywords`) and clear the body — you will translate it in the next step.

### Step 3: Translate the Guide Bodies

This is the same as the GitHub workflow [Step 4: Translate the Guide Bodies](#step-4-translate-the-guide-bodies) — translate the full body content of each guide file.

### Step 3: Collaborate (Optional)

- Share files with other translators via email or messaging
- Use Google Docs or similar for collaborative editing
- Coordinate with existing translation communities

### Step 4: Submit Translation

1. **Create GitHub Issue:**

   - Go to [Issues page](https://github.com/KanbanGuides/KanbanGuides/issues)
   - Click "New Issue"
   - Title: "Translation Submission: {Language Name}"

2. **Include in issue:**

   - Language name and code
   - Attach your translated files
   - List any collaborators to credit
   - Note any questions or concerns

3. **We'll handle the rest:**
   - Create proper Git commits
   - Set up Pull Request
   - Coordinate community review
   - Handle technical integration

---

## 🌍 Translation Guidelines

### Language Codes

Use [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) language tags. The project uses these formats:

**Current languages:**

- `en` - English (default)
- `ja` - Japanese
- `es-419` - Spanish (Latin America)
- `es-ES` - Spanish (Spain)
- `fa` - Farsi/Persian (RTL)
- `pl` - Polish

**Adding new languages:**

- Use two-letter codes for most languages: `pt`, `de`, `fr`, `ko`
- Use regional subtags when needed: `pt-BR` for Brazilian Portuguese
- Three-letter codes for languages without two-letter codes: `min` (Minionese example)

### Content Guidelines

1. **Preserve Structure:**

   - Keep all headings, links, and formatting
   - Maintain reference numbers exactly: (40), (58)
   - Don't translate technical terms unnecessarily

2. **Cultural Adaptation:**

   - Adapt examples to local context when appropriate
   - Maintain the professional, educational tone
   - Consider regional business practices

3. **Consistency:**
   - Use consistent terminology throughout
   - Create a glossary for key Kanban terms
   - Follow existing translation patterns if available

### Quality Standards

- **Accuracy:** Faithful to original meaning
- **Clarity:** Clear and understandable for target audience
- **Completeness:** All content translated
- **Formatting:** Markdown and YAML syntax preserved

---

## 🔗 Technical Resources

### PowerShell Installation

For using the automated translation setup script:

- **Windows:** [Install PowerShell 7+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)
- **macOS:** [Install PowerShell on macOS](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-macos)
- **Linux:** [Install PowerShell on Linux](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux)

### Hugo Documentation

- [Hugo i18n Documentation](https://gohugo.io/content-management/multilingual/)
- [Hugo Content Management](https://gohugo.io/content-management/)
- [Markdown Guide](https://www.markdownguide.org/)

### YAML Resources

- [YAML Syntax Guide](https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html)
- [YAML Validator](https://yamlchecker.com/)

### Project Resources

- [Development Setup](development.md)
- [Contributing Guidelines](contributing.md)
- [Content Management](content-management.md)

---

## 🤝 Getting Help

### Before You Start

- Review the existing Klingon translation (`tlh`) as an example implementation
- Check if your language is already in progress
- Join our community discussions

### During Translation

- **GitHub Users:** Comment on your Pull Request
- **Community Contributors:** Comment on your submission issue
- **General Questions:** Create a [new issue](https://github.com/KanbanGuides/KanbanGuides/issues)

### Translation Communities

- Connect with other translators in your language
- Share resources and terminology decisions
- Coordinate on quality review

---

## 🎉 Recognition

All translation contributors will be:

- Credited in the translated version
- Listed in project contributors
- Recognized in release notes
- Invited to join the translation team

Thank you for helping make Kanban knowledge accessible worldwide! 🌍
