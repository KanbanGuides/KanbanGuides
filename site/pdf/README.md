# PDF configuration

Generated guide PDFs are configured here, outside `content/` so Hugo does not publish these files. Settings are layered; the most specific wins:

| Level | Folder |
|---|---|
| Platform default | OpenGuidePlatform Core `PdfPublishing/templates/` |
| Site | `site/pdf/` |
| Guide | `site/pdf/<guide>/` |
| Edition | `site/pdf/<guide>/<edition>/` |

Each folder may contain `pdf.yaml` (settings, merged key by key), `cover.tex`, `licence.tex`, `back.tex`, `page-header.tex`, `page-footer.tex` and `style.tex` (Pandoc templates; the most specific file wins), `filters/*.lua` with an optional `filters/<name>.tex` preamble, and `images/`. Add `.<lang>` before the extension (`pdf.fa.yaml`, `cover.ja.tex`) for one language.

Only downloads explicitly declared `handling: generated` in the edition's `pdf.yaml` are eligible for generation. All other PDFs remain supplied/protected and retain their bytes. Use the [installed PDF workflow](../../.agents/skills/guide.genpdfs/SKILL.md) to inspect the plan, check fonts and tools, generate, visually review actual pages and record the required receipt. Prepare validates generated-PDF receipts; ordinary builds do not generate PDFs automatically. See the [maintainer guide](../../docs/maintainer.md#pdf-generation) for preservation and replacement requirements.

Cover credits come from `site/data/contributions/<guide>.yml` (role `creator` = authors) and `<guide>.<lang>.yml` (translation teams). Do not put fonts, `dir`, `author` or `translators` in guide front matter.
