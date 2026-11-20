"""Enemy snapshots use EnemyCalc output as the requested ground truth.

DPS in the input already contains elite, class, tech-average, pilot and 3x
capital factors. Do not multiply those again. No interpolation of missing levels.
"""
from dataclasses import dataclass, replace
from functools import lru_cache
import re
from . import data
from .player import jround


# ModV34.statBase / pilot

def stat_base(level):
    return 0 if level < 10 else jround(800*min(30,level-10)/30)


def pilot(atk, defense):
    return (1+max(0,atk-.75*defense)/1000)*(1-max(0,min(.3,(defense-atk-250)/1000*.4)))


# ModCounterData.WHEEL / WEAPONS, loaded from literals rather than duplicated.

@lru_cache(None)
def counters():
    s = data.java('ModCounterData')
    wheel = set(re.findall(r'\{"([a-z]+)",\s*"([a-z]+)"\}',s))
    weapons = {k:(int(a),int(b)) for k,a,b in re.findall(r'\{"([a-z]+)",\s*"(\d+)",\s*"(\d+)"\}',s)}
    return wheel,weapons


# ModV34.counter

def counter(atk, defense, fam=-1):
    wheel,weapons = counters()
    m = 1.3 if (atk,defense) in wheel else .8 if (defense,atk) in wheel else 1
    if defense in weapons and fam >= 0:
        resist,weak = weapons[defense]
        m *= .8 if fam==resist else 1.2 if fam==weak else 1
    return max(.5,min(2,m))


# ModV35.ttkFactor (normal enemies only).

def normal_factor(atk, defense):
    w,_ = counters()
    return 2.5 if (atk,defense) in w else .5 if (defense,atk) in w else 1


@dataclass(frozen=True)
class Enemy:
    name: str
    level: int
    dps: float
    max_hull: float
    max_shield: float
    shield_regen: float
    overshield: float = 0
    drone_dps: float = 0
    missile_dps: float = 0
    faction: str = ''
    cls: int = 1
    elite: bool = False
    police: bool = False
    flagship: bool = False
    titan: bool = False
    boss: bool = False
    stock_shield: bool = False

    @property
    def pilot_stat(self):
        # ModV34.stat: Guardian capitals carry same statBase; stock elites +150.
        return min(1000,stat_base(self.level)+(150 if self.elite else 0)+(300 if self.boss else 0))

    @property
    def baseline_pilot(self):
        # EnemyCalc capital rows use player L-2, ordinary rows same-level.
        defense = stat_base(max(0,self.level-2)) if self.flagship else stat_base(self.level)
        return pilot(self.pilot_stat,defense)


@lru_cache(None)
def from_row(row):
    name = row.name
    police = name.startswith('Police ') or name=='Patrol cruiser'
    flagship = name.startswith(('Flagship ','Police titan '))
    titan = name.startswith('Police titan ')
    elite = '(elite)' in name or (police and not flagship and name!='Patrol cruiser')
    fac = ''
    if flagship:
        for k,display,ship in re.findall(r'new Faction\("([a-z]+)", "([^"]+)", "([^"]+)"',data.java('ModCapitals')):
            if ship in name: fac=k
    elif name.startswith('Reaver'): fac='reaver'
    elif name.startswith("Kre'tari"): fac='kretari'
    classes = {'Basic pirate':0,'Taupe':0,'Defensor':1,'Alien Rat':1,'UFO':2,'Frelon':3,'Albatros':4,'Alien Blatte':5,
        'Police Frigate':0,'Police Destroyer':1,'Police Cruiser':2,'Police Battlecruiser':3,'Police Battleship':4,'Police Capital':5,
        'Patrol cruiser':2,'Reaver Raider':0,'Reaver Gunship':0,'Reaver Hunter':1,'Reaver Marauder':2,'Reaver Corsair':2,
        'Reaver Lancer':2,'Reaver Warlord':3,'Reaver Dreadnought':4,"Kre'tari Scout":0,"Kre'tari Bomber":0,
        "Kre'tari Frigate":1,"Kre'tari Destroyer":2,"Kre'tari Cruiser":2,"Kre'tari Heavy Cruiser":3,
        "Kre'tari Battlecruiser":3,"Kre'tari Battleship":4,"Kre'tari Mothership":5}
    cls = 6 if flagship else next((v for k,v in sorted(classes.items(), key=lambda kv:-len(kv[0])) if name.startswith(k)),1)
    is_frelon = name.startswith(('Frelon','Reaver Hunter','Reaver Corsair',"Kre'tari Cruiser","Kre'tari Heavy Cruiser",'Police Cruiser','Police Battlecruiser'))
    # ModV34.shieldStats: cap and rate get the same multiplier. In ordinary
    # rows rate is not exported: use last decent row's ratio (ASSUMPTIONS E2).
    last = data.stock()['gear']['decentShieldLevel9']
    rate = row.regen if row.regen is not None else row.shield*last['reloadBySec']/last['capacity']
    md = data.missile_dps().get(name.removeprefix('Police '),{}).get(row.level,0) if police else 0
    return Enemy(name,row.level,row.dps,row.hull,row.shield,rate,row.overshield,row.drones,md,fac,cls,elite,police,
        flagship,titan,False,is_frelon)


def all_enemies(level):
    result = tuple(from_row(r) for r in data.enemy_rows() if r.level==level)
    if not result: raise ValueError('Enemy truth tables only provide levels 10, 20, 30 and 40')
    return result


def get(name,level=40):
    # No independent alien-titan stat block exists in inputs: the Kre'tari
    # flagship (Brood-Mother) is the documented alien-capital alias.
    aliases = {'alien titan':'Flagship Brood-Mother (6 mounts)', 'titan':'Police titan SRS Aegis (8 mounts)',
               'flagship':'Flagship SRS Aegis (8 mounts)', 'normal':'Basic pirate (frigate)',
               'elite':'Basic pirate (frigate) (elite)', 'police':'Police Cruiser'}
    query = aliases.get(name.casefold(),name).casefold()
    rows = all_enemies(level)
    exact = [e for e in rows if e.name.casefold()==query]
    if exact: return exact[0]
    found = [e for e in rows if query in e.name.casefold()]
    if len(found)==1: return found[0]
    raise ValueError(('Ambiguous' if found else 'Unknown')+' enemy: '+name+'; use `enemies --level '+str(level)+'`')


# ModPolice.unlockedClass, titanAllowed, next-wave kill countdown. These are
# escalation helpers; fight.duel remains a one-enemy fight, not a wave battle.

def unlocked_class(heat):
    return sum(heat>=x for x in (1,5,10,16,24,34,46))-1


def titan_allowed(sector_top,heat,last_top,titan_up):
    return sector_top>=16 and heat>0 and last_top==5 and not titan_up


def wave_delay(cls,kills):
    return max(8,(30,35,40,45,50,60)[cls]*(1-.3*kills))


# ModPolice.nextTop / waveClasses: current escalation is by completed wave,
# NOT by the older UNLOCK heat thresholds (which unlocked_class exposes).

def next_top(heat,last_top,sector_top,titan_up=False):
    if heat<=0: return -1
    cls=min(6,max(0,last_top+1))
    return 5 if cls>=6 and not titan_allowed(sector_top,heat,last_top,titan_up) else cls


def wave_classes(top,escorts=1):
    if top<0: return ()
    if top>=6: return (6,)
    if top==5: return (5,4,4)
    if top==0: return (0,0)
    return (top,top)+(top-1,)*max(1,min(2,escorts))
