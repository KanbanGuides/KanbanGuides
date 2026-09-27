# KanbanGuides translation companion

Use the reusable translation playbook in the installed OpenGuidePlatform package for the volunteer journey, scoped skill requests, review tables and technical handoffs. This companion supplies KanbanGuides editorial and delivery arrangements. Start with the [Translation Guide](./translations.md) for setup and the site responsibility map.

From the repository root in PowerShell, open the version-matched playbook:

```powershell
$platform = ./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD -UseInstalled
Get-Content -LiteralPath "$platform/system/OpenGuidePlatform.Agents.Integration/translation-playbook.md"
```

The installed [shared usage](../.agents/skills/USAGE.md) and Core procedure define supported operations for people and assistants. If the installed package lacks the playbook or a required capability, report that gap to maintainers for a coordinated platform update. Do not substitute copied instructions or direct edits that bypass reviewed operations.

## Agree Kanban editorial decisions

Open a site discussion or contact the translation guardian through KanbanGuides Slack before starting. Agree the language and regional variant, site-language scope, separately selected guide editions for body translation, team contacts and feedback arrangements. Adding a site language covers its surrounding website experience; it does not require translating every guide body or historical edition.

The [Translations Code of Conduct](./translations-code-of-conduct.md) governs the Open Guide to Kanban and its associated materials. Official translators must agree to it. Confirm the applicable policy with the guardian for another guide. Follow its reserved-term and first-use English rules, references and licence requirements, acknowledgement eligibility and consent. AI assistance is permitted under that policy; people must review and correct its wording.

Agree a glossary before substantial drafting. Raise conventions that may not transfer to the target script with the guardian and maintainers, including meaningful case or italics, adaptation markings, reading direction and fonts. Preserve the distinction rather than silently dropping it. Keep private coordination details out of public PRs and review documents.

Structured translation-team credits supply website and PDF credits. They do not replace the required in-document Translator Acknowledgement or the change history on the last page. Record consent before sharing names, profile links or other personal information; follow sections 4, 6 and 7 of the Code of Conduct.

## Kanban review and delivery

Follow [local setup](./maintainer.md#local-development-setup), the installed procedure and the [site validation guidance](./translations.md#local-validation-and-review-environments). Preserve supplied/protected PDFs and keep new languages excluded from production. Include the agreed discussion, site-language and selected body scope, actual source/candidate revisions, build and rendering results, consented credits and unresolved questions in the PR.

The intended handoff is a maintainer-approved PR canary for technical and design review, followed by merge to preview for native-speaker language validation. The current [workflow caller](../.github/workflows/main.yaml) disables deployment for fork PRs. Workflow approval alone cannot override that setting; maintainers must arrange and verify the review environment. Report missing canary support as a blocker rather than inventing a deployment workaround.

Use technical review to resolve homepage and navigation layout, fonts, PDF shaping, covers, links and other rendering issues. Inspect narrow and wide screens and representative target-script text. Report shared command, template or rendering defects to OGP through maintainers; Kanban terminology, bespoke wrapper design and delivery configuration remain site responsibilities.

For the Open Guide to Kanban, the Code of Conduct requires at least five native-speaker reviewers, ideally three with Kanban knowledge and two without. Accept written, audio or video feedback as the policy allows, respond constructively and track findings to resolution. Apply reviewed corrections through PRs using the installed workflow, then inspect the final rendered wording. Preview availability and passing checks do not approve publication.

The guardian approves publication after language review, resolved feedback and final HTML, Markdown and PDF checks. Maintainers handle production promotion as a separate approved change and publication step. Retain useful glossary, source and review decisions for future volunteers. Reconcile later source changes through the installed workflow with an explicitly selected comparison revision, and notify the guardian if the team can no longer maintain the translation.
