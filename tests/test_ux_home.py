"""Acceptance checks against a built UX homepage. Uses only Python's standard library."""
import json
from html.parser import HTMLParser
from pathlib import Path
import sys
import unittest
from urllib.parse import unquote, urlsplit

ARTIFACT = Path(sys.argv.pop(1)).resolve()


class Page(HTMLParser):
    def __init__(self, path):
        super().__init__()
        self.links = []
        self.ids = set()
        self.dialogs = set()
        self.openers = []
        self.text = []
        self.search_data = ''
        self.in_index = False
        self.feed(path.read_text(encoding='utf-8'))

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if attrs.get('id'):
            self.ids.add(attrs['id'])
        if tag == 'a':
            self.links.append(attrs)
        if tag == 'dialog':
            self.dialogs.add(attrs.get('id'))
        if attrs.get('data-dialog'):
            self.openers.append(attrs['data-dialog'])
        if tag == 'script' and attrs.get('id') == 'kg-search-index':
            self.in_index = True

    def handle_endtag(self, tag):
        if tag == 'script':
            self.in_index = False

    def handle_data(self, data):
        if self.in_index:
            self.search_data += data
        else:
            self.text.append(data)


class HomepageAcceptance(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.page = Page(ARTIFACT / 'index.html')

    def local_target(self, href):
        url = urlsplit(href)
        if url.scheme or url.netloc:
            return None, url.fragment
        path = ARTIFACT / unquote(url.path).lstrip('/')
        if path.is_dir():
            path /= 'index.html'
        return path, unquote(url.fragment)

    def test_both_guides_have_distinct_read_pdf_language_history_actions(self):
        for slug, title in [('the-kanban-guide', 'The Kanban Guide'),
                            ('open-guide-to-kanban', 'Open Guide to Kanban')]:
            for label, suffix in [(f'Read {title}', '/'),
                                  (f'Languages for {title}', '/translations/'),
                                  (f'Edition history for {title}', '/history/')]:
                link = next(a for a in self.page.links if a.get('aria-label') == label)
                self.assertEqual(urlsplit(link['href']).path, f'/{slug}{suffix}')
            pdf = next(a for a in self.page.links if a.get('aria-label') == f'Download {title} PDF')
            self.assertIn('download', pdf)
            path, _ = self.local_target(pdf['href'])
            self.assertTrue(path.read_bytes().startswith(b'%PDF'), pdf['href'])
            self.assertTrue(path.name.endswith('.en.pdf'))

    def test_all_local_links_and_search_anchors_resolve(self):
        search = json.loads(self.page.search_data)
        self.assertTrue(any('flow-metrics' in row['url'] for row in search))
        for href in [a.get('href', '') for a in self.page.links] + [r['url'] for r in search]:
            self.assertNotIn(href, ('', '#'))
            path, fragment = self.local_target(href)
            if path is None:
                continue
            self.assertTrue(path.is_file(), href)
            if fragment:
                self.assertIn(fragment, Page(path).ids, href)

    def test_removed_section_stays_removed_and_dialogs_exist(self):
        text = ' '.join(self.page.text)
        self.assertNotIn('Find what you need', text)
        self.assertNotIn('Read in your language', text)
        self.assertNotIn('Explore the guides', text)
        self.assertTrue(set(self.page.openers) <= self.page.dialogs)
        self.assertIn('kg-content', self.page.ids)

    def test_readers_and_translated_homepages_keep_platform_layout(self):
        for route in ['the-kanban-guide', 'open-guide-to-kanban', 'fr', 'ja', 'fa', 'es-es']:
            html = (ARTIFACT / route / 'index.html').read_text(encoding='utf-8')
            self.assertNotIn('ux-home.css', html, route)
            self.assertNotIn('kg-search-index', html, route)


if __name__ == '__main__':
    unittest.main()
