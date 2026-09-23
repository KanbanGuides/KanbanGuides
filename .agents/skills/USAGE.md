# Using the shared publishing commands

Installation and Update distribute these skills and the matching Core module. Follow the "Correct an existing guide" workflow in the resolved package's `system/OpenGuidePlatform.PowerShell.Core/README.md` for module loading, discovery, exact selection, editing and verification. The same commands work without an agent. Do not import an arbitrary globally installed Core version or invent inventory from test fixtures.

In an adopted site, resolve `$platform` through `./.OpenGuidePlatform/Resolve-OpenGuidePlatform.ps1 -WorkspaceRoot $PWD -UseInstalled`, then import Core from that package. Run Prepare with a fresh output directory and `-PlatformSource Path -PlatformPath $platform` to use that same version. Load `<output>/discovered-site.json` with Import-GuidePolicy. Keep WorkspaceRoot set to the consumer repository root. Explicit policy inputs remain supported for callers that use them; ordinary contributors use discovery.

The discovered inventory describes an unrestricted collection of guides; counts in fixtures are examples. Core decisions have no agent dependency. Agent instructions do not grant write authority. Independent enforcement requires an externally configured AgentControls evaluator or managed client; installation alone does not enable it. Mutation commands support WhatIf and refuse protected resources under the supplied policy.

Use the shared Prepare report for readiness. Core supports reviewed wrapper Markdown, YAML catalogue and language-configuration edits; preserve the consumer's multilingual structure and bespoke wrapper. Prepare validates declared generated-PDF receipts; generation and receipt recording are explicit operations.

## Readiness shared with Prepare

For translation status, creation and reconciliation, run the installed consumer entry point and read its report. This uses exactly the same effective Hugo catalogues, fallback observations and Core decisions as CI:

```powershell
$readinessOutput = '.processing/translation-status/' + [guid]::NewGuid().ToString('N')
./build.ps1 -Stage Prepare -Target preview -OutputPath $readinessOutput -PlatformSource Path -PlatformPath $platform
```

Even when Prepare fails, inspect `$readinessOutput/prepare/assessment.json` and `assessment.md` if they exist. Report the outcome, wrapper findings and the selected guide/edition/language inventory. Missing reports or effective evidence are blocked/unknown, never a substitute local-only pass. Required runtime routes/integration points remain pending Build/Validate; text resolution is not translation quality or complete plural-form coverage.

Get-GuideInventory and Get-GuideWrapperStatus are useful detailed diagnostics. Get-GuideContent provides exact guide/edition/language selection for content corrections. A local catalogue-only observation must not replace the effective readiness result above. The platform development equivalent is `./build.ps1 -Product GuideSite -SourcePath examples/reference-guide-site -Stage Prepare -Target preview -OutputPath <fresh-output>`.

## Reviewed wrapper translation edits

For guide translation creation and reconciliation, read `system/OpenGuidePlatform.PowerShell.Core/TranslationReadiness/README.md` in the resolved package. Get-GuideTranslationWork reports source/target content and optional explicit Git comparisons; New-GuideTranslation starts scaffolding; Test-GuideTranslation checks candidates; Set-GuideTranslation applies against reviewed source/target hashes. Both humans and skills use these commands. Refresh Prepare after scaffolding rather than editing discovered inventory. Source comparisons are review evidence, not inferred translator provenance.

Use Set-GuideWrapperTranslation for exact candidate text in a language-specific wrapper Markdown file, its i18n YAML catalogue, or a selected language entry in hugo.yaml/hugo.production.yaml. Supply WorkspaceRoot, Policy, Language, RelativePath and CandidateContent. Existing files require their reviewed ExpectedSha256; scaffolding never silently replaces a populated file. The command checks supplied protected-path policy and refuses guide content.

For a new language, first apply a reviewed production configuration candidate with that language disabled, then its main language configuration and wrapper/catalogue files. Configuration edits preserve all unrelated settings and other languages. Preserve the site's existing wrapper paths, metadata, rendering conventions and existing legacy aliases; do not create new shared download aliases. Translate the candidate text within the requested scope rather than inventing a universal wrapper layout.

Each file operation supports WhatIf and publishes through a staged write. Several files are not one transaction: inspect partial progress if an operation fails and rerun Prepare before claiming readiness. Resolved hashes prevent observed stale edits; cooperative locks are not independent enforcement. Run Build/Validate after the complete reviewed change.
