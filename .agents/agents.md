# Guide-site contributor instructions

The generated installation record is .OpenGuidePlatform/installation.json; do not edit it by hand. User-owned platform selection, site source and delivery destinations are in .OpenGuidePlatform/settings.yaml. Prepare infers the site inventory from Hugo configuration and source content; do not maintain a page or translation inventory by hand.
Use ./build.ps1 to prepare, build and validate after content, template or configuration changes.
Use ./build.ps1 -Stage Serve -Target local for local development. Run a full build before committing.

Preserve the bespoke wrapper, supplied/protected PDFs and deliberate multilingual guide structure.
Do not put lang in Hugo front matter; PDF generation passes Pandoc language metadata separately.
Guide credits live in data/contributions: <guide>.yml for creators (the authors) and contributors, <guide>.<lang>.yml for each translation team. PDF settings, templates and filters live in <site>/pdf. Never put author, translators, mainfont, sansfont, monofont or dir in guide front matter.
Never enable permanently excluded languages in production.
Do not modify generated platform adapters, skills or the installation record by hand.
Workflow callers are site-owned. Preserve site triggers, inputs and secrets; use the coordinated update to change OGP release references and regenerate the Actions lockfile.
Update them using ./build.ps1 Update -WhatIf, then ./build.ps1 Update on a review branch and review the complete diff. The selected version family and ring come from .OpenGuidePlatform/settings.yaml.
For first installation, use the remote bootstrap command documented in the platform README.

Shared skills are in .agents/skills. To load the installed Core module in PowerShell:
    $platform = ./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD -UseInstalled
    Import-Module "$platform/system/OpenGuidePlatform.PowerShell.Core/OpenGuidePlatform.PowerShell.Core.psd1"
Run Prepare and use its generated discovered-site.json inventory for Core operations. Review any intended publishing change before applying it.
For source-language guide body corrections, use Get-GuideContent to select the discovered guide, edition and its source language; use Set-GuideContent with the reviewed SHA-256 and candidate body. For translated documents, including typo fixes, use Set-GuideTranslation with that edition's reviewed source and target hashes. Translation availability is per edition: never infer, create or require a translation in another version merely because it exists in the selected version. Front matter and protected resources must remain intact. Follow the complete human-operated workflow in the installed Core README; the same commands and build checks apply with or without an agent.

These instructions guide Codex, Claude and GitHub Copilot; they do not enforce permissions.
Independent managed agent controls remain an explicit adoption blocker.
