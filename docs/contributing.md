# Contributing Guide

This repository hosts the canonical copies of **The Kanban Guide** and the **Open Guide to Kanban**. Contributions are welcome and are managed through a discussion-first, collaborative process.

> **All pull requests must be preceded by a site discussion.** PRs submitted without prior community discussion may be closed. This ensures all changes reflect genuine community consensus.

## Contribution Paths

### Path 1: Guide Content Feedback

Suggest improvements, corrections, or additions to the guide content.

1. **Open a discussion** at [kanbanguides.org](https://kanbanguides.org) using the "Submit Ideas" button, or join the KanbanGuides Slack channel
2. **Collaborate** with the community and guide creators — reach consensus on the proposed change
3. **Fork the repository** and make your changes on a branch:

   ```powershell
   git clone https://github.com/KanbanGuides/KanbanGuides.git
   Set-Location KanbanGuides
   git checkout -b feedback/your-short-description
   ```

4. **Edit the guide content** — the guides live in versioned subdirectories:

   ```
   site/content/open-guide-to-kanban/2025.7/index.md
   site/content/the-kanban-guide/2025.5/index.md
   ```

5. **Submit a Pull Request**, referencing the site discussion in the PR description

### Content Guidelines

- Preserve the meaning, emphasis, and nuance of the original text
- Use clear, active-voice prose consistent with the existing guide style
- Use semantic heading hierarchy (`#` → `##` → `###`)
- When adding references, follow the existing citation format:
  ```
  Smith (42) argues...
  
  ## References
  42. _Smith, J. (2024) Title. Publisher._
  ```
- Do not alter copyright or Creative Commons licence information

---

### Path 2: Language Translations

Add a new language translation or improve an existing one.

1. **Read the [Translations Code of Conduct](./translations-code-of-conduct.md)** — agreement is required before starting any translation work
2. **Open a discussion** at [kanbanguides.org](https://kanbanguides.org) or Slack to notify the translation guardian that you intend to translate
3. **Follow the [Translation Guide](./translations.md)** for the full technical workflow, including:
   - Using the `/guide.transcreate` skill to scaffold all site infrastructure
   - Translating the guide bodies (the manual, human-only work)
4. **Submit a Pull Request** linking back to the discussion and referencing the CoC

> One translation per language is preferred. Regional variants (e.g., `es-ES` vs `es-419`) are accepted where genuinely needed.

---

## PR Requirements

All pull requests must:

- Reference the prior site discussion or issue
- Pass the automated CI checks (`Build Site`, `Publish Site`, `license/cla`)
- Have all review threads resolved before merge
- Use a descriptive title and include a summary of what changed and why

## Code of Conduct

All contributors must follow the [Code of Conduct](../CODE_OF_CONDUCT.md). For translation-specific conduct standards, see the [Translations Code of Conduct](./translations-code-of-conduct.md).

## Need Help?

- Browse [open issues](https://github.com/KanbanGuides/KanbanGuides/issues)
- Start a [GitHub Discussion](https://github.com/KanbanGuides/KanbanGuides/discussions)
- Use the Submit Ideas button at [kanbanguides.org](https://kanbanguides.org)
