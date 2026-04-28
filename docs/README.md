# Open Guide to Kanban Documentation

Welcome to the documentation for the **Open Guide to Kanban** project. This documentation provides comprehensive information about the project structure, development workflow, and contribution guidelines.

## 🌐 Live Sites

- **Production**: [kanbanguides.org](https://kanbanguides.org) - **Live production site**
- **Preview**: [red-pond-0d8225910-preview.centralus.2.azurestaticapps.net](https://red-pond-0d8225910-preview.centralus.2.azurestaticapps.net/) - **Test your contributions here before they go live**

## Quick Navigation

- [Getting Started](./getting-started.md)
- [Contributing Guidelines](./contributing.md)
- [Content Management](./content-management.md)

### Technical Documentation

- [Architecture Overview](./architecture.md)
- [Development Guide](./development.md)
- [Deployment Guide](./deployment.md)
- [Configuration Reference](./configuration.md)
- [Maintainer Guide](./maintainer-guide.md)
- [Translation Guide](./translations.md)
- [Troubleshooting](./troubleshooting.md)

> **🚨 Important**: This project uses Hugo's new template system (v0.146.0+) via the [HugoGuides module](https://github.com/nkdAgility/HugoGuides). There is no local `layouts/` directory. See the [Architecture Overview](./architecture.md) for details.

## Project Overview

The **Kanban Guides** site is a multilingual static website hosting two guides: the **Open Guide to Kanban** and **The Kanban Guide**. Built with Hugo, it includes:

- **Multi-language support** (English, Japanese, Spanish, Farsi, Polish, and more)
- **Modern responsive design** with Bootstrap 5
- **Static site generation** with Hugo + external HugoGuides module
- **Automated deployment** via Azure Static Web Apps
- **PDF generation** capabilities
- **Community contribution features**

## Key Features

### 📚 Content Features

- Comprehensive Kanban guide
- Multi-language translations
- Downloadable PDF versions
- Creator profiles and attribution
- Structured navigation and table of contents

### 🔧 Technical Features

- Hugo static site generator
- Bootstrap 5 responsive design
- Font Awesome icons
- Google Analytics integration
- Azure Static Web Apps hosting
- GitHub Actions for CI/CD
- Environment-specific configurations

### 🌍 Internationalization

- English (default)
- Japanese
- Spanish Latin America (`es-419`)
- Spanish Spain (`es-ES`)
- Farsi/Persian (`fa`, RTL)
- Polish

## Project Structure

```text
KanbanGuides/
├── docs/                           # 📚 Documentation
├── site/                           # 🏗️ Hugo site source
│   ├── content/                    # 📝 Content files (two guides, versioned)
│   ├── static/                     # 📁 Static assets (CSS, images)
│   ├── data/                       # 🗃️ Contributor data files
│   ├── i18n/                       # 🌐 Translation strings
│   ├── go.mod                      # ⚙️ Hugo module definition
│   └── hugo.yaml                   # ⚙️ Hugo configuration
├── public/                         # 🚀 Generated site output
├── .github/                        # 🔄 GitHub Actions workflows
├── staticwebapp.config.*.json      # ⚙️ Azure SWA configs
└── readme.md                       # 📖 Project README
```

## Quick Start

1. **Clone the repository**

   ```bash
   git clone https://github.com/KanbanGuides/KanbanGuides.git
   cd KanbanGuides
   ```

2. **Install Hugo**

   ```bash
   # Using package managers
   choco install hugo-extended  # Windows (Chocolatey)
   brew install hugo            # macOS (Homebrew)
   snap install hugo           # Linux (Snap)
   ```

3. **Run the development server**

   ```bash
   hugo serve --source site --config hugo.yaml,hugo.local.yaml
   ```

4. **Open your browser**
   Navigate to `http://localhost:1313`

## Contributing

We welcome contributions from the community! Please see our [Contributing Guidelines](./contributing.md) for detailed information on:

- Setting up your development environment
- Content contribution process
- Translation guidelines
- Code contribution standards
- Pull request process

## Support and Community

- **GitHub Discussions**: Join conversations about the project
- **Issues**: Report bugs or suggest features
- **Pull Requests**: Contribute improvements

## License

This project is licensed under the Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license. See the [LICENSE](../LICENSE) file for details.

## Authors and Attribution

The Open Guide to Kanban is created by:

- **John Coleman**

---

📚 **Next Steps**: Start with the [Getting Started Guide](./getting-started.md) to set up your development environment.
