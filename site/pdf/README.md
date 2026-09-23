# PDF configuration

Generated guide PDFs are configured here, outside `content/` so Hugo does not publish these files. Settings are layered; the most specific wins:

| Level | Folder |
|---|---|
| Platform default | OpenGuidePlatform Core `PdfPublishing/templates/` |
| Site | `site/pdf/` |
| Guide | `site/pdf/<guide>/` |
| Edition | `site/pdf/<guide>/<edition>/` |

Each folder may contain `pdf.yaml` (settings, merged key by key), `cover.tex`, `licence.tex`, `back.tex`, `page-header.tex`, `page-footer.tex` and `style.tex` (Pandoc templates; the most specific file wins), `filters/*.lua` with an optional `filters/<name>.tex` preamble, and `images/`. Add `.<lang>` before the extension (`pdf.fa.yaml`, `cover.ja.tex`) for one language.

Every committed PDF is currently supplied and preserved; the current-edition PDFs were regenerated from these settings in a reviewed change (see `docs/maintainer.md`). The next platform release generates PDFs during the build, with hand-made PDFs listed as supplied. Cover credits come from `site/data/contributions/<guide>.yml` (role `creator` = authors) and `<guide>.<lang>.yml` (translation teams). Do not put fonts, `dir`, `author` or `translators` in guide front matter.
