// Host-side regression test for the batch-2 linter. No Worker bindings needed.
import assert from 'node:assert/strict';
import { cpSync, mkdirSync, mkdtempSync, readFileSync, rmSync, writeFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { spawnSync } from 'node:child_process';

const repo = fileURLToPath(new URL('../../../', import.meta.url));
const tool = join(repo, 'codex/tools/b2-09/lint_text.py');
const root = mkdtempSync(join(tmpdir(), 'coverage-'));
function put(file, data) {
    mkdirSync(dirname(join(root, file)), { recursive: true });
    writeFileSync(join(root, file), data);
}
function run(...args) {
    const r = spawnSync('python3', [tool, '--root', root, ...args], { encoding: 'utf8' });
    if (r.error) throw r.error;
    return r;
}

try {
    // Reuse existing Android catalogs and glossary verbatim. Fixture values below
    // are format probes and English sentinel text, not authored target-language copy.
    for (const path of ['base', 'i18n']) cpSync(join(repo, path), join(root, path), { recursive: true });
    put('i18n/lang/build_es_json.py', "for k, v in json.load(open(S + '/i18n/gpt/overlay.json')).items(): d[k] = v\n");
    put('i18n/lang/es.json', JSON.stringify({
        'Take %1$d {0} #abcdef': '%1$s {1} #aaaaaa',
        'Format %d': '%s', 'Brace {0}': '{1}', 'Tint #abcdef': '#abcdef #abcdef',
        'shield': 'ZZZ',
        'Stale fixture key': 'XXX',
        'Go': 'WWWWWWWWWWWW',
        'Same %2$s %1$d': '%1$d %2$s',
        '10% damage': '10% ZZZ',
        'XY': 'XX'
    }));
    put('i18n/gpt/mod_texts_es.json', '{}');
    put('i18n/gpt/overlay.json', '{"XY":"AA","XY":"BB"}');
    const source = 'src/java/fr/testudo/spacecorsair/mod/Probe.java';
    const java = `class Probe {
        static final String[][] ROWS = {{"Required key","Internal slot"},{"Second key","Private slot"}};
        static String wrapped(String text) { return ModLang.tr(text); }
        void screen(int i) {
            // label.setText("Comment only");
            label.setText(ModLang.tr("Go"));
            label.setText(ModLang.tr("shield"));
            ui.setTitle("Raw " + "caption");
            wrapped("Missing " + "piece");
            ModLang.tr(ROWS[i][0]);
            ModLang.trf("Take %1$d {0} #abcdef", 1);
            ModLang.trf("Same %2$s %1$d", 1, "v");
            ModLang.tr("10% damage");
            ModLang.tr("XY");
            label.setText(ModLang.spanish() ? "Manual B" : "Manual A");
        }
    }`;
    put(source, java);
    const baseline = join(root, 'baseline.csv');
    const first = run('--csv', baseline);
    assert.equal(first.status, 0, first.stderr);
    const rows = readFileSync(baseline, 'utf8').split('\n').filter(row => row.includes('Fixture') ||
        row.includes('Probe.java') || row.includes('i18n/lang/es.json') || row.includes('overlay.json'));
    function has(key, issue) {
        return rows.some(row => row.startsWith(key + ',') && row.includes(issue));
    }
    for (const [key, problem] of [
        ['Raw caption', 'bypass:'], ['Missing piece', 'missing:'], ['Required key', 'missing:'],
        ['Second key', 'missing:'], ['Go', 'overflow:'], ['shield', 'glossary:'],
        ['Format %d', 'placeholder:'], ['Brace {0}', 'placeholder:'], ['Tint #abcdef', 'placeholder:'],
        ['Stale fixture key', 'stale:'], ['Take %1$d {0} #abcdef', 'placeholder:'], ['XY', 'duplicate:']
    ]) assert.ok(has(key, problem), [key, problem].join(' '));
    for (const key of ['Comment only', 'Private slot', 'Manual A', 'Manual B'])
        assert.ok(!rows.some(row => row.startsWith(key + ',')), key);
    for (const key of ['Same %2$s %1$d', '10% damage']) assert.ok(!has(key, 'placeholder:'), key);
    put(source, '\n\n' + java);
    const drift = run('--ci', '--baseline', baseline);
    assert.equal(drift.status, 0, drift.stderr);
    put(source, java.replace('ui.setTitle', 'ModLang.tr("New gap"); ui.setTitle'));
    const regression = run('--ci', '--baseline', baseline);
    assert.equal(regression.status, 1, regression.stderr);
    assert.match(regression.stderr, /New gap,New gap,/);
    console.log('TEXT LINTER OK (seven checks, constant expressions, line drift and new-gap exit)');
} finally {
    rmSync(root, { recursive: true, force: true });
}
