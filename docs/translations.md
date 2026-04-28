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

To add a new language to the site, you'll need to translate content for **both guides** plus the UI strings.

### 1. Open Guide to Kanban (current version: 2025.7)

- **File:** `site/content/open-guide-to-kanban/2025.7/index.{LANG}.md`
- **Content:** The complete Open Guide to Kanban document
- **Size:** ~900 lines of Markdown content

### 2. The Kanban Guide (current version: 2025.5)

- **File:** `site/content/the-kanban-guide/2025.5/index.{LANG}.md`
- **Content:** The complete Kanban Guide document
- **Size:** ~400 lines of Markdown content

### 3. Section Index Pages

Each guide has a section index that should also be translated:

- `site/content/open-guide-to-kanban/_index.{LANG}.md`
- `site/content/the-kanban-guide/_index.{LANG}.md`
- `site/content/_index.{LANG}.md` (homepage)

### 4. User Interface Elements

- **File:** `site/i18n/{LANG}.yaml`
- **Content:** Navigation, buttons, labels, and interface text
- **Size:** ~40 translation keys

> **Note:** There is no `creators/` or `download/` content directory. Contributor attribution is managed in `site/data/contributions/` YAML files — see [Content Management](./content-management.md) for details.

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

### Step 3: Create Translation Files

#### Option A: Agent-Assisted Setup (Recommended)

Use the `@tranguide.create` agent in GitHub Copilot Chat. It will ask for any missing details and scaffold everything for you:

```
@tranguide.create de German
```

**What the agent does:**

- ✅ Adds language configuration to `hugo.yaml`
- ✅ Disables it in `hugo.production.yaml` (until the translation is ready)
- ✅ Creates `site/i18n/{LANG}.yaml` with all strings translated
- ✅ Creates all structural wrapper content files (`_index`, history, translations pages) fully translated
- ✅ Creates versioned guide files with translated front matter and **empty body** ready for a human translator
- ✅ Validates the complete setup and reports results

#### Option B: Manual Setup

If you prefer manual setup:

**A. Guide Content Translation**

1. Copy the English guide for each guide you're translating:

```bash
# Open Guide to Kanban
cp site/content/open-guide-to-kanban/2025.7/index.md \
   site/content/open-guide-to-kanban/2025.7/index.{LANG}.md

# The Kanban Guide
cp site/content/the-kanban-guide/2025.5/index.md \
   site/content/the-kanban-guide/2025.5/index.{LANG}.md
```

2. Edit the front matter in each file — at minimum translate `title`, `description`, `keywords`, and set `lang` to your language code.

3. Translate the entire body content while preserving:
   - Markdown formatting (`##`, `**bold**`, `[links](url)`)
   - Hugo shortcodes
   - HTML comments and IDs

**B. UI Translation File**

1. Copy the English translations:

```bash
cp site/i18n/en.yaml site/i18n/{LANG}.yaml
```

2. Translate each entry in `site/i18n/{LANG}.yaml`:

```yaml
# Example - keep the ID, translate the text
- id: read_online_title
  translation: "Your translated text here"
```

**C. Add Language to Hugo Configuration**

Add your language to `site/hugo.yaml` in the `languages:` section:

```yaml
languages:
  # ... existing languages
  { LANG }:
    languageName: Your Language Name
    weight: 2 # Adjust as needed
    title: Your Translated Site Title
    params:
      description: "Your translated description"
      keywords: "Your translated keywords"
```

### Step 4: Test Your Translation

1. **Install Hugo** (see [Development Guide](development.md))
2. **Start the development server:**

```bash
cd site
hugo server --config hugo.yaml,hugo.local.yaml
```

3. **View your translation:**
   - Navigate to `http://localhost:1313/{LANG}/open-guide-to-kanban/`
   - Check all pages and UI elements
   - Verify language switching works correctly

### Step 5: Submit for Review

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

> 💡 **Tip:** Even if you prefer a manual workflow, you can still use the [`@tranguide.create` agent](#option-a-agent-assisted-setup-recommended) to scaffold all template files — then edit the generated files manually.

### Step 1: Get Translation Templates

1. **Download files to translate:**

   - [Open Guide to Kanban (English)](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/content/open-guide-to-kanban/2025.7/index.md)
   - [The Kanban Guide (English)](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/content/the-kanban-guide/2025.5/index.md)
   - [UI Translations Template](https://raw.githubusercontent.com/KanbanGuides/KanbanGuides/main/site/i18n/en.yaml)

2. **Save locally** with your language code:
   - `index.{LANG}.md` for each guide (e.g., `index.pt.md`)
   - `{LANG}.yaml` (e.g., `pt.yaml`)

### Step 2: Translate Content

1. **Main Guide (`index.{LANG}.md`):**

   - Translate title and description in the frontmatter
   - Translate all body content
   - Keep all Markdown formatting intact
   - Preserve reference numbers and links

2. **UI File (`{LANG}.yaml`):**
   - Translate only the text after `translation:`
   - Keep the `id:` values unchanged
   - Maintain YAML formatting

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
