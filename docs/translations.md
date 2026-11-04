# Kanban translation guidance

## Start here

You can translate words without knowing how to change website files. Start with the team before installing anything.

1. Open [KanbanGuides translation discussions](https://github.com/KanbanGuides/KanbanGuides/discussions) and search for your language and guide. A free GitHub account lets you post and reply. Join the existing discussion if there is one; otherwise choose **New discussion** and use a title such as **Kannada translation help**.
2. Send the message below, replacing the words in square brackets. The team will identify the person who approves the work and the person who reviews the language. Keep using that same discussion for setup questions and your final submission link.
3. Read the [translation Code of Conduct](translations-code-of-conduct.md), then agree the guide, edition (version), language and review team before translating. If you do not know the edition or language code, say so; ask the team to confirm them.

> I want to help translate [Open Guide to Kanban or The Kanban Guide] into [language and regional variant]. I would like to [start a translation / improve an existing translation]. I am new to the tools and want an agent to handle the files. Please confirm the work, the wording reviewer and the person who approves it. Please provide the supported agent setup and help opening my own working copy. If that cannot be arranged, please give me a review sheet and identify someone who will apply my words and submit the translation. I can help with [translation / reviewing / both].

**What happens next:** follow the shared walkthrough below using this site's installed OGP skills. If the website already works in your language, keep it and work only on the agreed guide text. For a new language, the team first arranges translated menus and introductory pages. Existing translations, credits and supplied PDFs stay intact.

**If you prefer the manual commands:** say so in the same discussion and ask for the module's published version, supported tool versions and administrator installation help before following shared setup. You can supply words while another volunteer handles the files.

**Review-branch limitation:** these links currently match the installed OGP v1.1.5 release. The improved agent-first and installable-module instructions are being prepared in [OGP PR 59](https://github.com/nkdAgility/OpenGuidePlatform/pull/59). They must be released and adopted here before this site can offer that complete route. Until then, ask the team to arrange the supported setup or a review-sheet handoff; do not assume the new commands or docs are installed.

## Shared translation instructions

Start with OGP's [first translation walkthrough](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.5/system/OpenGuidePlatform.Agents.Integration/contributor-guide/first-translation.md). It explains the people, tasks and review handoffs with diagrams. You can help review wording without installing tools: use [reviewing wording](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.5/system/OpenGuidePlatform.Agents.Integration/contributor-guide/review-wording.md). Technical volunteers use the same guide's [setup](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.5/system/OpenGuidePlatform.Agents.Integration/contributor-guide/setup.md) and [task index](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.5/system/OpenGuidePlatform.Agents.Integration/contributor-guide/README.md).

These links match this site's OGP release. Shared procedures and diagrams live in OGP and ship with its package. This repository keeps Kanban policy and site details.

## Before starting

Open a site discussion or contact the translation guardian through KanbanGuides Slack. Agree the language or regional variant, team, website scope and selected guide editions. Every PR must reference the prior discussion.

The [Translations Code of Conduct](./translations-code-of-conduct.md) applies to the Open Guide to Kanban and associated materials. Confirm the applicable policy with the guardian for another guide. Read [Kanban editorial and review policy](./translation-playbook.md) alongside the shared walkthrough.

## Where the translated experience lives

KanbanGuides has guide content under `site/content/open-guide-to-kanban/` and `site/content/the-kanban-guide/`. Edition and language selection comes from OGP discovery; those paths are a site map, not a list to copy for a new language.

The bespoke homepage uses `site/data/ux-home/{language}.json`. Website pages live in `site/content/`, interface messages in `site/i18n/`, and language settings in `site/hugo.yaml` and `site/hugo.production.yaml`. Preserve JSON keys, machine values and placeholders. New languages remain excluded from production during review.

Guide and translation-team credits live separately in `site/data/contributions/`. Structured credits do not replace the in-document acknowledgement or last-page change history required by the Code of Conduct. Site PDF presentation is described in [site/pdf/README.md](../site/pdf/README.md); supplied and protected PDFs must be preserved.

## Local validation and review environments

Use OGP's [validation and submission guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.5/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md) for commands and evidence. KanbanGuides requires Hugo Extended 0.158.0 or later, in addition to the installed package's requirements. Local production validation does not publish the site.

Site delivery destinations are in [settings.yaml](../.OpenGuidePlatform/settings.yaml). The [workflow caller](../.github/workflows/main.yaml) disables automatic deployment for fork PRs. Workflow approval does not override that setting. Maintainers must arrange and verify the approved PR canary for technical/design review before preview language review; report unavailable review environments in the PR. Production promotion requires separate guardian approval.


## Complete your submission

A pull request (PR) is the submission asking this site's team to review your changed files. It does not publish them. Include the link to the discussion where you agreed the work.

If your agent or technical volunteer can submit, ask them for the PR link and a website review link. Open the PR and confirm it names the right language, guide and edition, includes the agreed files and records actual checks and unfinished work. If a review website cannot be provided, record that review as missing.

If someone else must submit, reply in the same [KanbanGuides discussion](https://github.com/KanbanGuides/KanbanGuides/discussions): “My reviewed words for [guide, edition and language] are at [link or agreed handoff]. Here are the review decisions, consented credits, actual check results and open questions: [details]. Please confirm who will submit this work and reply with the PR and website review links.” Do not post passwords or private contact details. If no existing discussion can be found, use [the site discussions](https://github.com/KanbanGuides/KanbanGuides/discussions); [open issues](https://github.com/KanbanGuides/KanbanGuides/issues) can show whether the work is already tracked.

Your submission is confirmed when you can open its PR link and find the intended changes. If you have only handed over words, record the named person making the PR and keep the submission pending until that link is supplied. The site team then completes its required technical and language review and decides publication separately.
