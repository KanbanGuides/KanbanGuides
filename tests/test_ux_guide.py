"""Check site guide integration and compare publications with an accepted artifact.

Usage: python tests/test_ux_guide.py NEW_SITE BASELINE_SITE
"""
from pathlib import Path
import hashlib
import json
import re
import sys
import unittest

SITE, BASELINE = map(Path, sys.argv[1:3])
del sys.argv[1:3]


def article(html):
    match = re.search(r'<article\b[^>]*class="?content-details(?:"|\s|>).*?</article>', html, re.S)
    if not match:
        return None
    return re.sub(r'https?://[^/\s"<>]+', 'HOST', match[0])


class GuidePresentation(unittest.TestCase):
    def test_reader_content_and_controls_are_preserved(self):
        count = 0
        for old in BASELINE.rglob('index.html'):
            before = old.read_text(encoding='utf-8')
            publication = article(before)
            if publication is None:
                continue
            count += 1
            new = SITE / old.relative_to(BASELINE)
            with self.subTest(page=str(old.relative_to(BASELINE))):
                after = new.read_text(encoding='utf-8')
                self.assertEqual(publication, article(after))
                self.assertIn('/css/ux-guide.css', after)
                self.assertIn('id=tocCollapse', after.replace('"', ''))
        self.assertGreater(count, 0, 'No guide readers found')
        print(f'Compared {count} complete reader articles, including controls and emphasis')

    def test_supplied_pdfs_are_unchanged(self):
        # Reviewed regenerations are listed by baseline and replacement hash;
        # every other PDF must match the baseline byte for byte.
        reviewed = json.loads((Path(__file__).parent / 'reviewed-pdf-replacements.json').read_text(encoding='utf-8'))
        replacements = {entry['baseline']: entry['replacement'] for entry in reviewed['replacements']}
        count = replaced = 0
        for old in BASELINE.rglob('*.pdf'):
            count += 1
            new = SITE / old.relative_to(BASELINE)
            baseline = hashlib.sha256(old.read_bytes()).hexdigest()
            expected = replacements.get(baseline, baseline)
            replaced += expected != baseline
            self.assertEqual(expected, hashlib.sha256(new.read_bytes()).hexdigest(), str(new))
        self.assertGreater(count, 0)
        print(f'Compared {count} PDF hashes ({replaced} reviewed replacements)')

    def test_homepage_does_not_load_reader_style(self):
        self.assertNotIn('/css/ux-guide.css', (SITE / 'index.html').read_text(encoding='utf-8'))


if __name__ == '__main__':
    unittest.main()

