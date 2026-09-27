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

Contribute through a fork and PR. A maintainer-approved workflow deploys the PR's canary environment. Resolve technical and design issues there before merging to preview for native-speaker language validation. Production promotion is a separate approved step. The [playbook](./translation-playbook.md) explains each handoff and the evidence to include.
