# OpenGuidePlatform adoption

Status: draft adoption PR. Platform installation waits for the merged OpenGuidePlatform build to publish and verify its coordinated release. This initial commit records the work; it does not install the platform or change site output.

## Execution checklist

- [x] Create the adoption branch from current KanbanGuides main.
- [ ] Confirm the platform release, both package assets, manifest and matching native Hugo module tag are available and verified.
- [ ] Record the exact selected release and the existing site's dependency and publication baseline.
- [ ] Prepare guide-site.policy.json for the bespoke wrapper and both guides, allowing the inventory to grow without a fixed guide count.
- [ ] Install the selected preview release and reconcile managed-file conflicts in this PR.
- [ ] Adopt thin build.ps1 and shared workflow callers, including PR cleanup, while preserving consumer-owned integrations.
- [ ] Adopt distributed skills and agent instructions; distinguish repository guidance from independently enforced controls.
- [ ] Build and validate preview and production locally using build.ps1.
- [ ] Verify the exact PR preview: wrapper, both guides, languages, navigation, aliases and PDFs, including Persian and Japanese. Investigate the previously reported Spanish PDF path.
- [ ] Prove Minionese is excluded from production pages, indexes and downloads.
- [ ] Obtain maintainer acceptance of the preview before merging adoption.

## Boundaries

Preserve guide content, supplied PDFs, the bespoke wrapper and deliberately structured multilingual behavior. Keep changes minimal and record any justified bug fixes or accepted output differences. Existing shared download and translation-directory aliases support legacy behavior only; do not expand them to new languages.

Hugo internal refactoring follows verified adoption across all three guide sites. This PR does not authorize platform promotion, production deployment, GitHub administrative changes or managed contributor-machine configuration. Independent agent enforcement and the trusted deployment boundary remain explicit later work.

## Evidence

Record the selected platform version, source commits, local build results, PR deployment URL and functional/visual comparisons here as adoption proceeds. A green build alone is not visual acceptance.