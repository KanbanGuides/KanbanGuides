# Translation Guide

Help make the guides accessible worldwide. Start with the [translation playbook](./translation-playbook.md) for the volunteer journey, from agreeing terminology to publication. Contact the translation guardian through the site discussion or KanbanGuides Slack before starting.

The [Translations Code of Conduct](./translations-code-of-conduct.md) sets the editorial requirements for the Open Guide to Kanban and its associated materials. Read and agree to it where applicable; confirm the applicable policy with the guardian when selecting another guide. AI assistance is permitted by that policy, with human review and correction required. Automated checks do not establish translation quality or approve publication.

## Technical source of truth

Use the installed [shared skills and Core usage](../.agents/skills/USAGE.md). They provide the supported workflow for agents and people operating the commands themselves. The installed platform, rather than copied prompts or another language's files, defines how changes are discovered, checked and applied. Do not edit generated skills or installation records.

| Task | Installed workflow |
|---|---|
| Inspect readiness without changing files | [guide.transstatus](../.agents/skills/guide.transstatus/SKILL.md) |
| Create a translation or request an empty scaffold | [guide.transcreate](../.agents/skills/guide.transcreate/SKILL.md) |
| Audit or update an existing translation against an agreed source revision | [guide.transreconcile](../.agents/skills/guide.transreconcile/SKILL.md) |
| Record consented translator and reviewer credits | [guide.contributions](../.agents/skills/guide.contributions/SKILL.md) |
| Plan and generate eligible PDFs, then review rendering | [guide.genpdfs](../.agents/skills/guide.genpdfs/SKILL.md) |

Specify the language, guide and edition you intend to work on. Translation availability is per edition: selecting one does not require translating other guides or historical editions. Use discovery to find the current inventory and agree an appropriate language tag with the guardian; do not infer scope from an existing language.

## I don't have an agent

You can complete this workflow with PowerShell and your preferred text editor. You do not need an AI assistant, subscription or AI account. The `guide.*` names above identify instructions for assistants; they are not commands to type into PowerShell. People use the same installed Core commands, candidate checks and reviewed hashes directly.

1. **Prepare your fork.** Follow [local setup](./maintainer.md#local-development-setup), clone your fork and create a translation branch. Agree the language, guide and edition with the guardian. GitHub access is still needed for the fork/PR and, when restoring an uncached platform package, the release access described in local setup.
2. **Open the version-matched instructions.** From the repository root in PowerShell 7.4 or later, resolve the installed package and read its human-operated procedures:

   ```powershell
   $platform = ./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD -UseInstalled
   $coreDocs = Join-Path $platform 'system/OpenGuidePlatform.PowerShell.Core'
   Get-Content -LiteralPath "$coreDocs/README.md"
   Get-Content -LiteralPath "$coreDocs/TranslationReadiness/README.md"
   ```

   You can also open those two files in your editor. Their location is resolved locally; do not use a guessed cache path or a globally installed module. Keep the installed instructions open as you work rather than copying an older procedure from another translation.
3. **Discover and select.** In the Core README, follow **“Load the installed commands and discover content”** to import Core, run Prepare into a fresh output directory and load its discovered inventory. Then follow **“Load and select”** in the TranslationReadiness README for your exact guide, edition and language. Read the Prepare assessment; a failed assessment is not a readiness pass.
4. **Prepare and review the translation.** Follow **“Create a new translation”** only for a new target, keeping the language disabled in production and refreshing discovery afterwards. For existing work, use **“Reconcile against source changes”** with an explicitly agreed comparison revision. Follow **“Write, check and apply a candidate”** to draft in your editor, run the candidate checks, review the source and target, preview the write with `-WhatIf`, and apply through `Set-GuideTranslation` with the captured hashes. If a hash is stale, reconcile the changed text; do not simply replace the hash. A check result is not language approval.
5. **Complete the surrounding experience.** Follow **“Finish wrapper, downloads and verification”** and the [file responsibility map](#where-the-translated-experience-lives). The installed [shared usage](../.agents/skills/USAGE.md#reviewed-wrapper-translation-edits) explains reviewed wrapper changes. Read **“Guide credits”**, the contributor-update guidance, **“PDF configuration”** and **“Retain generated-PDF evidence”** in the Core README as needed. The [credits guidance](../.agents/skills/guide.contributions/SKILL.md) and [PDF guidance](../.agents/skills/guide.genpdfs/SKILL.md) also describe the supported operations; read them as instructions, not terminal commands. Adding a new person to an existing credits file needs maintainer coordination under the current operation limits. Preserve supplied/protected PDFs.
6. **Validate and submit.** Run the installed procedure's full preview and production builds using the same resolved package. Inspect the rendered website and any generated PDFs, including script shaping and layout; confirm production exclusion. Follow [local validation](#local-validation-and-review-environments) and the [playbook's PR handoff](./translation-playbook.md#5-open-the-pr-and-review-in-canary), including unresolved issues and actual check results. The canary, preview language review and separate production approval stages are the same with or without an agent.

One technical volunteer can operate these steps while other translators work in the playbook's review tables. If a command or prerequisite is unfamiliar, ask that contributor or a maintainer for help; an assistant is optional, and direct edits that bypass the reviewed application procedure are not an alternative workflow.

## Where the translated experience lives

This is a map of responsibilities, not a manual scaffolding recipe. The installed workflow determines the exact files and supported operations for your selection.

| Area | Location and responsibility |
|---|---|
| Language configuration | `site/hugo.yaml` and `site/hugo.production.yaml`; a new language remains disabled in production until separately approved. |
| Interface catalogue | `site/i18n/{lang}.yaml`; reader-facing messages, preserving identifiers and interpolation placeholders. |
| Bespoke homepage | `site/data/ux-home/{lang}.json`; reader-facing copy, preserving keys, machine values and placeholders. This site-owned JSON is separate from the platform's wrapper Markdown/YAML operations. |
| Website pages | Language-specific homepage and selected guide landing, history and translations pages under `site/content/`; preserve layout, routing and structural metadata. |
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

Contribute through a fork and PR. The intended review journey includes a maintainer-approved PR canary: resolve technical and design issues there before merging to preview for native-speaker language validation. Production promotion is a separate approved step. The [playbook](./translation-playbook.md) explains each handoff and the evidence to include.

**Current implementation:** the [workflow caller](../.github/workflows/main.yaml) disables automatic deployment for fork PRs. Workflow approval alone does not override that setting. Maintainers must arrange and verify the approved PR canary before technical review; completing the fork-canary workflow integration is outstanding. Contributors should report this blocker in the PR rather than bypass deployment controls.
