# Kanban Guides

The Kanban Guides is a free, community-driven reference for applying Kanban in knowledge work. It defines the core practices, and metrics, necessary to improve flow, optimise value delivery, and enhance team sustainability. This guide supports scalable Kanban implementations across diverse industries and complements other agile, lean, and flow-based approaches.

## What is This?

The Kanban Guides are living document that aims to provide clear, actionable guidance for implementing Kanban in knowledge work. It is designed to evolve over time, incorporating feedback and insights from the community.

## Encouraged Contribution Workflow

Changes to content can often be contentious, culturally sensitive, and difficult to manage effectively. To navigate these complexities, we encourage the following collaborative workflow for contributors to the Open Guide to Kanban:

1. **Create a Discussion** – Engage peers in a conversation about the proposed change, aiming for consensus. Include all perspectives that could provide valuable insights.
2. **Create an Issue** – Once consensus is reached, \[create an issue] clearly documenting the change and attributing all participants.
3. **Submit a Pull Request** – Follow standard GitHub procedures: fork the repository, implement the change, and submit a Pull Request.
4. **Review the Pull Request** – The original creators (John) or their delegates will review your submission, and may approve, comment, or reject the proposed change.

## Join Our Community

The Kanban community thrives on shared knowledge and collaborative improvement.

### Contributing to Discussions

- **Share practical insights** - [Start a new discussion](https://github.com/KanbanGuides/KanbanGuides/discussions).
- **Address implementation challenges** - Help others overcome obstacles.
- **Propose refinements** - Suggest improvements.
- **Document lessons learned** - Share your discoveries.

### Language and Accessibility

Making Kanban knowledge accessible globally is essential.

- **Expand language support**
- **Refine translations**
- **Review content**

[Open a discussion](https://github.com/KanbanGuides/KanbanGuides/discussions) to connect with the community.

## Access the Guide

### 📖 Read Online

- **Production**: [kanbanguides.org](https://kanbanguides.org)
- **Preview**: use the preview URL under `delivery` in [settings.yaml](.OpenGuidePlatform/settings.yaml)

### 📄 Download Options

- **Download PDF**: [Available languages](https://kanbanguides.org/download)

## How to Contribute

### Content Contributors

- Open Guide to Kanban: `site/content/open-guide-to-kanban/`
- The Kanban Guide: `site/content/the-kanban-guide/`
- Language versions use file suffixes: `index.{lang}.md` (e.g. `index.ja.md`)

Contributions include:

- **Enhance content**
- **Clarify concepts**
- **Suggest new sections**
- **Review and edit**

### Technical Contributors

- **Improve platform functionality**
- **Optimize performance**
- **Maintain infrastructure**

**Guidance:**

- [Documentation Overview](./docs/README.md)
- [Getting Started Guide](./docs/getting-started.md)
- [Contributing Guidelines](./docs/contributing.md)

## About the Authors

Developed by Kanban and agile product development experts:

- **John Coleman**

Built upon established Kanban practices and modern knowledge work principles.

## License & Usage

Freely available under an open license:

- **Read and distribute**
- **Use for training and education**
- **Translate**
- **Adapt and build upon**

Attribution is requested.

See [LICENSE](./LICENSE) for complete terms.

## Build and update this site

Use PowerShell 7.4+, Hugo Extended 0.158.0+, Go and GitHub CLI from the repository root:

```powershell
./build.ps1 -Target preview
./build.ps1 -Target production
./build.ps1 -Stage Serve -Target local
./build.ps1 Update -WhatIf
./build.ps1 Update
```

The installed release is recorded in `.OpenGuidePlatform/installation.json`; updates belong on a review branch. Prepare selects one site ring using GitVersion; CI builds, validates and deploys that ring. PRs select canary, and the current main-branch configuration selects preview. The separate production command above validates production locally without deploying it. Windows requires symbolic-link support and `git config --global core.symlinks true` before cloning.

The platform selection is `v1` in `.OpenGuidePlatform/settings.yaml`: builds select the latest production OGP release within major version 1, without crossing into version 2. `Update` refreshes the installed adapters and recorded release using that selection. Site deployment rings remain independent of the platform ring. Edit user settings in `settings.yaml`; do not edit the generated installation record.

**Upgrade verification is in progress:** v1.1.1-Preview.5 is installed, replacing v1.0.0; hosted acceptance of this upgrade is pending. The malformed copy-link URL found under v1.0.0 was tracked for an upstream OGP fix. See the [adoption checklist and evidence](docs/open-guide-platform-adoption.md) for earlier evidence. Shared skills are in `.agents/skills`; existing PDFs are preserved during migration.

## Getting Started

1. **[Read the guide](https://kanbanguides.org)** - Production site
2. **Test latest changes** - Use the preview destination under `delivery` in [settings.yaml](.OpenGuidePlatform/settings.yaml), or the deployment link posted on the PR.
3. **[Engage with the community](https://github.com/KanbanGuides/KanbanGuides/discussions)**
4. **[Support translations](https://github.com/KanbanGuides/KanbanGuides/discussions)**
5. **[Review contribution guidelines](./docs/contributing.md)**

**Together, we're advancing Kanban practice for modern product development challenges.**
