# Guide-site contributor instructions

Read the reviewed site policy identified by open-guide-platform.installation.json.
Use ./build.ps1 to prepare, build and validate after content, template or configuration changes.
Use ./build.ps1 -Stage Serve for local development. Run a full build before committing.

Preserve the bespoke wrapper, supplied/protected PDFs and deliberate multilingual guide structure.
Do not put lang in Hugo front matter; PDF generation passes Pandoc language metadata separately.
Never enable permanently excluded languages in production.
Do not modify generated platform adapters, skills or the installation record by hand.
Install/update them using ./bootstrap.ps1 on a review branch and review the complete diff.

Shared skills are in .agents/skills. To load the installed Core module in PowerShell:
    $platform = ./Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD
    Import-Module "$platform/system/OpenGuidePlatform.PowerShell.Core/OpenGuidePlatform.PowerShell.Core.psd1"
Load the reviewed policy with Import-GuidePolicy before invoking publishing operations.

These instructions guide Codex, Claude and GitHub Copilot; they do not enforce permissions.
Independent managed agent controls remain an explicit adoption blocker.
