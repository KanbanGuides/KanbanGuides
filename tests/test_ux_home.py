"""Acceptance checks against built multilingual UX homepages (standard library only)."""
from html import unescape
import json
from html.parser import HTMLParser
from pathlib import Path
import re
import sys
import unittest
from tempfile import TemporaryDirectory
from urllib.parse import unquote, urljoin, urlsplit

ARTIFACT = Path(sys.argv.pop(1)).resolve()
PRODUCTION = '--production' in sys.argv
if PRODUCTION:
    sys.argv.remove('--production')
COPY = Path(__file__).resolve().parents[1] / 'site/data/ux-home'


def yaml_records(text):
    """Read the contribution files' YAML subset: a list of mappings whose values are
    scalars, scalar lists or one-level scalar mappings."""
    records, key = [], None
    for line in text.splitlines():
        if not line.strip() or line.lstrip().startswith('#'):
            continue
        indent = len(line) - len(line.lstrip())
        item = line.strip()
        if indent == 0 and item.startswith('- '):
            records.append({})
            item, indent = item[2:], 2
        if indent == 2:
            key, _, value = item.partition(':')
            records[-1][key] = value.strip().strip('"\'') or None
        elif item.startswith('- '):
            records[-1][key] = (records[-1][key] or []) + [item[2:].strip().strip('"\'')]
        else:
            name, _, value = item.partition(':')
            records[-1][key] = (records[-1][key] or {}) | {name.strip(): value.strip().strip('"\'')}
    return records


def language_pdfs(directory, lang):
    """Hugo preserves supplied filename casing and sometimes nested PDF paths."""
    return [path for path in directory.rglob("*")
            if path.is_file() and path.name.lower().endswith(f".{lang.lower()}.pdf")]


class Page(HTMLParser):
    """Collect navigation, dialogs and search contracts from generated HTML."""
    def __init__(self, path):
        super().__init__()
        self.links = []
        self.elements = []
        self.ids = set()
        self.dialogs = set()
        self.openers = []
        self.text = []
        self.scripts = {}
        self.script_id = None
        self.html = {}
        self.feed(path.read_text(encoding='utf-8'))

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        self.elements.append((tag, attrs))
        if tag == 'html':
            self.html = attrs
        if attrs.get('id'):
            self.ids.add(attrs['id'])
        if tag == 'a':
            self.links.append(attrs)
        if tag == 'dialog':
            self.dialogs.add(attrs.get('id'))
        if attrs.get('data-dialog'):
            self.openers.append(attrs['data-dialog'])
        if tag == 'script':
            self.script_id = attrs.get('id')
            if self.script_id:
                self.scripts[self.script_id] = ''

    def handle_endtag(self, tag):
        if tag == 'script':
            self.script_id = None

    def handle_data(self, data):
        if self.script_id:
            self.scripts[self.script_id] += data
        else:
            self.text.append(data)


class HomepageAcceptance(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        root = Page(ARTIFACT / 'index.html')
        # Hugo's rendered language menu is the source of enabled homepages.
        cls.homes = {}
        for link in root.links:
            if link.get('lang'):
                route = urlsplit(link['href']).path
                cls.homes[link['lang'].lower()] = (route, Page(ARTIFACT / route.lstrip('/') / 'index.html'))

    def local_target(self, href, route='/'):
        url = urlsplit(href)
        if url.scheme or url.netloc:
            return None, url.fragment
        url = urlsplit(urljoin(route, href))
        path = ARTIFACT / unquote(url.path).lstrip('/')
        if path.is_dir():
            path /= 'index.html'
        return path, unquote(url.fragment)

    def test_all_enabled_homepages_share_the_localized_layout(self):
        self.assertIn('en', self.homes)
        self.assertGreater(len(self.homes), 1)
        for lang, (route, page) in self.homes.items():
            with self.subTest(language=lang):
                copy = json.loads((COPY / f'{lang}.json').read_text(encoding='utf-8'))
                self.assertIn('kg-content', page.ids)
                self.assertEqual(page.html['lang'].lower(), lang)
                if lang == 'fa':
                    self.assertEqual(page.html.get('dir'), 'rtl')
                text = ' '.join(page.text)
                for value in [copy['hero']['title'], copy['hero']['subtitle'], copy['ui']['read'], copy['ui']['language_name']]:
                    self.assertIn(value, text)
                self.assertNotIn('[i18n]', text)
                if lang == 'fr':
                    self.assertIn('Le Guide Kanban', text)
                    self.assertIn('Guide Ouvert de Kanban', text)
                if lang != 'en':
                    self.assertNotIn('A clearer understanding of Kanban.', text)
                messages = json.loads(page.scripts['kg-search-messages'])
                self.assertEqual(messages['initial'], copy['ui']['search_initial'])
                self.assertIn('{count}', messages['results'])
                self.assertTrue(set(page.openers) <= page.dialogs)
                self.assertEqual({a['lang'].lower() for a in page.links if a.get('lang')}, set(self.homes))
                active = [a for a in page.links if a.get('aria-current') == 'page' and a.get('lang')]
                self.assertEqual([a['lang'].lower() for a in active], [lang])
        if PRODUCTION:
            for lang in ('min', 'pl', 'es-419'):
                self.assertNotIn(lang, self.homes)
                self.assertFalse((ARTIFACT / lang / 'index.html').exists())

    def test_guide_actions_and_pdfs_keep_the_homepage_language(self):
        for lang, (route, page) in self.homes.items():
            reads = [a for a in page.links if a.get('data-action') == 'read']
            self.assertTrue(reads, lang)
            for read in reads:
                slug = read['data-guide']
                with self.subTest(language=lang, guide=slug):
                    for action, suffix in [('read', '/'), ('languages', '/translations/'), ('history', '/history/')]:
                        link = next(a for a in page.links if a.get('data-action') == action and a.get('data-guide') == slug)
                        self.assertEqual(urlsplit(link['href']).path, f'{route}{slug}{suffix}')
                    pdfs = [a for a in page.links if a.get('data-action') == 'pdf' and a.get('data-guide') == slug]
                    available = language_pdfs(ARTIFACT / route.lstrip('/') / slug, lang)
                    if available:
                        self.assertTrue(pdfs, (lang, slug))
                    for pdf in pdfs:
                        self.assertIn('download', pdf)
                        path, _ = self.local_target(pdf['href'])
                        self.assertTrue(path.read_bytes().startswith(b'%PDF'), pdf['href'])
                        self.assertTrue(path.name.lower().endswith(f'.{lang}.pdf'))
                        self.assertTrue(urlsplit(pdf['href']).path.startswith(f'{route}{slug}/'))

    def test_local_links_and_search_anchors_resolve_in_each_language(self):
        for lang, (route, page) in self.homes.items():
            search = json.loads(page.scripts['kg-search-index'])
            self.assertTrue(search, lang)
            self.assertTrue(any('#' in row['url'] for row in search), lang)
            for row in search:
                self.assertTrue(row['url'].startswith(route), (lang, row['url']))
            for href in [a.get('href', '') for a in page.links] + [r['url'] for r in search]:
                with self.subTest(language=lang, href=href):
                    self.assertNotIn(href, ('', '#'))
                    path, fragment = self.local_target(href, route)
                    if path is None:
                        continue
                    self.assertTrue(path.is_file(), href)
                    if fragment:
                        self.assertIn(fragment, Page(path).ids, href)

    def test_removed_section_stays_removed_and_readers_keep_platform_layout(self):
        for route, page in self.homes.values():
            text = ' '.join(page.text)
            for removed in ('Find what you need', 'Read in your language', 'Explore the guides'):
                self.assertNotIn(removed, text)
            for read in [a for a in page.links if a.get('data-action') == 'read']:
                path, _ = self.local_target(read['href'], route)
                html = path.read_text(encoding='utf-8')
                self.assertNotIn('ux-home.css', html)
                self.assertNotIn('kg-search-index', html)

    def test_menu_control_is_localized_and_navigation_survives_without_javascript(self):
        for lang, (route, page) in self.homes.items():
            with self.subTest(language=lang):
                toggle = next(a for tag, a in page.elements
                              if tag == 'button' and 'kg-menu-toggle' in a.get('class', '').split())
                navigation = next(a for tag, a in page.elements
                                  if tag == 'nav' and a.get('id') == toggle['aria-controls'])
                copy = json.loads((COPY / f'{lang}.json').read_text(encoding='utf-8'))
                self.assertEqual(toggle['aria-label'], copy['ui']['navigation'])
                self.assertEqual(toggle['aria-expanded'], 'false')
                self.assertIn('hidden', toggle)
                self.assertNotIn('hidden', navigation)

    def test_guide_cards_credit_localized_creators_of_the_latest_edition(self):
        contributions = Path(__file__).resolve().parents[1] / 'site/data/contributions'
        for lang, (route, page) in self.homes.items():
            html = (ARTIFACT / route.lstrip('/') / 'index.html').read_text(encoding='utf-8')
            copy = json.loads((COPY / f'{lang}.json').read_text(encoding='utf-8'))
            for slug in [a['data-guide'] for a in page.links if a.get('data-action') == 'read']:
                with self.subTest(language=lang, guide=slug):
                    people = yaml_records((contributions / f'{slug}.yml').read_text(encoding='utf-8'))
                    latest = max((c for p in people for c in p['contributions']), key=lambda v: tuple(map(int, v.split('.'))))
                    creators = sorted((p for p in people if p.get('role') == 'creator' and latest in p['contributions']), key=lambda p: int(p['weight']))
                    self.assertTrue(creators, slug)
                    names = [p.get('localizedNames', {}).get(lang, p['name']) for p in creators]
                    card = re.search(rf'aria-labelledby="?title-{slug}"?.*?</article>', html, re.S)
                    self.assertIsNotNone(card)
                    byline = re.search(r'class="?kg-authors"?>(.*?)</p>', card[0], re.S)
                    self.assertIsNotNone(byline, 'missing creator byline')
                    text = unescape(byline[1])
                    self.assertTrue(text.startswith(copy['ui']['by']), text)
                    positions = [text.find(name) for name in names]
                    self.assertNotIn(-1, positions, text)
                    self.assertEqual(positions, sorted(positions), text)

    def test_pdf_discovery_preserves_mixed_case_and_nested_paths(self):
        with TemporaryDirectory() as temporary:
            root = Path(temporary)
            supplied = root / '2025.7' / 'pdf' / 'nested' / 'guide.es-ES.pdf'
            supplied.parent.mkdir(parents=True)
            supplied.write_bytes(b'%PDF-1.7')
            (supplied.parent / 'guide.en.pdf').write_bytes(b'%PDF-1.7')
            self.assertEqual(language_pdfs(root, 'es-es'), [supplied])
            self.assertEqual(language_pdfs(root, 'ES-ES'), [supplied])
            self.assertEqual(language_pdfs(root, 'fr'), [])

    def test_translation_resources_have_complete_keys(self):
        baseline = json.loads((COPY / 'en.json').read_text(encoding='utf-8'))
        def leaves(value, prefix=''):
            return {k2: v2 for k, v in value.items() for k2, v2 in
                    (leaves(v, prefix + k + '.').items() if isinstance(v, dict) else [(prefix + k, v)])}
        expected = leaves(baseline)
        for path in COPY.glob('*.json'):
            actual = leaves(json.loads(path.read_text(encoding='utf-8')))
            # Optional presentation titles can correct wrapper labels without changing publications.
            required = {k: v for k, v in actual.items() if not (k.startswith('guides.') and k.endswith('.title'))}
            self.assertEqual(set(required), set(expected), path.name)
            self.assertTrue(all(isinstance(v, str) and v.strip() for v in actual.values()), path.name)


if __name__ == '__main__':
    unittest.main()
