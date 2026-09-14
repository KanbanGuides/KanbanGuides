# OpenGuidePlatform adoption

Status: Preview.2 is installed on this draft adoption branch. Installed-release acceptance is blocked by platform defects fixed in [OpenGuidePlatform PR #38](https://github.com/nkdAgility/OpenGuidePlatform/pull/38). Both targets pass against that local candidate; a corrected release and exact PR-preview verification are still required.

## Execution checklist

- [x] Create the adoption branch from current KanbanGuides main.
- [x] Confirm the platform release, both package assets, manifest and matching native Hugo module tag are available and verified.
- [x] Record the exact selected release and the existing site's dependency and publication baseline.
- [x] Prepare guide-site.policy.json for the bespoke wrapper and both guides, allowing the inventory to grow without a fixed guide count.
- [x] Install the selected preview release and reconcile managed-file conflicts in this PR.
- [x] Adopt thin build.ps1 and shared workflow callers, including PR cleanup, while preserving consumer-owned integrations.
- [ ] Adopt distributed skills and agent instructions; distinguish repository guidance from independently enforced controls.
- [ ] Build and validate preview and production locally using build.ps1.
- [ ] Verify the exact PR preview: wrapper, both guides, languages, navigation, aliases and PDFs, including Persian and Japanese. Investigate the previously reported Spanish PDF path.
- [ ] Prove Minionese is excluded from production pages, indexes and downloads.
- [ ] Obtain maintainer acceptance of the preview before merging adoption.

## Boundaries

Preserve guide content, supplied PDFs, the bespoke wrapper and deliberately structured multilingual behavior. Keep changes minimal and record any justified bug fixes or accepted output differences. Existing shared download and translation-directory aliases support legacy behavior only; do not expand them to new languages.

Hugo internal refactoring follows verified adoption across all three guide sites. This PR does not authorize platform promotion, production deployment, GitHub administrative changes or managed contributor-machine configuration. Independent agent enforcement and the trusted deployment boundary remain explicit later work.

## Evidence

- Installed release: `v0.5.3-Preview.2`, platform commit `40d3497391f3232ce5e66eb39dc1609cb60ef18c`; both package SHA-256 values match the published manifest and the native Hugo tag points to that commit.
- Prior native dependency: `github.com/nkdAgility/HugoGuides/module v0.8.4`. Site baseline: `b59056a594d70b860595befd46b2f8c36a88d506`; pre-adoption preview/production outputs retained locally under `.processing/adoption/baseline-*`.
- Candidate platform: `e5b7810`, PR #38. Preview passed with 306 files; production passed with 229 files. Six preview anchors cover both guides in Japanese, Persian and Minionese; four remain eligible in production. These are functional browser checks with external resources blocked, not CSS-complete visual approval.
- Minionese enablement returns blocker `PERMANENT_LANGUAGE_ENABLED`; production contains no Minionese pages or PDFs. All existing source PDFs remain byte-identical.
- Installed Preview.2 checks remain red until the upstream fixes are released. No candidate code is copied into its cache or release pin.

## Reconciled findings and decisions

- Duplicate i18n IDs: remove earlier declarations, retaining Hugo's effective last values.
- Spanish wrapper links: use the existing lowercase public URL prefix; do not rename language configuration or source suffixes.
- Polish July 2020 alias: remove the erroneous duplicate from the December edition, preserving its July owner.
- Missing author placeholder: publish the existing missing-user image at the path expected by the module.
- Attribution URL: restore `/history/kanban-guide-2025/` as an alias to the May 2025 edition, without rewriting the attribution text.
- Spanish PDFs: preserve their existing duplicated public path segments and source bytes. Correcting those URLs is deferred to an explicit compatibility decision; artifact validation verifies their current locations.
- Preview keeps the existing `es-419` exclusion; production also keeps `min`, `pl`, `de` and `nl` exclusions. Legacy download aliases are frozen to existing declarations only.
- PR hosting uses the shared cleanup contract's numeric environment (`110`), rather than the old `canary-110` name. The old environment may need retirement after adoption; no production deployment is enabled.
- The site-customized workflow caller remains reviewable; a future platform update must reconcile its managed-file conflict rather than overwrite hosting choices.

## Remaining acceptance

- Merge/release platform PR #38, then update this installation and repeat both builds using the installed release.
- Reconcile the four retained legacy publishing scripts with the distributed operations and preserve the approved PDF recipe before removing them. No PDFs were regenerated during adoption.
- Complete managed instruction update from the corrected release; Preview.2 still mentions the removed local bootstrap.
- Verify the exact deployed PR, full styling, routes and downloads before requesting maintainer acceptance. No adoption merge or production promotion has occurred.
