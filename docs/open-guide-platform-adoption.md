# OpenGuidePlatform adoption

Status: Preview.6 is installed on the adoption branch. Installed-release canary and production builds pass. Exact deployed PR preview verification and maintainer acceptance remain outstanding.

## Execution checklist

- [x] Create the adoption branch from current KanbanGuides main.
- [x] Confirm the platform release, both package assets, manifest and matching native Hugo module tag are available and verified.
- [x] Record the exact selected release and the existing site's dependency and publication baseline.
- [x] Infer wrapper, guide, edition, language and route requirements from Hugo sources; remove the maintained policy file.
- [x] Install the selected preview release and reconcile managed-file conflicts in this PR.
- [x] Adopt thin build.ps1 and shared workflow callers, including PR cleanup, while preserving consumer-owned integrations.
- [x] Adopt distributed skills and agent instructions; distinguish repository guidance from independently enforced controls.
- [x] Build and validate the PR canary and production locally using the installed build.ps1.
- [ ] Verify the exact PR preview: wrapper, both guides, languages, navigation, aliases and PDFs, including Persian and Japanese. Investigate the previously reported Spanish PDF path.
- [ ] Prove Minionese is excluded from production pages, indexes and downloads.
- [ ] Obtain maintainer acceptance of the preview before merging adoption.

## Boundaries

Preserve guide content, supplied PDFs, the bespoke wrapper and deliberately structured multilingual behavior. Keep changes minimal and record any justified bug fixes or accepted output differences. Existing shared download and translation-directory aliases support legacy behavior only; do not expand them to new languages.

Hugo internal refactoring follows verified adoption across all three guide sites. This PR does not authorize platform promotion, production deployment, GitHub administrative changes or managed contributor-machine configuration. Independent agent enforcement and the trusted deployment boundary remain explicit later work.

## Evidence

- Installed release: `v0.5.3-Preview.6`; the verified manifest and native Hugo module identity are recorded in `.OpenGuidePlatform/installation.json`.
- Prior native dependency: `github.com/nkdAgility/HugoGuides/module v0.8.4`. Site baseline: `b59056a594d70b860595befd46b2f8c36a88d506`; pre-adoption preview/production outputs retained locally under `.processing/adoption/baseline-*`.
- Candidate platform: `e5b7810`, PR #38. Preview passed with 306 files; production passed with 230 files. Six preview anchors cover both guides in Japanese, Persian and Minionese; four remain eligible in production. These are functional browser checks with external resources blocked, not CSS-complete visual approval.
- Minionese enablement returns blocker `PERMANENT_LANGUAGE_ENABLED`; production contains no Minionese pages or PDFs. All existing source PDFs remain byte-identical.
- Installed Preview.6: canary Prepare/Build/Validate passed with 341 files; production passed with 230 files. Evidence is retained under `.processing/adoption-preview6-*`.

## Reconciled findings and decisions

- Duplicate i18n IDs: remove earlier declarations, retaining Hugo's effective last values.
- Spanish wrapper links: use the existing lowercase public URL prefix; do not rename language configuration or source suffixes.
- Polish July 2020 alias: remove the erroneous duplicate from the December edition, preserving its July owner.
- Missing author placeholder: publish the existing missing-user image at the path expected by the module.
- Attribution URL: restore `/history/kanban-guide-2025/` as an alias to the May 2025 edition, without rewriting the attribution text.
- Spanish PDFs: preserve their existing duplicated public path segments and source bytes. Correcting those URLs is deferred to an explicit compatibility decision; artifact validation verifies their current locations.
- Preview keeps the existing `es-419` exclusion; production also keeps `min`, `pl`, `de` and `nl` exclusions. Legacy download aliases are frozen to existing declarations only.
- PR hosting uses the shared cleanup contract's numeric environment (the PR number), rather than the old `canary-<number>` name. The old environment may need retirement after adoption; no production deployment is enabled.
- The site-customized workflow caller remains reviewable; a future platform update must reconcile its managed-file conflict rather than overwrite hosting choices.

## Remaining acceptance

- Verify the hosted adoption run and its deployed PR preview using the released platform.
- Four legacy publishing scripts are retired in favor of distributed operations. The existing cover template and PDF recipe requirements are retained in maintainer documentation. No PDFs were regenerated; future generated replacements require explicit policy and visual acceptance.
- Managed instructions, resolver and thin launcher are updated. Support configuration lives under `.OpenGuidePlatform`; no authored policy inventory remains.
- Verify the exact deployed PR, full styling, routes and downloads before requesting maintainer acceptance. No adoption merge or production promotion has occurred.

- Spanish Latin America latest link: retain the stable latest URL and declare its alias at the end of the May 2025 edition front matter; do not hard-code the edition in wrapper links.

- Preview.6 alias enforcement found the missing canonical French latest alias; it was added after existing metadata while preserving the localized French alias.
- Hosted Preview.5 passed every stage through Verify. A browser check with external CSS allowed returned HTTP 200 for the home page, both Japanese guides, both Persian guides, Minionese and the Spanish Latin America latest redirect. Persian rendered RTL with CSS. Screenshots and request evidence are under .processing/preview5-styled-review; this is not maintainer visual acceptance.
