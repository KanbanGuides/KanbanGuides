# Translation playbook

This playbook is for a volunteer translation team. Most volunteers can focus on language and review; one technical contributor can operate the repository and tools. It applies to the guide and edition you select, not automatically to every guide on the site.

Start with the [Translation Guide](./translations.md) and agree the applicable editorial policy with the translation guardian. The [Translations Code of Conduct](./translations-code-of-conduct.md) governs the Open Guide to Kanban and its associated materials. This playbook explains the human journey; the [installed skills and platform](../.agents/skills/USAGE.md) remain the technical source of truth.

## Words and people

| Term | Meaning |
|---|---|
| Repository (repo) | The files and history used to build the website. |
| Fork | Your team's copy of the repository on GitHub. |
| Clone | A local copy on the technical contributor's computer. |
| Branch / commit | A line of work / a saved snapshot of that work. |
| Pull request (PR) | Proposed changes and the place for review before merging. |
| Build | Turning source files into the site and running its checks. |
| Canary | A review environment for a PR, deployed by an approved workflow. |
| Preview | The shared environment for merged work, including translations not yet approved for production. |
| Production | The published public experience. |
| Guide edition | The particular version of a guide being translated. |
| Source revision | The recorded version of the source used for translation or comparison. |
| Wrapper | Website copy around the guide: menus, landing pages, notices and other interface text. |

| Role | Responsibility |
|---|---|
| Translators | Agree terminology, draft and correct translations, and explain language decisions. |
| Native-speaker reviewers | Check meaning, readability and the rendered language experience, and record feedback. |
| Technical contributor | Work in the fork, follow installed workflows, run local checks and maintain the PR. |
| Maintainers | Approve workflow execution, review technical changes and help resolve system or design issues. |
| Translation guardian | Agree scope and editorial decisions, coordinate policy requirements and approve publication. |

One person may fulfil more than one role, subject to the applicable review requirements. Volunteers can use an assistant such as Claude Code, Copilot or Codex, or have a technical contributor operate the documented Core workflow without an agent. An assistant does not replace human language review.

## 1. Agree the scope and language decisions

Open a site discussion or contact the guardian through KanbanGuides Slack before starting. Record the selected guide, edition, language and regional variant, team contacts and intended scope. Agree how the team will collect and respond to feedback.

Build a shared glossary before drafting large sections. Include reserved terms, acronyms, guide and site titles, and terms that need consistent treatment. Follow the applicable policy on first-use English terms, references, licence text and acknowledgements. An existing translation is not permission to depart from that policy.

| Source term and location | Proposed translation | Translate, transliterate or keep source term | Reason / guardian decision |
|---|---|---|---|
| Term from the selected edition | Team proposal | Team choice | Record agreement or an open question |

Identify conventions that may not transfer to the target script. For example, Kannada has no letter case, and fonts may not provide italics. If a source uses case or italics to convey a distinction, raise that with the guardian and maintainers so its meaning is preserved. Do not silently remove the distinction or assume a font will render it correctly.

Agree consent before sharing anyone's name, contact information or profile link. Keep private coordination details out of public PRs and review documents.

## 2. Fork and prepare locally

The technical contributor forks the repository, clones that fork and creates a branch for the translation. Read the repository instructions, [local setup guidance](./maintainer.md#local-development-setup) and [installed Core usage](../.agents/skills/USAGE.md). Prepare the local build tools before working through validation.

Use [guide.transstatus](../.agents/skills/guide.transstatus/SKILL.md) to inspect the selected language, guide and edition. Record what already exists, the intended source and the remaining work. Do not infer that every historical edition needs a translation.

A short request to an assistant can be:

> Use guide.transstatus to report the current state of our selected language, guide and edition, without changing files. Explain the remaining work in plain English.

If tools or access are missing, record the blocker and ask for help. Do not substitute an improvised manual scaffold for the installed workflow.

## 3. Scaffold and translate the selected experience

Use [guide.transcreate](../.agents/skills/guide.transcreate/SKILL.md) for the selected translation, or request only an empty scaffold if that is the agreed first step. The new language must remain disabled in production. Capture the source used before drafting through the installed workflow; a later upstream commit does not establish what the team translated.

> Use guide.transcreate for our selected language, guide and edition, following the installed skill. Keep the language disabled in production and use our agreed glossary. Prepare a translation for human review.

For an existing translation, use [guide.transreconcile](../.agents/skills/guide.transreconcile/SKILL.md) with the agreed comparison revision and requested scope. Do not replace populated work with a new scaffold.

Translate both the guide and its surrounding website experience. The [file responsibility map](./translations.md#where-the-translated-experience-lives) includes homepage data, interface messages, guide landing pages, history and translations pages. Preserve identifiers, placeholders, structural metadata and machine values. The technical contributor should handle site-owned areas outside a platform operation's supported scope as separately reviewed changes.

Work in manageable sections against the glossary. AI drafts are permitted where policy allows them; people remain responsible for the wording. Review tables let volunteers work without editing repository files:

| File and field or section | Source text | Draft translation | Reviewer correction and reason | Resolution |
|---|---|---|---|---|
| Exact location | Source being reviewed | Proposed wording | Feedback | Applied / open / agreed unchanged |

Keep each table tied to the source and candidate being reviewed. Apply corrections through the installed workflow and review the resulting diff. If the source changes, reconcile it explicitly rather than treating an old candidate as newly reviewed.

Use [guide.contributions](../.agents/skills/guide.contributions/SKILL.md) to record consented names, roles and edition contributions. Structured credits do not replace required body acknowledgements or change history. Under the Open Guide policy, the change history belongs on the last page; do not copy a conflicting placement from another translation.

## 4. Validate locally

Follow the installed workflow's checks and full preview and production builds. Use the root build entry point and [local development server](./translations.md#local-validation-and-review-environments) to inspect the result. Keep the actual outcomes, including failures and unresolved issues, for the PR.

Check the experience on a narrow and a wide screen:

- Read the homepage, navigation, guide landing page and selected edition; check history and translation links.
- Check text wrapping, spacing, search, explicit anchors and language switching.
- Look for untranslated interface messages, missing glyphs, broken placeholders and sentences whose word order cannot be fixed by translating individual fragments.
- Confirm that the new language remains excluded from production output.

Use [guide.genpdfs](../.agents/skills/guide.genpdfs/SKILL.md) for eligible generated PDFs. Inspect actual pages, including the cover, long headings, links, credits and script shaping. Preserve supplied/protected PDFs. A successful build is not visual approval, and visual approval is not language approval.

Record technical issues the team cannot resolve, with the page or PDF location, expected behaviour and a screenshot where useful. Missing fonts, shaping problems or template limitations can be taken into the PR for maintainer help; report them rather than marking checks as passed.

## 5. Open the PR and review in canary

Push the branch to your fork and open a PR against the original repository, linking the prior discussion. Include:

- The selected language, guide and edition, source used, and completed translation scope.
- Local check/build results and what was visually inspected.
- Outstanding language questions and technical or design issues.
- Confirmation that production remains disabled and consented credits are recorded.

An early draft PR is useful when help is needed. A maintainer approves the workflow run to deploy the PR's canary environment; working from a fork does not require a separate internal branch.

Review canary together. Resolve fonts, PDF shaping, cover layout, spacing and other system or design problems in the PR before the technical handoff to preview. Shared platform defects belong with maintainers, who coordinate any upstream work and validate the resulting experience. Update the same PR and recheck affected pages as fixes arrive.

## 6. Merge to preview for language validation

After technical and design review, maintainers can merge to preview while the language remains disabled in production. Invite native speakers to review rendered pages and PDFs there. Preview availability is not production approval.

For the Open Guide to Kanban, follow the Code of Conduct's requirement for at least five native-speaker reviewers, ideally three with Kanban knowledge and two without. Preserve its requirements for review responses, acknowledgement eligibility and consent.

| Location and reviewed revision | Feedback | Proposed correction | Team response | Resolution / follow-up PR |
|---|---|---|---|---|
| Page section or PDF page | Meaning, readability or rendering issue | Suggested wording | Reasoned response | Link or remaining action |

Accept written, audio or video feedback as the policy allows. Keep responses constructive and track each finding to a resolution. Apply corrections through reviewed follow-up PRs using the installed workflow, and repeat affected checks. Check the final rendered wording, not only the review table.

## 7. Approve publication and maintain the translation

Ask the guardian for publication approval when language review is complete, feedback is resolved and the final HTML, Markdown and PDF experience has been checked. Maintainers handle production promotion as a separate approved change and publication step. Neither a passing automated check nor a preview merge authorizes that promotion.

Keep the glossary, agreed source record and review decisions available to future volunteers. When the source changes, use [guide.transreconcile](../.agents/skills/guide.transreconcile/SKILL.md) with an explicitly agreed comparison revision, review the affected language and update the change history and edition-specific credits as appropriate. Tell the guardian if the team can no longer maintain the translation.
