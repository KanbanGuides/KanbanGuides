# Kanban translation guidance

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
