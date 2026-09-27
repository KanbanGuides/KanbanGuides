# Translation Guide

Help make the guides accessible worldwide. Start with the [Kanban translation companion](./translation-playbook.md), which points to the installed reusable OGP playbook and supplies our editorial and delivery arrangements. Contact the translation guardian through the site discussion or KanbanGuides Slack before starting.

The [Translations Code of Conduct](./translations-code-of-conduct.md) sets the editorial requirements for the Open Guide to Kanban and its associated materials. Read and agree to it where applicable; confirm the applicable policy with the guardian when selecting another guide. AI assistance is permitted by that policy, with human review and correction required. Automated checks do not establish translation quality or approve publication.

## Technical source of truth

Use the installed [shared skills and Core usage](../.agents/skills/USAGE.md). They provide the supported workflow for agents and people operating the commands themselves. The installed platform, rather than copied prompts or another language's files, defines how changes are discovered, checked and applied. Do not edit generated skills or installation records.

| Task | Installed workflow |
|---|---|
| Inspect readiness without changing files | [guide.transstatus](../.agents/skills/guide.transstatus/SKILL.md) |
| Add a site language; translate selected guide bodies separately | [guide.transcreate](../.agents/skills/guide.transcreate/SKILL.md) |
| Audit or update an existing translation against an agreed source revision | [guide.transreconcile](../.agents/skills/guide.transreconcile/SKILL.md) |
| Record consented translator and reviewer credits | [guide.contributions](../.agents/skills/guide.contributions/SKILL.md) |
| Plan and generate eligible PDFs, then review rendering | [guide.genpdfs](../.agents/skills/guide.genpdfs/SKILL.md) |

Agree the target language and site-language scope with the guardian. Adding a language is site-scoped: production exclusion, configuration, interface catalogue, localized wrapper and site-owned data, then eligible empty guide scaffolds. Body translation is a separately selected stage for named guides and editions. Existing body corrections remain scoped to that edition; selecting one does not require translating other guides or historical editions. Use discovery to find the actual inventory and preserve populated, protected and PDF-only/fallback content.

## I don't have an agent

You can complete this workflow with PowerShell and your preferred text editor. You do not need an AI assistant, subscription or AI account. The `guide.*` names above identify instructions for assistants; they are not commands to type into PowerShell. People use the same installed Core commands, candidate checks and reviewed hashes directly.

Follow [local setup](./maintainer.md#local-development-setup) to prepare your fork. From the repository root in PowerShell 7.4 or later, open the installed instructions:

```powershell
$platform = ./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD -UseInstalled
$coreDocs = Join-Path $platform 'system/OpenGuidePlatform.PowerShell.Core'
Get-Content -LiteralPath "$platform/system/OpenGuidePlatform.Agents.Integration/translation-playbook.md"
Get-Content -LiteralPath "$coreDocs/README.md"
Get-Content -LiteralPath "$coreDocs/TranslationReadiness/README.md"
```

You can also open these files in your editor. Use the resolved package rather than a guessed cache path or globally installed module. The shared playbook explains the team journey; the Core procedure explains discovery, adding the site language first, separately selected guide bodies, reviewed candidates and hashes, credits, PDFs and validation. One technical volunteer can operate it while others review language. If instructions or required commands are missing, report the installed version and gap to maintainers for a coordinated update; do not improvise a bypass. A failed Prepare assessment is not a readiness pass, and a check result is not language approval.

Follow the [Kanban review and delivery arrangements](./translation-playbook.md#kanban-review-and-delivery) alongside those procedures. Keep the language disabled in production and preserve supplied/protected PDFs. An assistant is optional; the same reviewed application procedure and human language review apply with or without one.

## Where the translated experience lives

This is a map of responsibilities, not a manual scaffolding recipe. The installed workflow determines the exact files and supported operations for your selection.

| Area | Location and responsibility |
|---|---|
| Language configuration | `site/hugo.yaml` and `site/hugo.production.yaml`; a new language remains disabled in production until separately approved. |
| Interface catalogue | `site/i18n/{lang}.yaml`; reader-facing messages, preserving identifiers and interpolation placeholders. |
| Bespoke homepage | `site/data/ux-home/{lang}.json`; reader-facing copy, preserving keys, machine values and placeholders. Use the installed reviewed JSON operation with explicitly selected translatable string leaves; preserve all unselected values. |
| Website pages | Language-specific homepage and discovered guide landing, history and translations pages under `site/content/`; preserve layout, routing and structural metadata. |
| Guide text | `site/content/{guide}/{edition}/index.{lang}.md`; use the installed translation workflow for candidates and reviewed source/target checks. |
| Guide credits | `site/data/contributions/{guide}.yml`; the guide's creators and contributors. Do not add translation-team members to the original author list. |
| Translation credits | `site/data/contributions/{guide}.{lang}.yml`; translators and reviewers, with consent and the editions their contributions cover. |
| PDF presentation | [`site/pdf/`](../site/pdf/README.md); fonts, templates and settings, handled with the PDF workflow and maintainer review. Preserve supplied/protected PDFs. |

Do not put `lang`, `author`, `translators`, fonts or `dir` in guide front matter. Preserve links, shortcodes, explicit anchors and deliberate multilingual behaviour. Ask the technical contributor or maintainer about changes outside a supported operation's scope rather than bypassing its checks.

Structured translation credits supply the website and PDF credits. They do not replace the in-document Translator Acknowledgement and last-page change history required by the Code of Conduct. See its sections 4 and 6 for those requirements and section 7 for consent and personal data.

## Local validation and review environments

Follow the [maintainer guide](./maintainer.md#local-development-setup) for local setup and [installed Core usage](../.agents/skills/USAGE.md) for the version-matched platform and translation checks. Run documented PowerShell commands from a PowerShell session (`pwsh` on macOS/Linux), at the repository root. The development server is:

```powershell
./build.ps1 -Stage Serve -Target local
```

Run full preview and production builds through `./build.ps1` as directed by the installed workflow, and inspect the rendered experience locally. A development server alone is not acceptance evidence. A local production build validates output; it does not publish it. Keep a new language excluded from production throughout translation review.

Contribute through a fork and PR. The intended review journey includes a maintainer-approved PR canary: resolve technical and design issues there before merging to preview for native-speaker language validation. Production promotion is a separate approved step. The installed reusable playbook explains handoffs and evidence; the [Kanban companion](./translation-playbook.md#kanban-review-and-delivery) supplies site review arrangements.

**Current implementation:** the [workflow caller](../.github/workflows/main.yaml) disables automatic deployment for fork PRs. Workflow approval alone does not override that setting. Maintainers must arrange and verify the approved PR canary before technical review; completing the fork-canary workflow integration is outstanding. Contributors should report this blocker in the PR rather than bypass deployment controls.
