# Disposable homepage UX demo

This branch implements the approved English homepage concept as a site-owned
`site/layouts/index.en.html` override. Other languages and guide readers retain
the installed OpenGuidePlatform layouts. No platform module or guide publication
is edited. Remove the override, its `ux` partial, data, CSS and JavaScript to
remove the experiment.

The cards discover guide sections and their current editions. Authors and PDF
links come from the edition content. Languages and history remain guide-specific.
`site/data/ux-home.yaml` contains the approved English presentation copy. Search
uses current English guide text and headings; it runs locally in the browser.
Comparison, About and contributor controls open native keyboard-accessible dialogs.
The book covers are decorative CSS illustrations, not replacement PDF covers.

## Build and verify

Use a fresh output path for every build; the platform preserves previous evidence.

```powershell
./build.ps1 -Target preview -OutputPath .processing/ux-preview-<unique>
./build.ps1 -Target production -OutputPath .processing/ux-production-<unique>
python tests/test_ux_home.py .processing/ux-preview-<unique>/site
python tests/test_ux_home.py .processing/ux-production-<unique>/site
```

Python checks use the standard library. Check desktop and mobile presentation,
keyboard focus, dialog open/close, search and its no-results state in a browser.
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
