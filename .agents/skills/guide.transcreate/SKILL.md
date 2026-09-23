---
name: guide.transcreate
description: "Create a guide translation from discovered source content, or create only an empty scaffold when requested, using shared PowerShell checks and publishing workflows."
---

Read [Core usage](../USAGE.md). Follow the resolved package's `system/OpenGuidePlatform.PowerShell.Core/TranslationReadiness/README.md` for the same complete procedure available without an agent.

Select the actual guide, edition and requested language from discovery and user intent. Use Get-GuideTranslationWork to inspect the source, existing target, wrapper observations, downloads and remaining work. Never assume English, a latest/ directory or a fixed guide count.

Use New-GuideTranslation for an absent target. It delegates to the retained New-GuideTranslationScaffold, requires explicit production exclusion and preserves existing content. If the request is only for scaffolding, leave the body empty. If the request authorizes a translation, refresh Prepare, start a candidate from the discovered target and translate against the source. A missing production exclusion requires the scoped configuration prerequisite; never enable production as a workaround.

The candidate may translate the body, title, description and summary. Preserve structural/custom metadata, aliases, fonts and edition relationships. Do not add lang or extend legacy shared download aliases. Use Test-GuideTranslation and review its findings, source/candidate outlines and the actual language. Preserve links, shortcodes, code examples and deliberate multilingual behavior. Source-identical passages are a review signal, not permission to delete content.

Apply authorized candidates through Set-GuideTranslation using the source and target hashes captured before editing. A stale input requires reconciliation, not a new hash applied to an old candidate. Existing populated translations should be revised only within the user's requested scope; use source comparisons where relevant.

Use Set-GuideWrapperTranslation for authorized wrapper/i18n/configuration work. Preserve supplied/protected PDFs; generated PDFs use the existing explicit plan, generation and receipt workflow. Rerun Prepare and full preview/production builds and inspect rendered output. Report changed files, editorial limitations, verification results and remaining work separately. A candidate check never certifies translation quality or approves publication.
