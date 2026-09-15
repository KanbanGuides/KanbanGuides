# Disposable homepage UX demo

This branch implements the approved homepage concept as a shared, site-owned
`site/layouts/index.html` override for every enabled language. Guide readers retain
the installed OpenGuidePlatform layouts. No platform module or guide publication
is edited. Remove the override, its `ux` partials, data, CSS and JavaScript to
remove the experiment.

The cards discover guide sections and their current editions in the active language.
Authors and supplied PDF links come from edition content. Languages and history
remain guide-specific. Production language exclusions are unchanged.
`site/data/ux-home/<language>.json` contains localized homepage presentation copy
and controls; existing site i18n resources supply community and contributor text.
New copy is draft localization and has not had native-speaker review. Adding a
language requires a matching UI resource; a missing resource fails the build rather
than silently serving an English homepage. These resources are presentation strings,
not a page or translation inventory. The optional per-guide `title` overrides a
presentation label: French uses it to correct the existing wrapper metadata that
otherwise labels both publications as the Open Guide. Guide source content is preserved.

Search uses current guide text and headings in the active language and runs locally
in the browser. Search messages and accessible labels are localized. Comparison,
About and contributor controls open native keyboard-accessible dialogs. Navigation
and actions wrap for longer labels, and Persian retains right-to-left layout.
The book covers are decorative CSS illustrations, not replacement PDF covers.

## Build and verify

Use a fresh output path for every build; the platform preserves previous evidence.

```powershell
./build.ps1 -Target preview -OutputPath .processing/ux-preview-<unique>
./build.ps1 -Target production -OutputPath .processing/ux-production-<unique>
python tests/test_ux_home.py .processing/ux-preview-<unique>/site
python tests/test_ux_home.py .processing/ux-production-<unique>/site --production
```

Python checks use the standard library. Check desktop and mobile presentation,
keyboard focus, dialog open/close, search and its no-results state in a browser,
including longer translated labels, Japanese and right-to-left Persian. Tests
discover enabled homepages from the generated language menu and check shared layout,
localized controls, guide-specific links, PDFs, search anchors and unchanged readers.
The production target validates a local artifact; it does not publish the site.

The installed platform's local Serve target currently fails during Prepare with
`PREPARE_INPUT_UNAVAILABLE` (null-valued expression). To inspect a successfully
built preview artifact without changing platform adapters:

```powershell
python -m http.server 1319 --bind 127.0.0.1 --directory .processing/ux-preview-<unique>/site
```

Open http://127.0.0.1:1319/. This is static artifact inspection, without hot reload.
The existing readers may retain absolute navigation URLs for the configured build
host. Use a local BaseUrl when building a complete local navigation preview.

Existing build warnings include old module/deprecation notices, contributor
helper diagnostics, and duplicate legacy download aliases. They predate this
homepage override and are not corrected by this experiment.
