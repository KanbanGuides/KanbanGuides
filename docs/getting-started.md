# 🚀 Getting Started

This guide will help you set up your development environment and get the Open Guide to Kanban project running locally.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

### Required Software

1. **Git** - Version control system

   - [Download Git](https://git-scm.com/downloads)
   - Verify installation: `git --version`

2. **Hugo Extended** - Static site generator

   - **Windows**: `choco install hugo-extended` (using Chocolatey)
   - **macOS**: `brew install hugo` (using Homebrew)
   - **Linux**: `snap install hugo` (using Snap)
   - Verify installation: `hugo version`
   - **Required version**: Hugo v0.146.0 or higher (Extended version)

   > **⚠️ Important**: This project uses Hugo's new template system introduced in v0.146.0. Earlier versions are not compatible.

3. **PowerShell 7+** - Required for automation scripts

   - **Windows**: [Install PowerShell 7+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows)
   - **macOS**: [Install PowerShell on macOS](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-macos)
   - **Linux**: [Install PowerShell on Linux](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux)
   - **Purpose**: Required for running `Create-GuidePDFs.ps1`
   - Verify installation: `pwsh --version`

4. **Text Editor** (recommended)
   - [Visual Studio Code](https://code.visualstudio.com/) with Hugo extensions
   - [IntelliJ IDEA](https://www.jetbrains.com/idea/)
   - Any text editor of your choice

### Optional Software

1. **Node.js and npm** - For additional tooling and dependencies

   - [Download Node.js](https://nodejs.org/)
   - Used for Prettier formatting and additional build tools

## Installation Steps

### 1. Clone the Repository

```bash
# Clone the repository
git clone https://github.com/KanbanGuides/KanbanGuides.git

# Navigate to the project directory
cd KanbanGuides
```

### 2. Verify Hugo Installation

```bash
# Check Hugo version (should be Extended version)
hugo version

# Expected output should include "extended"
# Example: hugo v0.118.2+extended windows/amd64
```

### 3. Install Dependencies (Optional)

If you plan to use additional tooling:

```bash
# Install Node.js dependencies for formatting and linting
npm install
```

### 3. Install Hugo Module Dependencies

```bash
cd site
huge mod download
cd ..
```

> This downloads the HugoGuides module that provides all templates. Hugo will also do this automatically on first serve/build.

### 4. Run the Development Server

```bash
# From the project root
huge serve --source site --config hugo.yaml,hugo.local.yaml
```

### 5. Open Your Browser

Navigate to `http://localhost:1313` to view the site locally.

### 6. Compare with Live Sites

To see how your local changes compare with the live sites:

- **Production**: [kanbanguides.org](https://kanbanguides.org) - The live production site
- **Preview**: [red-pond-0d8225910-preview.centralus.2.azurestaticapps.net](https://red-pond-0d8225910-preview.centralus.2.azurestaticapps.net/) - Test environment with latest changes

## Development Server Options

| Command | Description |
| ------------------------------------------- | ----------------------------------------- |
| `hugo serve --source site --config hugo.yaml,hugo.local.yaml` | Standard local server with drafts |
| `... --buildDrafts` | Include draft content |
| `... --buildFuture` | Include future-dated content |
| `... --port 8080` | Use custom port |

## PowerShell Automation Scripts

This project includes PowerShell automation scripts to help with common tasks:

### Available Scripts

1. **`scripts/Create-GuidePDFs.ps1`** - Generates PDF versions of the guide

   - Creates PDFs for all available languages
   - Requires Pandoc and LaTeX installation
   - See [PDF Generation Guide](./simple-pdf-generation.md) for details

2. **`/guide.trans.create` skill** - Sets up new language translations
   - Scaffolds all Hugo config, i18n, and content files
   - Translates structural content; leaves guide bodies empty for human translators
   - See [Translation Guide](./translations.md) for details

3. **`/guide.trans.reconcile` skill** - Audits and repairs existing translations
   - Detects missing files, missing i18n keys, and wrong `lang:` values
   - Can run in report-only or fix mode

4. **`/guide.trans.status` skill** - Translation progress dashboard
   - Shows scaffolding completeness and guide body status for all languages
   - Read-only; safe to run at any time

### Quick PowerShell Installation

If you don't have PowerShell 7+ installed:

#### Windows

```powershell
# Using Windows Package Manager (winget)
winget install Microsoft.PowerShell

# Using Chocolatey
choco install powershell-core

# Or download MSI from: https://github.com/PowerShell/PowerShell/releases
```

#### macOS

```bash
# Using Homebrew
brew install powershell

# Using MacPorts
sudo port install powershell
```

#### Linux (Ubuntu/Debian)

```bash
# Download and install
wget https://github.com/PowerShell/PowerShell/releases/download/v7.4.0/powershell_7.4.0-1.deb_amd64.deb
sudo dpkg -i powershell_7.4.0-1.deb_amd64.deb
```

### Running the Scripts

From the project root directory:

```powershell
# Generate PDFs for all languages
.\scripts\Create-GuidePDFs.ps1

# Create a new translation — use the /guide.trans.create skill in Copilot or Claude Chat
# /guide.trans.create de German
```

> 💡 **Note**: On macOS and Linux, you may need to use `pwsh` instead of `powershell` to run PowerShell 7+.

## Environment Configurations

The project supports multiple environment configurations:

### Local Development

- Configuration: `site/hugo.local.yaml`
- Features: Debug information, draft content, extended logging

### Production

- Configuration: `site/hugo.yaml`
- Features: Optimized build, analytics, production URLs

### Preview/Staging

- Configuration: `site/hugo.preview.yaml`
- Features: Preview-specific settings

## Troubleshooting Common Issues

### Hugo Not Found

```bash
# Add Hugo to your PATH or install using package manager
# Windows (Chocolatey)
choco install hugo-extended

# macOS (Homebrew)
brew install hugo

# Linux (Snap)
snap install hugo
```

### Port Already in Use

```bash
# Use a different port
hugo server --port 8080

# Or find and kill the process using port 1313
# Windows
netstat -ano | findstr :1313
taskkill /PID <PID> /F

# macOS/Linux
lsof -ti:1313 | xargs kill
```

### Module Not Found Errors

```bash
# Clear Hugo cache
hugo mod clean

# Update modules
hugo mod get -u
```

### Content Not Updating

```bash
# Clear Hugo cache and restart
hugo mod clean
hugo server -D
```

## Project Structure Overview

```
KanbanGuides/
├── site/                    # Hugo site source
│   ├── content/            # Markdown content files
│   │   ├── _index.md      # Homepage content
│   │   ├── open-guide-to-kanban/  # Open Guide (versioned)
│   │   └── the-kanban-guide/      # Kanban Guide (versioned)
│   ├── static/            # Static assets (CSS, images)
│   ├── data/              # Data files (contributions per guide)
│   ├── i18n/              # Translation files
│   ├── go.mod             # Hugo module definition
│   └── hugo.yaml          # Hugo configuration
├── public/                # Generated site (git-ignored in dev)
├── docs/                  # Project documentation
└── .github/               # GitHub Actions workflows
```

## Next Steps

Now that you have the project running locally, you can:

1. **📝 Learn about [Content Management](./content-management.md)** - How to edit and create content
2. **🏗️ Understand the [Architecture](./architecture.md)** - Project structure and design patterns
3. **🤝 Read [Contributing Guidelines](./contributing.md)** - How to contribute to the project
4. **🛠️ Explore [Development Guide](./development.md)** - Advanced development topics

## Getting Help

If you encounter issues during setup:

1. Check the [Troubleshooting Guide](./troubleshooting.md)
2. Search existing [GitHub Issues](https://github.com/KanbanGuides/KanbanGuides/issues)
3. Create a new issue with detailed information about your environment and the problem
4. Join the [GitHub Discussions](https://github.com/KanbanGuides/KanbanGuides/discussions)

---

🎉 **Congratulations!** You now have the Open Guide to Kanban running locally. Ready to start contributing?
