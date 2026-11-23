#!/usr/bin/env python3
"""Read-only Space Corsair text coverage audit. Requires Python 3.9+ and JDK 11+."""
import argparse
import ast
import base64
import bisect
import csv
import html
import json
import re
import subprocess
import sys
import unicodedata
import zipfile
from collections import Counter, defaultdict
from pathlib import Path
from xml.parsers import expat

TOOL = Path(__file__).resolve().parent
sys.path.insert(0, str(TOOL.parents[2] / 'es'))
import arsc  # The same stock resource reader used by es/add_locale.py.

CONTACT = re.compile(r'[\w.+-]+@[\w.-]+\.[A-Za-z]{2,}|(?<![\w.])(?:\d{1,3}\.){3}\d{1,3}(?![\w.])')
HEADER = ('key', 'English', 'file:line', 'problem')
JSTRING = r'"(?:[^"\\]|\\.)*"'
FLAT_PAIR = re.compile(r'(' + JSTRING + r')\s*:\s*(' + JSTRING + ')')
TAG = re.compile(r'<[^>]+>')
PRINTF = re.compile(r'%(?:(\d+)\$)?([-#+0,(< ]*)(\d*)(?:\.(\d+))?([tT][a-zA-Z]|[bBhHsScCdoxXeEfgGaAn%])')
COLOR = re.compile(r"""\bcolor\s*=\s*['"]?([#\w]+)|(?<!\w)(\#[a-f\d]{8}|\#[a-f\d]{6}|\#[a-f\d]{3})(?!\w)|(?:§[\da-fklmnor])""", re.I)


def signature(text):
    # Android resource XML escapes quotes before es/add_locale.py unescapes them.
    text = text.replace(r'\"', '"').replace(r"\'", "'")
    items = []
    next_arg = 1
    last_arg = 0
    for m in PRINTF.finditer(text):
        pos, flags, width, precision, conversion = m.groups()
        # In prose "10% damage" is a percentage followed by a word. Formatting
        # with an actual space flag (e.g. "% d HP") still contributes a signature.
        percentage = m.start() > 0 and (text[m.start() - 1].isdigit() or text[m.start() - 1] == '}')
        if ' ' in flags and (percentage or text[m.end():m.end() + 1].isalpha()):
            continue
        if conversion in ('%', 'n'):
            items.append(conversion)
            continue
        if pos:
            index = int(pos)
        elif '<' in flags:
            index = last_arg
        else:
            index = next_arg
            next_arg += 1
        last_arg = index
        items.append((index, conversion, flags.replace('<', ''), width, precision))
    items += re.findall(r'\{\d+\}', text)
    for m in COLOR.finditer(text):
        items.append(('color', (m[1] or m[2] or m[0]).lower()))
    return Counter(items)


def width(text):
    """Approximate longest line in em units for unwrapped widget labels."""
    lines = html.unescape(TAG.sub('', re.sub(r'<br\s*/?>', '\n', text, flags=re.I))).splitlines()
    def advance(c):
        if unicodedata.combining(c):
            return 0
        if c.isspace() or c in "ilI.,'!|":
            return .32
        if c in 'MW@%' or unicodedata.east_asian_width(c) in ('F', 'W'):
            return .95
        return .68 if c.isupper() else .55
    return max((sum(map(advance, line)) for line in lines), default=0)


def read_glossary(path):
    rules = []
    for line in path.read_text(encoding='utf-8').splitlines():
        if line.startswith('#') or ' → ' not in line:
            continue
        en, es = line.casefold().split(' → ', 1)
        en = en.replace('quality: ', '').replace('mod(ification)', 'modification')
        en = re.sub(r'\s*\([^)]*\)', '', en)
        es = re.sub(r'\s*\([^)]*\)', '', es)
        left, right = en.split('/'), es.split('/')
        for i, term in enumerate(left):
            forms = [right[i].strip()] if len(left) == len(right) else [v.strip() for v in right]
            term = term.strip()
            if term:
                rules.append((re.compile(r'(?<!\w)' + re.escape(term) + r'(?:s|es)?(?!\w)'), term, forms))
    return sorted(rules, key=lambda rule: -len(rule[1]))


def terms(en, es, rules):
    en = CONTACT.sub(' ', TAG.sub(' ', en.casefold())).replace('space corsair', '')
    es = TAG.sub(' ', es.casefold())
    for pattern, term, forms in rules:
        matched = pattern.search(en)
        if not matched:
            continue
        # A multiword glossary entry takes precedence over its component words.
        en = pattern.sub(' ', en)
        if not any(re.search(r'(?<!\w)' + re.escape(f) + r'(?:s|es)?(?!\w)', es) for f in forms):
            yield term


def stock_xml(path):
    values = []
    parser = expat.ParserCreate()
    key, parts, line = None, [], 0
    def start(tag, attrs):
        nonlocal key, parts, line
        if tag == 'string' and attrs.get('translatable') != 'false':
            key, parts, line = attrs['name'], [], parser.CurrentLineNumber
    def end(tag):
        nonlocal key
        if tag == 'string' and key is not None:
            values.append((key, ''.join(parts), line))
            key = None
    parser.StartElementHandler, parser.EndElementHandler = start, end
    parser.CharacterDataHandler = lambda s: parts.append(s) if key is not None else None
    parser.Parse(path.read_bytes(), True)
    return values


def stock_english(root):
    # Dump provides human-readable line references. The actual default table is authoritative.
    dump = 'i18n/dump.txt'
    locations = {}
    for i, line in enumerate((root / dump).read_text(encoding='utf-8').splitlines(), 1):
        if '||' in line:
            locations[line.split('||', 1)[0].split()[-1]] = f'{dump}:{i}'
    apk = 'base/space-corsair-mod-signed-v12.apk'
    with zipfile.ZipFile(root / apk) as archive:
        raw = archive.read('resources.arsc')
    table = arsc.parse(raw)
    off, size = table['gpool']
    pool = arsc.Pool(raw[off:off + size]).strings
    result = {}
    for pkg in table['pkgs']:
        tid = pkg['types'].index('string') + 1
        for off, typ, _, _ in pkg['chunks']:
            if typ != 0x201 or raw[off + 8] != tid or arsc.config_lang(raw, off) != ('', ''):
                continue
            for key, kind, value in arsc.type_entries(raw, off).values():
                if kind == 3:
                    name = pkg['keys'][key]
                    result[name] = (pool[value], locations.get(name, 'build.sh:50'))
    return result


class Audit:
    def __init__(self, root):
        self.root = root
        self.rows = set()
        self.catalog = {}
        self.uses = set()
        self.seen = set()
        self.rules = read_glossary(root / 'i18n/glossary_es.md')
        self.widgets = defaultdict(set)

    def issue(self, key, en, site, problem):
        self.rows.add((CONTACT.sub('[redacted]', key), CONTACT.sub('[redacted]', en), site, problem))

    def register(self, key, value, site):
        old = self.catalog.get(key)
        if old and value != old[0]:
            self.issue(key, key, site, 'duplicate: conflicting definition in ' + old[1].rsplit(':', 1)[0])
        self.catalog[key] = value, site

    def flat(self, path, omit_equal=False):
        text = (self.root / path).read_text(encoding='utf-8')
        pairs = json.loads(text, object_pairs_hook=list)
        newlines = [m.start() for m in re.finditer('\n', text)]
        matches = list(FLAT_PAIR.finditer(text))
        if len(matches) != len(pairs):
            raise ValueError(f'expected flat string map in {path}')
        seen = {}
        for (key, value), m in zip(pairs, matches):
            site = f'{path}:{1 + bisect.bisect_left(newlines, m.start())}'
            if key in seen and seen[key] != value:
                self.issue(key, key, site, 'duplicate: conflicting definition in ' + path)
            seen[key] = value
            if not omit_equal or key != value:
                self.register(key, value, site)

    def aligned(self, enfile, esfile):
        def document(path):
            text = (self.root / path).read_text(encoding='utf-8')
            lines = {}
            newlines = [m.start() for m in re.finditer('\n', text)]
            for m in re.finditer(JSTRING, text):
                lines.setdefault(json.loads(m[0]), 1 + bisect.bisect_left(newlines, m.start()))
            return json.loads(text), lines
        en, ensites = document(enfile)
        es, essites = document(esfile)
        def walk(a, b, field):
            if isinstance(a, dict):
                b = b if isinstance(b, dict) else {}
                for k, v in a.items():
                    walk(v, b.get(k), k)
                for k in b.keys() - a.keys():
                    self.issue(k, '', f'{esfile}:{essites[k]}', 'stale: field absent from paired source')
            elif isinstance(a, list):
                b = b if isinstance(b, list) else []
                for i, item in enumerate(a):
                    walk(item, b[i] if i < len(b) else None, field)
                if len(b) > len(a):
                    self.issue(field, '', f'{esfile}:{essites.get(field, 1)}', 'stale: extra aligned list entries')
            elif isinstance(a, str) and a.strip():
                site = f'{enfile}:{ensites[a]}'
                self.seen.add(a)
                if isinstance(b, str) and b != a:
                    self.register(a, b, f'{esfile}:{essites[b]}')
                # The paired files also contain IDs, sector codes, and proper-name metadata.
                if (field not in ('faction','giver','sector','objective','family','available_at','name','commander','class')
                        and not re.fullmatch(r'[A-Z_\d]+', a)):
                    self.uses.add((a, site, 'key', ''))
        walk(en, es, '')

    def catalogs(self):
        # Derive the overlay list from this branch's builder. Skip comments and never run the build.
        path = 'i18n/lang/build_es_json.py'
        code = ast.parse((self.root / path).read_text(encoding='utf-8'))
        self.flat('i18n/lang/es.json')
        self.flat('i18n/gpt/mod_texts_es.json', omit_equal=True)
        for stmt in code.body:
            if isinstance(stmt, ast.Expr) and isinstance(stmt.value, ast.Call) and isinstance(stmt.value.func, ast.Name) and stmt.value.func.id == 'walk':
                paths = [n.value.lstrip('/') for arg in stmt.value.args for n in ast.walk(arg)
                         if isinstance(n, ast.Constant) and isinstance(n.value, str) and n.value.endswith('.json')]
                self.aligned(*paths)
            elif isinstance(stmt, ast.For):
                for n in ast.walk(stmt.iter):
                    if isinstance(n, ast.Constant) and isinstance(n.value, str) and n.value.endswith('.json'):
                        self.flat(n.value.lstrip('/'))

    def java(self):
        proc = subprocess.run(['java', str(TOOL / 'TextSites.java'), str(self.root)],
                              check=True, stdout=subprocess.PIPE, text=True, encoding='utf-8')
        self.dynamic = set()
        for line in proc.stdout.splitlines():
            kind, site, widget, data = line.split('\t')
            value = base64.b64decode(data).decode('utf-8')
            if kind.startswith('dynamic-'):
                self.dynamic.add((site, value, kind[8:]))
                continue
            self.seen.add(value)
            if kind != 'key' and re.fullmatch(r'\s*[IVXLCDM]+\s*', value):
                continue
            if kind != 'literal' and (kind == 'key' and value.strip() or re.search('[A-Za-z]{2}', TAG.sub('', value))):
                self.uses.add((value, site, kind, widget))
                if widget:
                    self.widgets[widget].add(value)

    def compare(self, key, en, es, site):
        if signature(en) != signature(es):
            self.issue(key, en, site, 'placeholder: format argument or colour code differs')
        for term in terms(en, es, self.rules):
            self.issue(key, en, site, 'glossary: review ' + term)

    def resources(self):
        stock = stock_english(self.root)
        supplied = {}
        for path in sorted((self.root / 'i18n').glob('tr[0-9].txt')):
            for line, entry in enumerate(path.read_text(encoding='utf-8').splitlines(), 1):
                if not entry:
                    continue
                key, value = entry.split('\t', 1)
                site = f'{path.relative_to(self.root)}:{line}'
                if key in supplied and supplied[key] != value:
                    self.issue(key, stock.get(key, ('', ''))[0], site, 'duplicate: conflicting stock source')
                if key not in stock:
                    self.issue(key, '', site, 'stale: stock source key absent from default table')
                supplied[key] = value
        translated = {}
        for path in sorted((self.root / 'i18n/values-es').glob('*.xml')):
            for key, value, line in stock_xml(path):
                site = f'{path.relative_to(self.root)}:{line}'
                if key in translated and translated[key][0] != value:
                    self.issue(key, stock.get(key, ('', ''))[0], site, 'duplicate: conflicting resource')
                translated[key] = value, site
        for key, (en, site) in stock.items():
            if key not in translated or not translated[key][0].strip() and en.strip():
                self.issue(key, en, site, 'missing: Android resource')
            elif key in translated:
                es, where = translated[key]
                self.compare(key, en, es, where)
                if key not in supplied and en == es and (key.startswith('Achievement') or
                        len(en.split()) >= 4) and re.search(r'[A-Za-z]', en):
                    self.issue(key, en, where, 'missing: review stock prose copied from English')
        for key in translated.keys() - stock.keys():
            self.issue(key, '', translated[key][1], 'stale: Android resource absent from default table')
        return len(stock)

    def run(self):
        self.catalogs()
        self.java()
        view_width = {k: max(map(width, labels)) for k, labels in self.widgets.items()}
        for en, site, kind, widget in self.uses:
            # Layout fallback can look up a whole TextView, trimmed text, or middle-dot segments.
            keys = [en]
            if kind == 'layout' and en not in self.catalog:
                keys = [en.strip()] if en.strip() in self.catalog else [s.strip() for s in en.split(' · ') if s.strip()]
            for key in keys:
                self.seen.add(key)
                value = self.catalog.get(key, ('', ''))[0]
                if kind in ('display', 'fragment') or kind == 'layout' and not value:
                    self.issue(key, en, site, 'bypass: review direct display literal')
                if not value.strip() and key.strip():
                    self.issue(key, en, site, 'missing: dictionary entry')
                if value and widget and width(value) > view_width[widget] * 1.10 + 1:
                    self.issue(key, en, site, 'overflow: review widget width')
        for key, (value, site) in self.catalog.items():
            if key not in self.seen:
                self.issue(key, key, site, 'stale: no matching English source literal')
            self.compare(key, key, value, site)
        stock_count = self.resources()
        return f'{len(self.catalog)} dictionary keys, {stock_count} stock strings, {len(self.dynamic)} unresolved source sites'


def write_csv(rows, file):
    writer = csv.writer(file, lineterminator='\n')
    writer.writerow(HEADER)
    writer.writerows(sorted(rows))


def identity(row):
    key, en, site, problem = row
    return key, en, site.rsplit(':', 1)[0], problem


def identities(rows):
    # Ignore line drift, retain occurrence counts, source, English and exact issue.
    return Counter(map(identity, rows))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path.cwd())
    parser.add_argument('--csv', type=Path, help='full report (stdout by default)')
    parser.add_argument('--dynamic-csv', type=Path, help='source sites requiring runtime or cross-method values')
    parser.add_argument('--ci', action='store_true')
    parser.add_argument('--baseline', type=Path, default=TOOL.parents[1] / 'out/b2-09/task-branch.csv')
    args = parser.parse_args()
    audit = Audit(args.root.resolve())
    stats = audit.run()
    if args.ci:
        with args.baseline.open(encoding='utf-8', newline='') as f:
            reader = csv.reader(f)
            if tuple(next(reader)) != HEADER:
                parser.error('baseline must be a linter CSV')
            added = identities(audit.rows) - identities(reader)
    if args.dynamic_csv:
        with args.dynamic_csv.open('w', encoding='utf-8', newline='') as f:
            writer = csv.writer(f, lineterminator='\n')
            writer.writerow(('file:line', 'method', 'use'))
            writer.writerows(sorted(audit.dynamic))
    if args.csv:
        with args.csv.open('w', encoding='utf-8', newline='') as f:
            write_csv(audit.rows, f)
    elif not args.ci:
        write_csv(audit.rows, sys.stdout)
    print(f'{stats}; {len(audit.rows)} findings', file=sys.stderr)
    if args.ci:
        print(f'{sum(added.values())} new findings', file=sys.stderr)
        if added:
            remaining = added.copy()
            new_rows = []
            for row in sorted(audit.rows):
                issue = identity(row)
                if remaining[issue]:
                    new_rows.append(row)
                    remaining[issue] -= 1
            write_csv(new_rows, sys.stderr)
            return 1
    return 0


if __name__ == '__main__':
    sys.exit(main())
