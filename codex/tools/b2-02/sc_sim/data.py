"""Read the supplied tables and the small amount of hull metadata they omit.

Nothing in source documents is executed. The Java parser accepts only literal
Hull declarations / assignments; it is deliberately specific to this snapshot.
"""
from dataclasses import dataclass
from functools import lru_cache
import json
from pathlib import Path
import re

CLASSES = ('frigate', 'destroyer', 'cruiser', 'battlecruiser', 'battleship', 'capital', 'titan', 'industrial')
FACTIONS = {'Spartan Republic':'spartan', 'Crimson Reavers':'reaver', "Kre'tari Brood":'kretari', 'Varn Syndicate':'varn', 'Ironclad Militia':'ironclad', 'Helion Combine':'helion', 'Frontier Authority':'warden'}


def paths():
    here = Path(__file__).resolve()
    return here.parents[1] / 'data', here.parents[4] / 'src/java/fr/testudo/spacecorsair/mod'



def java(name):
    return paths()[1].joinpath(name + '.java').read_text(encoding='utf-8')


@dataclass(frozen=True)
class Hull:
    name: str
    id: str
    art: str
    cls: int
    tech: int
    size: int
    dmg: float
    reload: float
    shield_cap: float
    missile_reload: float
    hull_regen: float
    doomsday: bool
    carrier: bool
    gun_type: str
    cannons: int
    life: float
    missiles: int
    faction: str
    shield_regen: float = 1
    shield_delay: float = 1
    cargo: float = 1
    dev: bool = False


@lru_cache(None)
def stock():
    return json.loads((paths()[0] / 'stock_tables.json').read_text())


@lru_cache(None)
def hulls():
    source = java('ModShips')
    # id/name/art are literal strings in each constructor; descriptions ignored.
    starts = list(re.finditer(r'new Hull\("([^"\n]+)",\s*"([^"\n]+)"', source))
    definitions = {}
    for i, m in enumerate(starts):
        block = source[m.start():starts[i+1].start() if i+1 < len(starts) else source.index('applyHardpoints();')]
        strings = re.findall(r'"([^"\n]*)"', block.split('h.spec =')[0])
        art = re.search(r',\s*"([a-z0-9_]+)",\s*\d+,', block).group(1)
        faction = 'helion' if source[max(0, m.start()-8):m.start()].endswith('hel(') else ''
        if source[max(0, m.start()-8):m.start()].endswith('iron('): faction = 'ironclad'
        if source[max(0, m.start()-8):m.start()].endswith('varn('): faction = 'varn'
        explicit = re.search(r'h.faction\s*=\s*"([^"]+)"', block)
        if explicit: faction = FACTIONS.get(explicit.group(1), '')
        vals = {k:float(v) for k,v in re.findall(r'h\.(shieldRegen|shieldDelay|cargo)\s*=\s*([\d.]+)f', block)}
        definitions[m.group(2)] = (m.group(1), art, faction, vals)
    # Assignment and rebalance arrays override builder defaults.
    overrides = dict(re.findall(r'\{"([^"\n]+)",\s*"(' + '|'.join(re.escape(x) for x in FACTIONS) + r')"\}', source))
    result = []
    for line in (paths()[0] / 'hulls.tsv').read_text().splitlines():
        cols = line.replace('\\t', '\t').split('\t')
        name = cols[0]
        ident, art, faction, vals = definitions[name]
        faction = FACTIONS.get(overrides.get(ident, overrides.get(art, '')), faction)
        extra = dict(x.split('=',1) for x in cols[13:])
        cls = int(cols[1])
        # ModShips.applyHardpoints: cargoClass applies before ModV35.scores.
        cargo = vals.get('cargo',1) * (1,1.2,1.5,1.8,2.2,2.6,3,1)[cls]
        result.append(Hull(name, ident, art, cls, int(cols[2]), int(cols[3]),
            *map(float, cols[4:9]), cols[9]=='true', cols[10]=='true', cols[11],
            int(cols[12]), float(extra['life']), int(extra['mis']), faction,
            vals.get('shieldRegen',1), vals.get('shieldDelay',1), cargo, ident=='hullDev'))
    if len(result) != len(definitions): raise ValueError('Hull declaration/table coverage mismatch')
    original = source.split('String[][] ORIGINAL = {')[1].split('};')[0]
    for ident, cls, tech in re.findall(r'\{"(\w+)", "(\d+)", "(\d+)"', original):
        spec = stock()['gear'][ident]
        result.append(Hull(ident, ident, ident, int(cls), int(tech), spec['drawableSize'],
                           1, 1, 1, 1, 0, False, False, spec['laserType'],
                           spec['canonCount'], spec['lifeBooster'], spec['missileCount'], ''))
    return tuple(result)


def hull(name):
    for h in hulls():
        if name.casefold() in (h.name.casefold(), h.id.casefold()): return h
    raise ValueError('Unknown hull: ' + name)


def number(s):
    m = re.fullmatch(r'([\d,.]+)(k)?', s.strip())
    if not m: raise ValueError('Invalid table number: ' + s)
    return float(m.group(1).replace(',', '')) * (1000 if m.group(2) else 1)


@dataclass(frozen=True)
class EnemyRow:
    name: str
    level: int
    dps: float
    hull: float
    shield: float
    drones: float = 0
    overshield: float = 0
    regen: float | None = None


def parse_enemy(text):
    rows = []
    for line in text.splitlines():
        parts = [p.strip() for p in line.split('|')]
        if len(parts) != 7 or not re.match(r'^(?:[\d,.]|-$)', parts[2]): continue
        for level, cell in zip((10,20,30,40), parts[2:6]):
            if cell == '-': continue
            d, h, s = [x.strip() for x in cell.split('/')[:3]]
            # Regen contains /s, hence split('/') above, parse separately.
            regen = re.search(r'\(regen ([\d,k.]+)/s\)',cell)
            drone = re.search(r'\+([\d,k.]+)d',d)
            over = re.search(r'\+([\d,k.]+)os',h)
            rows.append(EnemyRow(parts[1],level,number(d.split('+')[0]),number(h.split('+')[0]),
                number(s.split('(')[0]), number(drone.group(1)) if drone else 0,
                number(over.group(1)) if over else 0, number(regen.group(1)) if regen else None))
    if not rows: raise ValueError('No enemy rows')
    return tuple(rows)


@lru_cache(None)
def enemy_rows():
    return parse_enemy((paths()[0] / 'enemy-calc-out.txt').read_text())


def missile_dps():
    text = (paths()[0] / 'enemy-calc-out.txt').read_text().split('POLICE missile DPS')[1].split('STOCK PATROL')[0]
    return {name: {int(l):number(v) for l,v in re.findall(r'L(\d+) ([\d,k.]+)', rest)}
        for name,rest in re.findall(r'^  (\w+):(.*)$',text,re.M)}
